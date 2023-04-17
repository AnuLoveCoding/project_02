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
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'myge-colle',
              style: TextStyle(
                  color: Colors.amber[600], fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Enter Your name',
              ),
            ),
            TextField(
              controller: address,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Enter Your address',
              ),
            ),


          ],
        ),
      ),
    );
  }
}
