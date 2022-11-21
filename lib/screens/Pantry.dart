import 'package:flutter/material.dart';
import 'add.dart';

class Pantry extends StatelessWidget {
  const Pantry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantry',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [const Text(
            'Pantry Ingredients',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.black87),
          ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Add()));}, child: const Text('Add Ingredients'),
            ),
          ],
        ),
      ),
    );
  }
}