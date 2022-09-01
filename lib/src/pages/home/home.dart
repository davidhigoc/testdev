import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdev/src/services/provider/media/media.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = Provider.of<Media>(context);
    // Se inicializa Media
    media.initAppMedia(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'page2');
                },
                child: const Text("Otra Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
