import 'package:flutter/material.dart';

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  int _counter = 0;
  bool _showTestWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lifecycle Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text('Update Counter: $_counter'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showTestWidget = !_showTestWidget;
                });
              },
              child: Text(_showTestWidget ? 'Remove Widget' : 'Add Widget'),
            ),
            const SizedBox(height: 20),
            if (_showTestWidget) TestWidget(counter: _counter),
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatefulWidget {
  final int counter;

  const TestWidget({super.key, required this.counter});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  void initState() {
    super.initState();
    print('🚀 initState called - Widget is created');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('📚 didChangeDependencies called - Dependencies changed');
  }

  @override
  void didUpdateWidget(TestWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('🔄 didUpdateWidget called: ${oldWidget.counter} -> ${widget.counter}');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('⏸️ deactivate called - Widget removed from tree');
  }

  @override
  void dispose() {
    super.dispose();
    print('🗑️ dispose called - Widget permanently destroyed');
  }

  @override
  Widget build(BuildContext context) {
    print('🏗️ build called - Counter: ${widget.counter}');
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Test Widget',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            'Counter: ${widget.counter}',
            style: const TextStyle(fontSize: 18),
          ),
          const Text('Check console for lifecycle events!'),
        ],
      ),
    );
  }
}