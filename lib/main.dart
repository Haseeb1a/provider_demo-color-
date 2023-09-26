import 'package:cs/controller/colorcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>colorprovider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  MyHomePage(title: 'COLOR FLIP'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final colorcontroller=Provider.of<colorprovider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Consumer<colorprovider>(builder: (context,jdlgk,child){
             return    CircleAvatar(
              radius: 70,
              backgroundColor: jdlgk.currentColor,
             );
           },
             
           )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
         colorcontroller.changeColors();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
