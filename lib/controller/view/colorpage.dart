import 'package:cs/controller/colorcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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