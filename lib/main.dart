import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/groups.dart';
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
      home: MyHomePage(), // Set MyHomePage as the initial screen
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names=['Ramisha', 'ABC', 'GDSC Group', 'Innovator tech Society','Mama',
    'Flutter Dev','EFG','Technology','HIJ','Ramisha', 'ABC', 'GDSC Group'];
    var time=['6/7/24','10:04 am','5:00 am','4:02 am','7:53 pm','8:01 pm','9:57 pm',
      '11:00 pm','yesterday','6/7/24','10:04 am','5:00 am'];
    var inf=['Nihal: yes i saw that','Arham: Check the recent post that...',
      '~fat earning:heloo please check...','|=| photo','okay mama<3',
      '~Flutter dev:hello','7','keep it going','We have to talk..','Nihal: yes i saw that','Arham: Check the recent post that...',
      '~fat earning:heloo please check...'];
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
      'assets/images/flutter5786.jpg',
      'assets/images/group.jpeg',
      'assets/images/fcbarcelona.png'

    ];
//group.jpeg
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Text('WhatsApp',style: TextStyle(color: Colors.white),),
            Spacer(),
            Icon(Icons.camera_alt_outlined, color: Colors.white, ),
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
              height: 50,
              child: SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white70),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.black54,
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.circle_outlined, color: Colors.lightGreen,),
                    hintText: ('Ask MetaAI or type anything to search'),
                    hintStyle: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.archive_outlined,color: Colors.white),
                  SizedBox(width: 20,),
                  Text('Archived', style: TextStyle(color: Colors.white),),
                  Spacer(),
                  Text('1', style: TextStyle(color: Colors.green, fontSize: 17),),
                  ],
                  ),
            ),SizedBox(height: 5,),
            Container(
              height: 600,
              color: Colors.black,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final name = names[index];
                  final times= time[index];
                  final information= inf[index];
                  final list=lists[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage(list),
                    // backgroundImage: Image.asset('assets/image'),
                   ),
                    title: Text(name, style: TextStyle(color: Colors.white,fontSize: 20),),
                    subtitle: Text(information, style: TextStyle(fontSize: 13, color: Colors.white70),),
                    trailing: Text(times, style: TextStyle( color: Colors.white70),) // Trailing icon for more options
                  );
                },
                itemCount: names.length,
                separatorBuilder: (context, index) => Divider(thickness: 0, color: Colors.black,),
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
      ),
    );
  }
}
