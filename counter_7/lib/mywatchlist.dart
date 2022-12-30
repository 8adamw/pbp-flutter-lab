import 'package:counter_7/mywatchlist_model.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mywatchlist extends StatefulWidget {
  const Mywatchlist({super.key});
  @override
  State<Mywatchlist> createState() => _Mywatchlist();
}

class _Mywatchlist extends State<Mywatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: const Text('My Watchlist')),
      drawer: DrawerWidget(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: listlah.length,
            itemBuilder: (BuildContext context, int index) {
              final _item = listlah[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${_item.rating} · ${_item.release_date}",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {Navigator.pushNamed(context, '/detail');},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
)),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }



final List<WatchlistItem> listlah = [
  WatchlistItem(
    watched: true,
    title: "Apatar",
    rating: 5,
    release_date: "01-01-1970",
    review: "Very good"
  ),

];}
