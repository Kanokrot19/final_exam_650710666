import 'package:flutter/material.dart';
import 'profile.dart';

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
      home: const ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Card")),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Profile(
            name: "Kanokrot Kitsakonpukdee",
            description: "Hello, my name is Kanokrot Kitsakonpukdee, but you can call me Jell. I am currently studying at Silpakorn University in the Information Technology , and I am in my 3rd year.",
            imageUrl:
                "assets/images/Jell.jpg",
          ),
        ),
      ),
    );
  }
}
