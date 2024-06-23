import 'package:flutter/material.dart';

import '../pages/Other_page.dart';

class WidgetCounter extends StatefulWidget {
  const WidgetCounter({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  State<WidgetCounter> createState() => _WidgetCounterState();
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void initState() {
    print("initstate");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build()");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "${widget.counter}",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                OtherPage.routeName,
                arguments: widget.counter,
              );
            },
            child: Text("Go To Other Page")),
        SizedBox(
          height: 20,
        ),
        Text("Inspired by : Kuldii Project"),
      ],
    );
  }
}
