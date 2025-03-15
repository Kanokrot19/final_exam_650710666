import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  final String setting;
  final String reset_password;
  final String private;

  const Answer1(
      {super.key,
      required this.name,
      required this.email,
      required this.imageUrl,
      required this.setting,
      required this.reset_password,
      required this.private});
      

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imageUrl),
        ),
        const SizedBox(height: 20),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          email,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),

        const SizedBox(height: 30),
        Row(
          children: [
            Icon(Icons.settings, size: 20, color: Colors.blue),
            SizedBox(width: 15),
            Text(
              setting,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 20),

        Row(
          children: [
            Icon(Icons.key_outlined, size: 20, color: Colors.blue),
            SizedBox(width: 15),
            Text(
              reset_password,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),

        const SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.privacy_tip, size: 20, color: Colors.blue),
            SizedBox(width: 15),
            Text(
              private,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),

        const SizedBox(height: 20),
        // Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Edit Profile Action
                },
                child: Text('แก้ไขโปรไฟล์'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Logout Action
                },
                child: Text('ออกจากระบบ'),
              ),
              
            ],
            
          ),
          
        ),
        
      ],
    );
    
  }
}
