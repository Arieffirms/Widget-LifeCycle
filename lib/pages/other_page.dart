import 'package:flutter/material.dart';

import '../pages/counter_page.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});
  static const routeName = "/other-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Other Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.restorablePushReplacementNamed(
              context,
              CounterPage.routeName,
              arguments: ModalRoute.of(context)?.settings.arguments as int,
            );
          },
          child: Text("Go TO Counter Page"),
        ),
      ),
    );
  }
}
