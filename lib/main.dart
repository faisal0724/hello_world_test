import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text("Welcome to my app",
                  style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 28, color: Colors.green,),),
                ),
                SizedBox(height: 8,),
                Text("This is my first app",
                    style: GoogleFonts.angkor(textStyle: TextStyle(fontSize: 24, color: Colors.blue,),)
                ),
                SizedBox(height: 8,),
                Text("Please support me",
                  style: TextStyle(fontSize: 20, color: Colors.amber,),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is left side",
                      style: TextStyle(fontSize: 18, color: Colors.cyan),
                    ),
                    SizedBox(width: 12),
                    Text("This is right side",
                      style: TextStyle(fontSize: 18, color: Colors.pink),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Image.asset("images/hello_world2.jpg"),
                SizedBox(height: 2,),
                Image.network("https://cdn.britannica.com/49/102749-050-B4874C95/Kuala-Lumpur-Malaysia.jpg"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(hintText: "Enter you name",),
                  controller: nameEditingController,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Enter you age",),
                  controller: ageEditingController,
                ),
                ElevatedButton(onPressed: (){
                  //print("Hello World");
                  var snackBar = SnackBar(
                      content: Text("Hello ${nameEditingController.text}, you are ${ageEditingController.text} years old.")
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                    child: Text("Press me", ))
              ],
            ),

          ),
        ),
      ),

    );
  }
}

