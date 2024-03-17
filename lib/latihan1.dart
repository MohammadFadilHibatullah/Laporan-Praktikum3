import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Mahasiswa"),
        ),
        body: MyHomePage(), // Remove the 'const' keyword here
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {"name": "Mohammad Fadil Hibatullah", "hobby": "Musik"},
    {"name": "Adyatma Kevin", "hobby": "Renang"},
    {"name": "Fachturozi", "hobby": "Gaming"},
    {"name": "Fadil", "hobby": "Olahraga"},
    {"name": "Kevin", "hobby": "Renang"},
    {"name": "Rozi", "hobby": "Gaming"},
    {"name": "Mohammad", "hobby": "Silat"},
    {"name": "Yama", "hobby": "Renang"},
    {"name": "Fachtur", "hobby": "Gaming"},
  ];

  MyHomePage({Key? key}) : super(key: key); // Remove the 'const' keyword here

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final person = data[index];
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              'assets/u.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(person["name"]!),
            subtitle: Text(person["hobby"]!),
            tileColor: Colors.white70,
          ),
        );
      },
    );
  }
}
