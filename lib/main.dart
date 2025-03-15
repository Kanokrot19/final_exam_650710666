import 'package:flutter/material.dart';
import 'profile.dart';
import 'answer1.dart';
import 'answer2.dart';

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
      home: const Answer2(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('โปรไฟล์ผู้ใช้',
              style: TextStyle(color: Colors.black)),
          backgroundColor: const Color.fromARGB(255, 56, 147, 217)),
      body: Center(
        child: Container(
          //height: 500,
          //width: 400,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Answer1(
            name: "ชื่อผู้ใช้: Kanokrot Kitsakonpukdee",
            email: "อีเมล: kitsakonpukdee_k@su.ac.th",
            imageUrl: "assets/images/leaf-blue.jpg",
            setting: "การตั้งค่า",
            reset_password: "เปลี่ยนรหัสผ่าน",
            private: "ความเป็นส่วนตัว",
          ),
          
          
        ),
        
      ),
      
    );
  }
}
