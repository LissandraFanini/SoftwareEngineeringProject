import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String page3 = '/profile';
  final double coverHeight = 240;
  final double profileHeight = 120;
  final double top = 210;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Page',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            buildCoverImage(),
            SizedBox(
              child: buildProfileImage(),
            ),
            Column(
              children: [
                const SizedBox(height: 180),
                const Divider(),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200],
                        shape: const StadiumBorder()),
                    child: Text("Edit Profile")),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.account_circle))),
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined))),
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Date of Birth"),
                        prefixIcon: Icon(Icons.portrait))),
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Allergy Information"),
                        prefixIcon: Icon(Icons.face_retouching_off))),
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Special Dietary Restrictions"),
                        prefixIcon: Icon(Icons.emoji_food_beverage))),
              ],
            )),
          ]),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.deepPurple,
        child: Image.network(
          'https://static8.depositphotos.com/1392258/865/i/450/depositphotos_8656042-stock-photo-upscale-kitchen-with-breakfast-bar.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.white,
        backgroundImage: const NetworkImage('https://i.imgur.com/62B53PO.png'),
      );
}
