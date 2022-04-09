import 'package:flutter/material.dart';
import 'package:flutter3/screens/detail_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailScreen();
                  },
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image:const DecorationImage(
                          image:AssetImage(
                            'assets/night.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                      child: Text(
                          'Hardware may trigger an interrupt at any time by sending a signal to the CPU, usually by way of the system bus.'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 30,
      ),
    );
  }
}
