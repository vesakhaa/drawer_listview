import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage ({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(
          color: Colors.white,
        ) ),
        backgroundColor: Colors.blue [900],
        foregroundColor: Colors.white,
              
      ),
      drawer: buildGroupDrawer(context),
      body: Center(
        child: Text("Pemrograman Mobile $title"),
      )
      // body: GridView.count(
      // crossAxisCount: 2, 
      // crossAxisSpacing: 10.0,
      // mainAxisSpacing: 10.0,
      // shrinkWrap: true,
      // children: 
      //   List.generate(10, (index){
      //     return Padding(padding : EdgeInsets.all(10),
      //     child: Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(20.0),
      //         color: Colors.blue[200],
      //       ),
      //       child: Text ("Materi $index",
      //       textAlign: TextAlign.center,
      //       style : const TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.black,
      //       )
      //       )
      //       )
      //     );
      //   })
      // ),
    );
  }
  Widget buildGroupDrawer(BuildContext context)  {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[900]),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[900]),
              accountName: Text("Ananda Vesakhagotama Suparman",
              style: TextStyle(
                fontSize: 18.0,
              ),
              ),
              accountEmail: Text("anandavesakha2905@gmail.com",),
              currentAccountPictureSize: Size.square(40.0),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,
              child: Text("V",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blue,
              ),),),
            ),
          //   child: const Text("Ananda Vesakhagotama Suparman",
          //   style: TextStyle(color: Colors.white,
          //   fontSize: 30.0),
          //   ),
          // ),
          // ExpansionTile (title: const Text("Materi"),
          // children: [
          //   ListTile(title: const Text("Materi 1"),
          //   onTap: (){Navigator.pop(context);},
          //   ),
          //   ListTile(title: Text("Materi 2"),
          //   onTap: (){Navigator.pop(context);},
          //   ),
          //   ListTile(title: Text("Materi 3"),
          //   onTap: (){Navigator.pop(context);},
          //   ),
          //   ListTile(title: Text("Materi 4"),
          //   onTap: (){Navigator.pop(context);},
          //   ),
          //   ListTile(title: Text("Materi 5"),
          //   onTap: (){Navigator.pop(context);},
          //   ),
          // ],
          // )
      ),
      ListTile(leading: Icon(Icons.person),
      title: Text("Vesakhagotama"),
      subtitle: Text("XII RPL 2"),
      trailing: Icon(Icons.chevron_right),
      ),

        ],
      ),
    );
}
}