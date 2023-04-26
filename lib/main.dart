// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project_1/list.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: MyHomePage(), ); }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  
   List<list1> items1 = [
    list1(
      name: "Desktop",
      icon: Icon(Icons.computer, size: 40,),
      price: "\$200.0",
      
    ),
    list1(
      name: "Smart Phone",
      icon: Icon(Icons.phone_android_outlined, size: 40,),
      price: "\$1000.0",
    ),
    list1(
      name: "Cable",
      icon: Icon(Icons.cable,size: 40,),
      price: "\$10.0",
    ),
    list1(
      name: "Mouse",
      icon: Icon(Icons.mouse, size: 40,),
      price: "\$200.0",
    ),
    list1(
      name: "Smart Screen",
      icon: Icon(Icons.smart_screen,size: 40,),
      price: "\$200.0",
    ),
    list1(
      name: "Tablet",
      icon: Icon(Icons.tablet_mac, size: 40,),
      price: "\$1000.0",
    ),
    list1(
      name: "Camera",
      icon: Icon(Icons.camera_alt, size: 40,),
      price: "\$1000.0",
    ),
  ];

  

  @override
  Widget build(BuildContext context) { 


    return Scaffold(
      appBar: AppBar(
        
        title:Row(
          children: [
            Icon(Icons.data_object,),
            Text('\t\tList of item'),            
          ],
        ),
        
        actions: const <Widget>[
          Icon(Icons.more_vert),
          ]
          
      ),
      body: ListView.builder(
        itemCount: items1.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(color:Color.fromARGB(179, 221, 216, 216),width: 0.5),
                       borderRadius: BorderRadius.circular(10)), 
              title: Text('${items1[index].name}',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('${items1[index].price}'),
              leading: items1[index].icon,iconColor: Colors.black,
              trailing: Icon(Icons.edit, color: Colors.black,),
              ),
          );
        }
        
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 70, 120),                
                ),
                child: Column(
                
                  children: [
                    CircleAvatar(  
                      child: GestureDetector(
                        onTap: () async{
                          await showDialog(context: context, builder: (_)=>Image());
                        },
                      ),
                      backgroundImage: AssetImage("images/Bb.jpg"),
                      radius: 40.0,
                    ),                                      
                
                    Text(
                      'Bisrat Ayalew',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        ),
                      ),
                
                    Text(
                      'Bisratayalew1@gmail.com',
                      style: TextStyle(
                        color: Color.fromARGB(255, 165, 164, 164),
                        fontSize: 10,
                        ),
                      )
                   ],
                ),
                 ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: ListTile(
                title: Text('Dashboard',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.dashboard),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: ListTile(
                title: Text('Items',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.data_object),
              ),
            ), 
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: ListTile(
                title: Text('Setting',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.settings),
              ),
            ), 
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: ListTile(
                title: Text('Account',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.manage_accounts),
              ),
            ),   
            
           
        ]
        ),
      ),            
        
    );
  }
}

class Image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('images/Bb.jpg'),
            fit: BoxFit.cover
            )
        ),
      ),
    );
  }

}






