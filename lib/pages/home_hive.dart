import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences/models/my_data.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class HomeHive extends StatefulWidget {
  const HomeHive({Key? key}) : super(key: key);

  @override
  _HomeHiveState createState() => _HomeHiveState();
}

class _HomeHiveState extends State<HomeHive> {
  TextEditingController _controller = TextEditingController();
  late Box<MyData> _myBox;

  @override
  void initState() {
    super.initState();
    _myBox = Hive.box<MyData>('myBox');
  }

  _saveValue() {
    _myBox.put('myKey', MyData(_controller.text));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Database Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter a value'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveValue();
              },
              child: Text('Save'),
            ),
            SizedBox(height: 16),
            ValueListenableBuilder(
              valueListenable: _myBox.listenable(),
              builder: (context, Box<MyData> box, widget) {
                var storedValue = box.get('myKey');
                return Text('Stored Value: ${storedValue?.value ?? ""}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
