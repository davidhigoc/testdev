import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdev/src/services/provider/media/media.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = Provider.of<Media>(context);
    print("Nuevamente: ${media.altoSA}");
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Anterior"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
