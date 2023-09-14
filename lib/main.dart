import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fill Your Details"),
        ),
        body: MyCustomForm(),
      ),
    );
  }

}

class MyCustomForm extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => MyCustomFormState();

}

class MyCustomFormState extends State<MyCustomForm> {
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [
            Text("SignUp Form"),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Name"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Please Enter Your Phone Number"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Please Enter Your DOB"
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Email"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Password"
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Confirm Password"
              ),
            ),
            ),
            ElevatedButton(onPressed: () {
              if (formkey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Processing data"))
                );
              }
            },
                child: Text("Register"))
          ],
        )
    );

  }

}

