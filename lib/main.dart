import 'package:flutter/material.dart';

import 'Stepper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'step': (context) => const StepperPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.withOpacity(0.2),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
             const Align(
               alignment: Alignment(-0.9,0),
               child: Text(
                 "Details :-",
                 style: TextStyle(
                     color: Colors.black87,
                     fontWeight: FontWeight.bold,
                     fontSize: 20),
               ),
             ),
            const SizedBox(
              height: 50,
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange.withOpacity(0.2),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black87,
                    size: 25,
                  ),
                ),
                title: const Text(
                  "Dhvanit P Kholiya",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange.withOpacity(0.2),
                  child: const Icon(
                    Icons.email,
                    color: Colors.black87,
                    size: 25,
                  ),
                ),
                title: const Text(
                  "dhvanitkholiya28@mail.com",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange.withOpacity(0.2),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black87,
                    size: 25,
                  ),
                ),
                title: const Text(
                  "Dhvanit@1234",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.withOpacity(0.2),
        onPressed: () {
          Navigator.of(context).pushNamed('step');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
