import 'package:app_test/modules/massenger/Massenger_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var email =TextEditingController();
  var pass =TextEditingController();
  var keyForm =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: keyForm,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text('Login',style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0
                  ),),
              
                  SizedBox(height: 20.0),
              
                  TextFormField(
                    controller: email,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'email must not be empty';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      prefixIcon: Icon(Icons.email),
                    )
                  ),
              
                  SizedBox(height: 20.0),
              
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (){
                          print('show password');
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      ),
                    ),
              
                  SizedBox(height: 20),
              
                  defultButton(
                    width: double.infinity,
                    color: Colors.blue,
                    radius: 12,
                    function: (){
                      if(keyForm.currentState!.validate()){
                        print(email.text);
                        print(pass.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MessengerScreen()));

                      }
                    },
                    text: 'Login',
                  ),
              
                  SizedBox(height: 10),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ?'),
                      TextButton(onPressed: (){
                        print('register now');
                      },
                          child: Text('Register Now',style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                          ),))
              
                    ]
                  )
                ]
              ),
            ),
          ),
        ),
      )
    );
  }
}
