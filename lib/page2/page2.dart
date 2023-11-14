
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Mucic'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.library_music_outlined),
              ),
              Tab(
                icon: Icon(Icons.music_note_outlined),
              ),
              Tab(
                icon: Icon(Icons.queue_music_rounded),
              ),
            ],
          ),backgroundColor:const Color.fromARGB(255, 63, 181, 114),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Icon(Icons.library_music_outlined,size: 360,)
            ),
            Center(
              child: Icon(Icons.music_note,size: 360,)
            ),
            Center(
              child: Icon(Icons.map_rounded,size: 360,)
            ),
          ],
        ),
      ),
    );
  }
}
