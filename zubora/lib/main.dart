import 'package:flutter/material.dart';
import 'common/header.dart';
import 'common/footer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: Header(),
      bottomNavigationBar: Footer(),
    ));
  }
}
