import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: const Icon(Icons.menu),title: const Text("Home"),),
      drawer: Drawer(
        child: ListView(
          children:  [
            UserAccountsDrawerHeader(accountName:Text(" Arkar"), accountEmail: Text("Arkar@gmail.com")),
            SizedBox(height: 50,),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text("Post List"),
              onTap: (){

              },),

    ListTile(
    leading: Icon(Icons.add),
    title: Text("New List"),
    onTap: (){

  },
            ),  SizedBox(height: 50,),
      ListTile(
        leading: Icon(Icons.login),
        title: Text("LogOut List"),
        onTap: (){

        }),

          ],
        ),
      ),
    );
  }
}
