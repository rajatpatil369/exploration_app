import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Space Exploration Planner!"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("You are this far from exploring the whole universe:"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TaskItem(label: "Load rocket with supplies"),
      TaskItem(label: "Launch rocket"),
      TaskItem(label: "Circle the home planet"),
      TaskItem(label: "Head out to the first moon"),
      TaskItem(
        label: "Launch moon lander #1",
      ),
    ]);
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  TaskItem({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(onChanged: null, value: false),
        Text(label),
      ],
    );
  }
}
