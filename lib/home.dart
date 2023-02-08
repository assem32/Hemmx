import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){

        },icon: Icon(Icons.arrow_back),),
        title: Text('My personal information'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(Icons.person),
                Text('name: assem '),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Icon(Icons.phone),
                Text('phone: 0111111111 '),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Icon(Icons.numbers),
                Text('age: 15 '),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Icon(Icons.person),
                Text('name: assem '),
              ],
            ),
          ),Expanded(
            child: Row(
              children: [
                Icon(Icons.factory_sharp),
                Text('job: student'),
              ],
            ),
          ),
        ],
      )
    );
  }
}

void hello(){
  print('hi');
}