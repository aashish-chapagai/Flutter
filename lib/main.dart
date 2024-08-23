import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aashish Chapagai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(10),
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text (
              'Enter Your Login Credentials'
            ),
            Container(width: 300, height: 80,
            margin: EdgeInsets.only(top: 24),
            child:   TextFormField(

              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter Your Username",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid)),
                prefixIcon: Icon(Icons.person)
                
                ),
                  ),
            ),
            Container(width: 300, height: 80,
            margin: EdgeInsets.only(top: 20),
            child:   TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Password",
              
                hintText: "Enter Your Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid)),
                prefixIcon: Icon(Icons.password)
                
                ),
                  ),
            ),
            Container(
              width: 200, height: 50,
            margin: EdgeInsets.only(top: 20),
            child: FloatingActionButton(onPressed: () {

            },child: Text("Login"),),
            )
          
          ],)
        ),
      ),
    );
  }
}
