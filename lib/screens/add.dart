import 'package:flutter/material.dart';
import 'package:kitchen_organizer_app/screens/trending.dart';
import '../widgets/search_card.dart';

class Add extends StatelessWidget {
  const Add({Key key}) : super(key: key);

  get context => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Ingredient',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(icon: const Icon(Icons.add),itemBuilder: (context)=>[
            PopupMenuItem(child: Text('Add to Pantry')),
            PopupMenuItem(child: Text('Add to Refrigerator')),
          ] ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: ListView(
            children: <Widget>[
              buildSearchBar(context),
              SizedBox(height: 20.0),
              buildFoodGroupsRow('Food Groups', context),
              SizedBox(height: 10.0),

          ],
        ),
      ),
    );
  }
  buildSearchBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: SearchCard()
    );
  }
  buildFoodGroupsRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$restaurant",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        ElevatedButton(
          child: Text(
            "See all",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
