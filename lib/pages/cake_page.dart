import 'package:flutter/material.dart';

class CakePage extends StatelessWidget {
  const CakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cakes'),
      ),
      body: const Center(
        child: Text(
          'Coming soon',
        ),
      ),
    );
  }
}
