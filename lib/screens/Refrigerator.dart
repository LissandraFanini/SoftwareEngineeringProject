import 'package:flutter/material.dart';
import 'add.dart';

class Refrigerator extends StatelessWidget {
  const Refrigerator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Refrigerator',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Refrigerator Ingredients',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black87),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Add()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[200],
                  shape: const StadiumBorder()),
              child: const Text('Add Ingredients'),
            ),
          ],
        ),
      ),
    );
  }
}
