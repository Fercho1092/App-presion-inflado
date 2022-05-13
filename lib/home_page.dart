import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final tireFrontCtrl = TextEditingController();
  final tireBackCtrl = TextEditingController();

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 180,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'PRESION INFLADO MOTOCICLETA',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 350,
                width: 400,
                child: Image.asset('assets/images/moto.png'),
              ),
              _form(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _form() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text('Llanta delantera'),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: TextFormField(
                    controller: tireFrontCtrl,
                    decoration: const InputDecoration(hintText: 'Presion d'),
                  ),
                )
              ],
            ),
            Column(
              children: const [
                Text('Llanta trasera'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
