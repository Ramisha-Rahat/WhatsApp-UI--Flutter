import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/groups.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/update.dart';

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
      home: callsPage(), // Set MyHomePage as the initial screen
    );
  }
}

class callsPage extends StatefulWidget {
  const callsPage({super.key});
  @override
  State<callsPage> createState() => _callsPageState();
}

class _callsPageState extends State<callsPage> {
  @override
  Widget build(BuildContext context) {
    var lists=[
      'assets/images/flutter5786.jpg',
      'assets/images/group.jpeg',
      'assets/images/cl.png',
      'assets/images/fcbarcelona.png',
      'assets/images/group.jpeg',
      'assets/images/flutter5786.jpg',
      'assets/images/fcbarcelona.png',
      'assets/images/group.jpeg',
      'assets/images/cl.png',

    ];
    var names=['Flutter','Mama','Abc','Flutter','Mama','Abc','Flutter','Mama','Abc'];
    var info=['Yesterday, 11:42pm', 'yesterday, 12:am','Yesterday, 11:42pm','Yesterday, 11:42pm', 'yesterday, 12:am','Yesterday, 11:42pm', 'yesterday, 12:am','July 20, 12:13am','July 20, 12:13am'];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Text('Calls',style: TextStyle(color: Colors.white, fontSize: 27),),
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
        color: Colors.black,
        child: SingleChildScrollView(
          child:Column(
            children: [


              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0),
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
                          Text('Create a call link',style: TextStyle(fontSize: 20, color: Colors.white),textAlign: TextAlign.left),
                          Text('    Share a link for your WhatsApp call' ,style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.left),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 5,),

              Container(

                height: 600,

                 child: ListView.separated(
                  itemBuilder: (context, index) {
                    final name = names[index];
                    final information= info[index];
                    final list = lists[index];
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(list),
                          // backgroundImage: Image.asset('assets/image'),
                        ),
                        title: Text(name, style: TextStyle(color: Colors.white,fontSize: 20),),
                    subtitle: Row(
                    children: [
                      Icon(Icons.call_received_outlined, size: 16, color: Colors.green,), // Adjust size and color as needed
                    SizedBox(width: 5), // Optional spacing between icon and text
                   Text(information, style: TextStyle(fontSize: 13, color: Colors.white70),),
                        ],),

                        // subtitle: Text(information, style: TextStyle(fontSize: 13, color: Colors.white70),),
                        trailing: Icon(Icons.call, color: Colors.white,), // Trailing icon for more options
                    );
                  },
                  itemCount: names.length,
                  separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
                ),

              ),






              Container(
                height: 70,
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

