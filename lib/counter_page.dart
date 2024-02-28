import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Color,
        Colors,
        Column,
        ElevatedButton,
        Icon,
        Icons,
        MainAxisAlignment,
        Row,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        Theme,
        Widget;

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Приложение - счетчик',
          style: TextStyle(color: Color.fromARGB(255, 255, 17, 0)),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter App",
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 255, 66), fontSize: 40),
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 226, 255, 2), fontSize: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _resetCounter();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 72, 0, 255),
                      foregroundColor:
                          const Color.fromARGB(255, 255, 255, 255)),
                  child: const Icon(Icons.restore),
                ),
                ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 72, 0, 255),
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      _decrementCounter();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 72, 0, 255),
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 72, 0, 255),
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    child: const Text('Next')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
