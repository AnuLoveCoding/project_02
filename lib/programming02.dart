import 'package:flutter/material.dart';

void main(List<String> args){
  runApp(New());
}

class New extends StatelessWidget {
   New({Key? key}) : super(key: key);

  var name = TextEditingController();
  var email = TextEditingController();
  var address  = TextEditingController();
  var phone = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar:
        AppBar(
          title: const Text("App"),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          padding:const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          width: double.infinity,
          height: 400,
          color: Colors.lightGreen,

          child: Column(
            children: [  const Text('This is my first app',style: TextStyle(color: Colors.orangeAccent, fontSize: 30),),
              TextField(
                controller: name,
                decoration: const InputDecoration(
                  hintText: 'Enter Your name'
                ),
              ),

              TextField(
                controller: email,
                decoration: const InputDecoration(
                    hintText: 'Enter your email'
                ),
              ),

              TextField(
                controller: address,
                decoration: const InputDecoration(
                  hintText: 'Enter Your address'
                ),
              ),
              TextField(
                controller: phone,
                decoration: const InputDecoration(
                  hintText: "Enter Your Phone Number"
                ),
              ),
              const SizedBox (height: 25,),
              ElevatedButton(onPressed: (){
               print('${name.text}\n${email.text}\n${address.text}\n${phone.text}');
                }, child: const Text('Click me please'),),
              ],

          ),

        ),

      ),

    );
  }
}
