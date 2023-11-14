import 'package:buttonbar/page2/page2.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex:1,
      length: 5,
      child: Scaffold(
        drawer: const Drawer(
          backgroundColor: Color.fromARGB(
            255,
            116,
            159,
            233,
          ),
          child: Icon(
            Icons.camera_rounded,
            color: Colors.limeAccent,size: 310,
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Telegramm',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.manage_search_sharp,
                  size: 40,
                  color: Colors.white,
                ))
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.shopping_cart_checkout_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Icon(
                Icons.person_2_outlined,
                size: 370,
              ),
            ),
            Center(
              child: Icon(
                Icons.account_circle_rounded,
                size: 370,
              ),
            ),
            Center(
              child: Icon(
                Icons.open_with_rounded,
                size: 370,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page2(),
              ),
            );
            const Icon(Icons.search);
          },
        ),
      ),
    );
  }
}
