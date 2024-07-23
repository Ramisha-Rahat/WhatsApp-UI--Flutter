import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/calls.dart';
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
      home: groupPage(), // Set MyHomePage as the initial screen
    );
  }
}

class groupPage extends StatefulWidget {
  const groupPage({super.key});
  @override
  State<groupPage> createState() => _groupPageState();
}

class _groupPageState extends State<groupPage> {
  @override
  Widget build(BuildContext context) {
    var group = ['Announcemnts', 'AI & DS C-1'];
    var info = ['Arham: We have to see', '~+92 34 1111111: hello?',];
    var time = ['7/20/24', 'yesterday'];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Text('Communities', style: TextStyle(color: Colors.white),),
            Spacer(),
            Icon(Icons.camera_alt_outlined, color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert, color: Colors.white,),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        color: Colors.black,
        child: Column(
          children: [
            // Scrollable content area
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [


                    Container(
                      height: 100.0, // Adjust height as needed
                      color: Colors.black, // Example content
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            // No rounding for rectangle
                            child: Image.asset(
                              'assets/images/group.jpeg',
                             width: 50,
                             height: 50,
                             // Set desired height
                            ),
                          ),

                          SizedBox(width: 20,),
                           Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                Text('New Community', style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                      textAlign: TextAlign.left),
                                         ],
                           )
                                   ],
                               ),
                      ),
                      ),
                    Divider(thickness: 4, color: Colors.white60,),

                    Container(

                        height: 160,
                        color: Colors.black,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            final groups = group[index];
                            final followers= info[index];
                            final times= time[index];
                            return ListTile(
                                leading:ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Icon(Icons.group, color:Colors.white, size: 50.0,),
                                ),
                                title: Text(groups, style: TextStyle(color: Colors.white,fontSize: 20),),
                                subtitle: Text(followers, style: TextStyle(fontSize: 16, color: Colors.white70),),
                                trailing: Text('times', style: TextStyle(fontSize: 12, color: Colors.white70), ) // Trailing icon for more options
                            );
                          },
                          itemCount: group.length,
                          separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
                        ),

                    ),

                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_right, color: Colors.white70, size: 50,),
                          Text('View All', style: TextStyle(fontSize: 20, color: Colors.white70),),
                        ],
                      ),
                    ),

                    Divider(thickness: 1, color: Colors.white70,),

                    Container(
                      height: 160,
                      color: Colors.black,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          final groups = group[index];
                          final followers= info[index];
                          final times= time[index];
                          return ListTile(
                              leading:ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Icon(Icons.group, color:Colors.white, size: 50.0,),
                              ),
                              title: Text(groups, style: TextStyle(color: Colors.white,fontSize: 20),),
                              subtitle: Text(followers, style: TextStyle(fontSize: 16, color: Colors.white70),),
                              trailing: Text('times', style: TextStyle(fontSize: 12, color: Colors.white70), ) // Trailing icon for more options
                          );
                        },
                        itemCount: group.length,
                        separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_right, color: Colors.white70, size: 50,),
                          Text('View All', style: TextStyle(fontSize: 20, color: Colors.white70),),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.white70,),

                    Container(
                      height: 160,
                      color: Colors.black,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          final groups = group[index];
                          final followers= info[index];
                          final times= time[index];
                          return ListTile(
                              leading:ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Icon(Icons.group, color:Colors.white, size: 50.0,),
                              ),
                              title: Text(groups, style: TextStyle(color: Colors.white,fontSize: 20),),
                              subtitle: Text(followers, style: TextStyle(fontSize: 16, color: Colors.white70),),
                              trailing: Text('times', style: TextStyle(fontSize: 12, color: Colors.white70), ) // Trailing icon for more options
                          );
                        },
                        itemCount: group.length,
                        separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_right, color: Colors.white70, size: 50,),
                          Text('View All', style: TextStyle(fontSize: 20, color: Colors.white70),),
                              ],
                         ),
                     ),
                    Divider(thickness: 1, color: Colors.white70,),












                  ],
                ),
              ),
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




          ],
        ),
      ),
    );
  }
}
















