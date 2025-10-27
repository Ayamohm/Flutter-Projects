import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';




class Usersscreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Aya Mohamed', phone: '+20123456789'),
    UserModel(id: 2, name: 'Amr Mohamed', phone: '+20123456745'),
    UserModel(id: 3, name: 'Lina Ahmed', phone: '+20100000001'),
    UserModel(id: 4, name: 'Omar Khaled', phone: '+20100000002'),
    UserModel(id: 5, name: 'Sara Hany', phone: '+20100000003'),
    UserModel(id: 6, name: 'Mona Ali', phone: '+20100000004'),
    UserModel(id: 7, name: 'Ahmed Mostafa', phone: '+20100000005'),
    UserModel(id: 8, name: 'Hana Tarek', phone: '+20100000006'),
    UserModel(id: 9, name: 'Rana Adel', phone: '+20100000007'),
    UserModel(id: 10, name: 'Kareem Hossam', phone: '+20100000008'),
    UserModel(id: 11, name: 'Nada Fathy', phone: '+20100000009'),
    UserModel(id: 12, name: 'Youssef Emad', phone: '+20100000010'),
    UserModel(id: 13, name: 'Mai Samir', phone: '+20100000011'),
    UserModel(id: 14, name: 'Nour Elsayed', phone: '+20100000012'),
    UserModel(id: 15, name: 'Mohamed Ali', phone: '+20100000013'),
    UserModel(id: 16, name: 'Layla Ehab', phone: '+20100000014'),
    UserModel(id: 17, name: 'Hossam Ibrahim', phone: '+20100000015'),
    UserModel(id: 18, name: 'Esraa Mahmoud', phone: '+20100000016'),
    UserModel(id: 19, name: 'Ziad Mostafa', phone: '+20100000017'),
    UserModel(id: 20, name: 'Dina Adel', phone: '+20100000018'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          itemBuilder: (context,index) =>buildusersitems(users[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length
      )
    );
  }
    Widget buildusersitems(UserModel user)=> Padding(
            padding: const EdgeInsets.all(15),
          child: Row(
                children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: Text('${user.id}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Text('${user.name}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('${user.phone}')
            ]
          )
                ],
              ),
        );
}
