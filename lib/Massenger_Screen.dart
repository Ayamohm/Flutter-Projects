import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final int id;
  final String name;
  final String lastMessage;
  final String time;
  final String imageUrl;
  final Color status;
  final bool isRead;

  ChatModel({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.imageUrl,
    required this.status,
    required this.isRead,
  });
}


class MessengerScreen extends StatelessWidget {
  List<ChatModel> chats = [
    ChatModel(
      id: 1,
      name: 'Ola Mohamed',
      lastMessage: 'Hey Aya! Did you finish the Flutter project you were working on yesterday?',
      time: '09:00 AM',
      imageUrl: 'https://randomuser.me/api/portraits/women/19.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 2,
      name: 'Amr Khaled',
      lastMessage: 'Let’s meet at the office around 3 PM.',
      time: '09:45 AM',
      imageUrl: 'https://randomuser.me/api/portraits/men/19.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 3,
      name: 'Sara Ahmed',
      lastMessage: 'That’s amazing! I’m really happy for you 🎉',
      time: '10:15 AM',
      imageUrl: 'https://randomuser.me/api/portraits/women/3.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 4,
      name: 'Mohamed Ali',
      lastMessage: 'Can you send me the report before noon?',
      time: '11:30 AM',
      imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 5,
      name: 'Laila Hassan',
      lastMessage: 'Sure! I’ll check and get back to you soon.',
      time: '12:10 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/5.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 6,
      name: 'Heba Youssef',
      lastMessage: 'That sounds good, let’s go for it!',
      time: '12:45 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/6.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 7,
      name: 'Khaled Mahmoud',
      lastMessage: 'I’m not sure if it’s the right time to do that.',
      time: '01:15 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/7.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 8,
      name: 'Nour El-Din',
      lastMessage: 'Let me know when you’re free.',
      time: '02:00 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/8.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 9,
      name: 'Omar Tarek',
      lastMessage: 'I just emailed you the design.',
      time: '03:10 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/9.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 10,
      name: 'Reem Mohamed',
      lastMessage: 'Hahaha that’s so funny 😂',
      time: '04:00 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/10.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 11,
      name: 'Salma Fathy',
      lastMessage: 'Don’t forget the meeting tomorrow morning!',
      time: '04:30 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/11.jpg',
      status: Colors.green,
      isRead: false,
    ),
    ChatModel(
      id: 12,
      name: 'Youssef Ibrahim',
      lastMessage: 'Okay, I’ll send you the link now.',
      time: '05:00 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/12.jpg',
      status: Colors.grey,
      isRead: true,
    ),
    ChatModel(
      id: 13,
      name: 'Mona Adel',
      lastMessage: 'The event was really nice yesterday!',
      time: '05:45 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/13.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 14,
      name: 'Ahmed Saeed',
      lastMessage: 'Can we postpone our call?',
      time: '06:10 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/14.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 15,
      name: 'Marwa Hany',
      lastMessage: 'It’s already done, check your inbox.',
      time: '06:40 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/15.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 16,
      name: 'Hassan Gamal',
      lastMessage: 'Don’t worry, I’ll handle it.',
      time: '07:05 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/16.jpg',
      status: Colors.grey,
      isRead: true,
    ),
    ChatModel(
      id: 17,
      name: 'Rania Lotfy',
      lastMessage: 'We should plan a weekend trip soon!',
      time: '07:30 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/17.jpg',
      status: Colors.green,
      isRead: false,
    ),
    ChatModel(
      id: 18,
      name: 'Mostafa Adel',
      lastMessage: 'I’ll confirm once I reach home.',
      time: '08:00 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/18.jpg',
      status: Colors.grey,
      isRead: false,
    ),
    ChatModel(
      id: 19,
      name: 'Nadia Samir',
      lastMessage: 'I loved your presentation today! Great job 👏',
      time: '08:20 PM',
      imageUrl: 'https://randomuser.me/api/portraits/women/19.jpg',
      status: Colors.green,
      isRead: true,
    ),
    ChatModel(
      id: 20,
      name: 'Tamer Magdy',
      lastMessage: 'Can you share the updated files?',
      time: '08:45 PM',
      imageUrl: 'https://randomuser.me/api/portraits/men/20.jpg',
      status: Colors.grey,
      isRead: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////// App Barr ////////////////////////////
      appBar: AppBar(
        titleSpacing: 20,
        title: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/joelvalve-57257-unsplash.jpg'),
            radius: 20,
          ),
          SizedBox(width: 10),
          Text(
            'Chats',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                )),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      ///////////////////////////// Body ////////////////////////////
      body:SingleChildScrollView(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////////////////////// search /////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 10,
                     right: 10
                  ),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                          SizedBox(width: 10),
                          Text('Search',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),),
                      ]
                    ),
                  ),
                ),
                //////////////// stories ///////////////
                Container(
                  height: 130,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                      itemBuilder: (context,index)=>bildstoriesItem(),
                      separatorBuilder: (context,index)=>SizedBox(width: 20),
                      itemCount: 8,
                  ),
                ),
                SizedBox(height: 10,),
                ////////////////chats/////////////////
                ListView.separated(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                      shrinkWrap: true,
                      itemBuilder: (context,index)=>bildChatItem(chats[index]),
                      separatorBuilder: (context,index)=>SizedBox(height: 20),
                      itemCount: 15,
                      physics: NeverScrollableScrollPhysics(),
                  ),

              ],
            ),
      ),

    );
  }
  //1.build item
  //2.build list
  //3.add item to list
  Widget bildstoriesItem()=>Container(
    width: 60,
    child: Column(
        children: [
          SizedBox(height: 20),
          Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children:[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://tse2.mm.bing.net/th/id/OIP.vnz9yRiL_K_hkeGEEIiBCgAAAA?cb=12&pid=ImgDet&w=467&h=700&rs=1&o=7&rm=3'),
                  radius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3,
                    right: 3,
                  ),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3,
                    right: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ]
          ),
          SizedBox(height: 5),
          Text('Aya Mohamed Othman',style: TextStyle(
            fontSize: 15,
          ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,),
        ]
    ),
  );
 Widget bildChatItem(ChatModel chat)=> Row(
     children: [
       Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children:[
             CircleAvatar(
               backgroundImage: NetworkImage('${chat.imageUrl}'),
               radius: 30,
             ),
             Padding(
               padding: const EdgeInsets.only(
                 bottom: 3,
                 right: 3,
               ),
               child: CircleAvatar(
                 radius: 8,
                 backgroundColor: Colors.white,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(
                 bottom: 3,
                 right: 3,
               ),
               child: CircleAvatar(
                 radius: 7,
                 backgroundColor: chat.status,
               ),
             ),
           ]
       ),
       SizedBox(width: 20),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('${chat.name}',style: TextStyle(
               fontSize: 15,),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
             Row(
                 children: [
                   Expanded(
                     child: Text('${chat.lastMessage}',style: TextStyle(
                       fontSize: 10,
                     ),
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ),
                   SizedBox(width: 5),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Container(
                       width: 7,
                       height: 7,
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         shape: BoxShape.circle,
                       ),
                     ),
                   ),
                   SizedBox(width: 5),
                   Text('${chat.time}',style: TextStyle(
                     fontSize: 10,
                   ),),
                 ]
             )
           ],
         ),
       )
     ]
 );
}
