import 'package:flutter/material.dart';

import 'baf_qr.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            FilledButton(
                onPressed: () {
                  BAFQR.openLogin();
                },
                child: const Text("OpenLogin"))
          ],
        ),
      ),
    );
  }
}
