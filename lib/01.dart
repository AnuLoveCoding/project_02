import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  var name = TextEditingController();
  var address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        width: 200.0,
        height: 200.0,
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Text(
              'my-collge',
              style: TextStyle(
                  color: Colors.amber[600], fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Enter Your name',
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: address,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Enter Your address',
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {
                print('${name.text}\n${address.text}');
              },
              child: Text('Click on me',style: TextStyle(color: Colors.blueGrey),),
            ),
          ],

        ),

      ),

    );
  }
}
