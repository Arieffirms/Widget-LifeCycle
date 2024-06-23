import 'package:flutter/material.dart';
import '../widgets/widget_counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  static const routeName = "/counter-page";

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void didChangeDependencies() {
    final numberState = ModalRoute.of(context)?.settings.arguments;
    if (numberState is int) {
      counter = numberState;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter Page"),
        backgroundColor: Colors.blue,
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
