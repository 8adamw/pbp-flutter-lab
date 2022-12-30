import 'package:counter_7/mywatchlist_model.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  const Details({super.key});
  @override
  State<Details> createState() => _Details();
}

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: const Text('Details')),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/mywatchlist');
        },
        backgroundColor: Color.fromARGB(255, 0, 60, 255),
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('[CONTOH] Apatar'),
              Text('5'),
              Text('01-12-2022'),
              Text('Film yang sangat bagus'),
            ],
          )
        ),
      ),
    );
  }
}

