import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/groups.dart';
import 'package:whatsapp/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
      ),
      home: updatePage(),
    );
  }
}

class updatePage extends StatefulWidget {
  const updatePage({super.key});
  @override
  State<updatePage> createState() => _updatePageState();
}

class _updatePageState extends State<updatePage> {
  @override
  Widget build(BuildContext context) {

    var team=['Real Madrid C.F.','HUM TV','FC Barcelona','UEFA Champions Lea...','WhatsApp'];
    var follower=['35.5 M','3.8 M','35.5 M','12.8 M','172 M',];
    var lists=[
      'assets/images/madrid.png',
      'assets/images/humtv.jpeg',
          'assets/images/fcbarcelona.png',
      'assets/images/cl.png',
      'assets/images/whatsapp.jpeg'
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        title: Row(
          children: [
          Text('Updates',style: TextStyle(color: Colors.white, fontSize: 27),),
             Spacer(),
             Icon(Icons.camera_alt_outlined, color: Colors.white, ),
            SizedBox(width: 10,),
             Icon(Icons.search, color:Colors.white),SizedBox(width: 10,),
             Icon(Icons.more_vert, color: Colors.white,),
              ],
               ),
               backgroundColor: Colors.black,
                ),
        body: Container(
        margin: EdgeInsets.only(top: 5,bottom: 5),
          color: Colors.black,
         child: SingleChildScrollView(
               child:Column(
             children: [
               Container(
                 height: 40,
                 alignment: Alignment.centerLeft,
                 child: Padding(
                   padding: EdgeInsets.only(left: 20.0), // Adjust the left padding as needed
                   child: Text(
                     'Status',
                     style: TextStyle(fontSize: 24, color: Colors.white),
                   ),
                 ),
               ),
            SizedBox(height: 5,),

           Container(
             height: 100,
             child: Padding(
               padding: const EdgeInsets.only(left:8.0),
               child: Row(
                 children: [
                   CircleAvatar(
                     backgroundColor: Colors.white,
                     backgroundImage: AssetImage('assets/images/flutter5786.jpg',),
                     radius: 25,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                       Text('My Status',style: TextStyle(fontSize: 20, color: Colors.white),textAlign: TextAlign.left),
                       Text('Tap to add status update' ,style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.left),
               ],
                   )
                 ],
               ),
             ),
             ),
              Container(
                alignment: Alignment.centerLeft,
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Row(
                    children: [
                      Text('Viewed update' ,style: TextStyle(fontSize: 15, color: Colors.white),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down, color: Colors.white,),
                     ],
                   ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left:16.0),
                 child: Container(
                   alignment: Alignment.centerLeft,
                   height: 30,
                  child: Row(
                    children: [
                      Text('Muted Update' ,style: TextStyle(fontSize: 15, color: Colors.white),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down, color: Colors.white,),
                    ],
                  ),
                               ),
               ),
            SizedBox(height: 20,),

        Container(
        height: 100,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Channels',style: TextStyle(fontSize: 24, color: Colors.white),textAlign: TextAlign.left,),
              Text('Stay updated on topics that matter to you. Find'
                  'chanels to follow below.',style: TextStyle(fontSize: 15, color: Colors.white70),),
            ],
          ),
        ),
      ),

      Container(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  Text('Find Channels to follow.',style: TextStyle(fontSize: 15, color: Colors.white70),),
           ],
          ),
        ),
      ),

      Container(
        height: 200,
        color: Colors.black,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final teams = team[index];
            final followers= follower[index];
            final list=lists[index];
            return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(list),
                ),
                title: Text(teams, style: TextStyle(color: Colors.white,fontSize: 20),),
                subtitle: Text(followers, style: TextStyle(fontSize: 13, color: Colors.white70),),
                trailing: Text('Follow', style: TextStyle(fontSize: 15, color: Colors.green), ) // Trailing icon for more options
            );
          },
          itemCount: team.length,
          separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
        ),
      ),

     Container(
         height: 100,
         child:Padding(
           padding: const EdgeInsets.only(left:8.0),
           child: Row(
             children: [
               ElevatedButton(onPressed: (){},
                   child: Text('Explore more',style: TextStyle(fontSize: 15, color: Colors.green),),
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.transparent,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20.0),
                     side: BorderSide(color: Colors.white54)
                     // Add rounded corners
                   ),
                 ),
               )

             ],
           ),
         )
     ),
               Container(
                 height: 50,
                 color: Colors.black,
                 child: Row(
                   children: [
                     Column(
                         children:[
                           InkWell(
                               onTap: (){
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder:(context)=> MyHomePage() ));
                               },
                               child: Icon(Icons.chat_sharp, color: Colors.white,)
                           ),
                           SizedBox(width: 70,),
                           Text('Chats', style: TextStyle(fontSize: 10, color: Colors.white),),
                         ]),
                     Spacer(),
                     Column(
                         children: [
                           InkWell(
                               onTap: (){
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder:(context)=> updatePage() ));
                               },
                               child: Icon(Icons.update_outlined, color: Colors.white,)
                           ),
                           SizedBox(width: 40,),
                           Text('Updates', style: TextStyle(fontSize: 10, color: Colors.white),),
                         ]),
                     Spacer(),
                     Column(
                         children: [
                           InkWell(
                               onTap: (){
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder:(context)=> groupPage() ));
                               },
                               child: Icon(Icons.people_alt_sharp,color: Colors.white,)
                           ),
                           SizedBox(width: 40,),
                           Text('Groups', style: TextStyle(fontSize: 10, color: Colors.white),),
                         ]),
                     Spacer(),
                     Column(
                         children: [
                           InkWell(
                               onTap: (){
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder:(context)=> callsPage() ));
                               },
                               child: Icon(Icons.call,color: Colors.white,)
                           ),
                           SizedBox(width: 70,),
                           Text('Calls', style: TextStyle(fontSize: 10, color: Colors.white),),
                         ]),
                   ],
                 ),

               ),
      // Add your new container below the text field
    ],
    ),
    ),
        ),
    );
  }
}

