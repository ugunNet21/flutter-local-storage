
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSharedPref extends StatefulWidget {
  const HomeSharedPref({super.key});

  @override
  _HomeSharedPrefState createState() => _HomeSharedPrefState();
}

class _HomeSharedPrefState extends State<HomeSharedPref> {
  TextEditingController _controller = TextEditingController();
  String _storedValue = "";

  @override
  void initState() {
    super.initState();
    _loadStoredValue();
  }

  _loadStoredValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedValue = prefs.getString('myKey') ?? "";
    });
  }

  _saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('myKey', _controller.text);
    _loadStoredValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Enter a value'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveValue();
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 16),
            Text('Stored Value: $_storedValue'),
          ],
        ),
      ),
    );
  }
}
