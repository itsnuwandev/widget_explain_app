import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text(
      //     'Widget Explain App',
      //     style: TextStyle(color: Colors.white, fontSize: 24),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.green,
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.waving_hand, size: 60, color: Colors.green),
              SizedBox(height: 3),
              Text(
                'Wellcome',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'to the Widget Explain App',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 10),
              Text('By'),
              Image(
                image: NetworkImage(
                  'https://api.reliasoftware.com/uploads/what_is_flutter_fcb6c7a4b8.png',
                ),
                width: 150,
                height: 100,
                //fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
