import 'package:flutter/material.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burgers'),
      ),
      body: const Center(
        child: Text(
          'Coming soon',
        ),
      ),
    );
  }
}
