import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////// App Barr ////////////////////////////
      appBar: AppBar(
        titleSpacing: 20,
        title: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/joelvalve-572557-unsplash.jpg'),
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
                      itemBuilder: (context,index)=>bildChatItem(),
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
 Widget bildChatItem()=> Row(
     children: [
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
       SizedBox(width: 20),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Lina Mohamed Ali',style: TextStyle(
               fontSize: 15,),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
             Row(
                 children: [
                   Expanded(
                     child: Text('Hello my name is Lina Mohamed , How are you ? ',style: TextStyle(
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
                   Text('02:00 pm',style: TextStyle(
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
