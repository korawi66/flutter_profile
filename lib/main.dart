import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 101, 75, 35),
          centerTitle: true,
          title: const Text("appbar"),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
        ),
        body: SingleChildScrollView( // เผื่อเนื้อหาเกินหน้าจอ
          child: Column(
            children: [
              const Image(image: AssetImage("assets/images/pro.jpg")),
              const SizedBox(height: 20),
              const Text(
                "MR.korawi jumjan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "นักศึกษา มหาวิทยาลัยราชภัฏสรีสะเกษ คณะศิลปะศาสตร์และวิทยาศาสตร์ สาขาวิทยาการคอมพิวเตอร์",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Color.fromARGB(255, 220, 156, 60)),
                    Icon(Icons.star, color: Color.fromARGB(255, 220, 156, 60)),
                    Icon(Icons.star, color: Color.fromARGB(255, 220, 156, 60)),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    SizedBox(width: 10),
                    Text(
                      "150 Reviews",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(
                  color: Color.fromARGB(255, 184, 183, 183),
                  thickness: 0.5,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.phone, size: 50),
                      Text("phone", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email, size: 50),
                      Text("email", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.facebook_outlined, size: 50),
                      Text("social", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
