import 'package:flutter/material.dart';
import 'package:mobigics/screens/grid_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerM = TextEditingController();
  TextEditingController controllerN = TextEditingController();
  var confirmVal;

  void _update(val) {
    setState(() {
      confirmVal = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello please enter the numbers to create grid',
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      onChanged: (val) {
                        _update(val);
                      },
                      controller: controllerM,
                      decoration:
                          InputDecoration(labelText: 'Enter the value of M'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      onChanged: (val) {
                        _update(val);
                      },
                      controller: controllerN,
                      decoration:
                          InputDecoration(labelText: 'Enter the value of N'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GridScreen(m: controllerM.text, n: controllerN.text,);
                    }));
                  },
                  child: Text('confirm')),
              SizedBox(height: 20),
              Visibility(
                  visible: false,
                  child: Text('${controllerM.text} and ${controllerN.text}'))
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
