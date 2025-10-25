import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.blueGrey,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onmenu,
        ),
        title: const Text(
          'First App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.notification_important),
            onPressed: () {
              print('notifications');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              print('profile');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                //image
                Padding(
                  padding: const EdgeInsets.all(5),
                 child:Container(
                    height: 200,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(25),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(
                          image: NetworkImage('https://better1.co/wp-content/uploads/2016/11/b4af6236ae9051e42126aa98e2cdc9f4.jpg'),
                          width: 300,
                          height: 200,
                          fit: BoxFit.fill,),
                        Container(
                          width: 300,
                          color:Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(5),
                          child:
                          Text('natural',
                            textAlign: TextAlign.center,
                            style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //  المجموعة الأولى (body على اليمين)
                Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end, // body على اليمين
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // النص اللي فوق
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),//body body
                      // الـ Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('one',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.amber,
                            child: Text('two',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.blue,
                            child: Text('three',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                        ],
                      ),
                      // النص اللي تحت
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  المجموعة الثانية (body في النص)
                Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center, // body على الشمال
                    children: [
                      // النص اللي فوق
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      // الـ Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('one',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.amber,
                            child: Text('two',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.blue,
                            child: Text('three',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                        ],
                      ),
                      // النص اللي تحت
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //المجموعه الثالثه على الشمال
                Container(
                  height: 300,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Text('one',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                            Container(
                              color: Colors.amber,
                              child: Text('two',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                            Container(
                              color: Colors.blue,
                              child: Text('three',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  المجموعة الأولى (body على اليمين)
                Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end, // body على اليمين
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // النص اللي فوق
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),//body body
                      // الـ Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('one',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.amber,
                            child: Text('two',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.blue,
                            child: Text('three',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                        ],
                      ),
                      // النص اللي تحت
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  المجموعة الثانية (body في النص)
                Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center, // body على الشمال
                    children: [
                      // النص اللي فوق
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      // الـ Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('one',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.amber,
                            child: Text('two',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                          Container(
                            color: Colors.blue,
                            child: Text('three',
                                style: TextStyle(color: Colors.white, fontSize: 35)),
                          ),
                        ],
                      ),
                      // النص اللي تحت
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //المجموعه الثالثه على الشمال
                Container(
                  height: 300,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'body body',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Text('one',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                            Container(
                              color: Colors.amber,
                              child: Text('two',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                            Container(
                              color: Colors.blue,
                              child: Text('three',
                                  style: TextStyle(color: Colors.white, fontSize: 35)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'data',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

        ),
      ),
    );
  }

  void onmenu() {
    print('menu');
  }
}
