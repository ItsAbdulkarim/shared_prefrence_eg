import 'package:flutter/material.dart';
import 'package:shared_prefrence_eg/with_provider.dart';

class WithOutProvider extends StatefulWidget {
  const WithOutProvider({super.key});

  @override
  State<WithOutProvider> createState() => _WithOutProviderState();
}

class _WithOutProviderState extends State<WithOutProvider> {
  bool isLightOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('withOutProvder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Center(child: Text('this is with out proivder')),
            Icon(
              Icons.lightbulb,
              size: 300,
              color: isLightOn ? Colors.yellow : Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(),
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onPressed: () {
                    isLightOn = !isLightOn;
                    setState(() {});
                  },
                  child: isLightOn
                      ? Text(
                          'Light is on',
                          style: TextStyle(color: Colors.white),
                        )
                      : Text(
                          'Light is off',
                          style: TextStyle(color: Colors.white),
                        )),
            ),
            Text('with provider go to next screen'),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
               return WithProvider();
              },));

            }, child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
