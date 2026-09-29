import 'package:flutter/material.dart';
import 'detail.dart';
import 'models/data.dart';

class HomePage extends StatelessWidget {
  final String nama;
  const HomePage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halo!, $nama!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),      
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(carIndex: index),
                ),
              );
            },
            title: Text(cars[index].name),
            subtitle: Text('${cars[index].year}'),
            leading: Image.network(
              cars[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
          );
        },
      ),
    );
  }
}