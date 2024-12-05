import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<Map<String, String>> places = [
    {'title': 'Pantai Takisung', 'image': 'assets/Takisung.jpg', 'description': 'Pantai dengan ombak yang tenang dikelilingi dengan pohon pohon kelapa.'},
    {'title': 'Pantai Batakan Baru', 'image': 'assets/BatakanBaru.jpg', 'description': 'Pantai dengan pemandangan indah dan pasir putih serta air yang jernih.'},
    {'title': 'Air Terjun Bajuin', 'image': 'assets/Bajuin.jpg', 'description': 'Air terjun dengan ketinggian 70 meter dan suasana alami menawarkan ketenangan dengan alam yang indah.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tempat Wisata')),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Image.asset(places[index]['image']!, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(places[index]['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(places[index]['description']!),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: places[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
