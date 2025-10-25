import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var email =TextEditingController();
  var pass =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
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
                    decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Icon(Icons.email),
                  )
                ),
            
                SizedBox(height: 20.0),
            
                TextFormField(
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
            
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    color: Colors.blue,
                    height: 40,
                    onPressed: () {
                      print(email);
                      print(pass);
                      },
                    child: Text('LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontSize: 20.0
                    ),),
                  ),
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
      )
    );
  }
}
