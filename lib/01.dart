import 'package:flutter/material.dart';

class project_one extends StatelessWidget {
   project_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        ),
      body: Container(

        child: Column(
          children: [
             Text('Name'),
             Image(image: NetworkImage('https://images.pexels.com/photos/16162419/pexels-photo-16162419.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),width: 200.0,height: 200.0,),
          ],
        ),
      ),
    );
  }
}
