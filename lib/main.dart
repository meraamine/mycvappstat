import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterial());
}

class MyMaterial extends StatelessWidget {
  MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("My CV"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height:400,
                      child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/002/002/257/original/beautiful-woman-avatar-character-icon-free-vector.jpg',
                         ),
                    ),
                    Text(
                      ("Name : Marina Hany Amine "),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono'),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      ("Mobile : 0100-7252-478"),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono'),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      width: double.infinity,
                      child: MyButton(),
                    ),
                  ]),
            )));
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
          child: Text("Call Me"),
        ),
      ],
    );
  }
}

void onPressed() {}
