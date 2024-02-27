import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrence_eg/with_outt_provder.dart';
import 'package:shared_prefrence_eg/with_provider.dart';

class SharePWithOutProvider extends StatefulWidget {
  const SharePWithOutProvider({super.key});

  @override
  State<SharePWithOutProvider> createState() => _SharePWithOutProviderState();
}

class _SharePWithOutProviderState extends State<SharePWithOutProvider> {
  late bool isLightOn;
  @override
  void initState() {
    super.initState();
    isLightOn=false;
    getState(); // Load initial state when the widget is initialized
  }





  void getState() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    setState(() {
      isLightOn = sharedPreferences.getBool('isLightOn') ?? false;
    });
  }

  void saveState() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    setState(() {
      isLightOn=!isLightOn;

    });
    sharedPreferences.setBool('isLightOn', isLightOn);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('SharepwithOutProvder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Center(child: Text('this is sharep with out proivder')),
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

                    saveState();
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
            // Text('sharep with provider go to next screen'),
            // TextButton(
            //     onPressed: () {
            //       Navigator.pushReplacement(context, MaterialPageRoute(
            //         builder: (context) {
            //           return WithProvider();
            //         },
            //       ));
            //     },
            //
            //
            //     child: Text('Click me'))




          ],
        ),
      ),
    );
  }
}
