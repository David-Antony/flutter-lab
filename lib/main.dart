import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumni Highlights',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Alumni Highlights',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Alumni Portal!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.person, size: 30, color: Colors.purple),
                  SizedBox(width: 10),
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.mail, color: Colors.purple),
                  SizedBox(width: 10),
                  Text("john.doe@example.com"),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: Text('Know More'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search alumni...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.network(
                  'https://thumbs.dreamstime.com/b/elevate-your-event-vibrant-alumni-meet-logo-designed-to-capture-spirit-connection-celebration-perfect-338077132.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple.shade100,
                child: Text(
                  'John Doe, a 2012 Computer Science graduate, is now a lead developer at a top tech company. He has contributed to open-source projects and mentors young developers.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}