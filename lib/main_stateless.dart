import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(
        children: [
          Text(
            'Hello, Flutter!',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('ElevatedButton pressed');
            },
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('OutlinedButton pressed');
            },
            child: const Text('OutlinedButton'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('TextButton pressed');
            },
            child: const Text('TextButton'),
          ),
          IconButton(
            onPressed: () {
              debugPrint('IconButton pressed');
            },
            icon: const Icon(Icons.thumb_up),
          ),
          ElevatedButton.icon(
            onPressed: () {
              debugPrint('ElevatedButton.icon pressed');
            },
            icon: const Icon(Icons.thumb_up),
            label: const Text('ElevatedButton.icon'),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('ONE'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('TWO'),
              )
            ],
          ),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('ONE'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('TWO'),
              )
            ],
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: const Center(
              child: Text('Container'),
            ),
          ),
          Image.asset('assets/flutter.png'),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('ONE'),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Align(
              alignment: Alignment.topRight,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('TWO'),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('THREE'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final List<Widget> children;
  const MyPage({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Lecture'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children
                  .map((child) => Card(
                          child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: child,
                      )))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
