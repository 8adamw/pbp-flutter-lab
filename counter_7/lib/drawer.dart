import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        ListTile(
            title: const Text('Mywatchlist'),
            onTap: () {
              Navigator.pushNamed(context, '/mywatchlist');
            }),
        ListTile(
            title: const Text('Counter'),
            onTap: () {
              Navigator.pushNamed(context, '/counter');
            }),
        ListTile(
            title: const Text('Tambah Budget'),
            onTap: () async {
                Navigator.pushNamed(context, '/tambah');  
            },
        ),
        ListTile(
            title: const Text('Data Budget'),
            onTap: () async {
                Navigator.pushNamed(context, '/data');
            },
        ),
      ]),
    );
  }
}
