import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
   MyWidget({Key? key}) : super(key: key);

   var name = TextEditingController();
   var address= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'.toUpperCase()),
        centerTitle: true,
        ),
      body: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('MyApp'.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
            SizedBox(height: 20.0,),
            TextField(
              controller: name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                icon: Icon(Icons.person,color: Colors.limeAccent,shadows: [BoxShadow(offset: Offset(1,2))],),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Enter Your name',
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: address,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter Your address',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                icon: Icon(Icons.map,color: Colors.lime,shadows: [BoxShadow(offset: Offset(1,2))],),
              ),
            ),
          SizedBox(height: 20.0,),
          ElevatedButton(onPressed: (){
            print('${name.text}\n${address.text}');
            }, child: Text('Click me!!!'),),
          ],
        ),
      ),
    );
  }
}
