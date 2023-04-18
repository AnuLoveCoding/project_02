import 'package:flutter/material.dart';
import 'package:project_02/03.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'.toUpperCase()),
        centerTitle: true,
      ),

      body: Container(
        child: ListView(
          children: [
              ListTile(leading: Icon(Icons.home,color: Colors.deepOrange,),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return three();
                  }));
                  },


              ),

              ListTile(leading: Icon(Icons.image),
                title: Text('Image'),
                onTap: (){

                  /*Navigator.push(context,MaterialPageRoute(builder: (context){
                    return;
                }));*/


              },),

              // ListTile(leading: Icon(Icons.ac_unit),
              //   title:Text('Ac -Unit'),
              // onTap: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context){
              //     return;
              //   }));
              //
              // },),

             // ListTile(leading: Icon(Icons.access_alarm),
             //   title: Text('Acess_Alarm'),
             //   onTap: (){
             //     Navigator.push(context, MaterialPageRoute(builder: (context){
             //       return;
             //     }));
             // },),

         ],
        ),
      )
    );
  }
}
