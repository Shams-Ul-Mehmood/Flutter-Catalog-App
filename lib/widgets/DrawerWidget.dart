import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    final imageUrl = 'https://propakistani.pk/wp-content/uploads/2022/03/Shahid-Afridi-1.jpg';
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 7,
      child: Container(
        color: Colors.indigoAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Shams Afridi"),
                  accountEmail: Text("afridi30@gmail.com"),
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1, offset: Offset(1,1), blurRadius: 1, blurStyle: BlurStyle.outer, color: Colors.indigo
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(7),
                    backgroundBlendMode: BlendMode.lighten,
                    gradient: LinearGradient(
                      colors: [ Colors.black87, Colors.indigoAccent ],
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),

              title: Text("Home", textScaleFactor: 1.2  , style: TextStyle( fontSize: 15, color: Colors.white ),),
            ),
          ],
        ),
      ),
    );
  }
}