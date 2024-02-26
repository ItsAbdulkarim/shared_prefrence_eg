import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrence_eg/provder/shared_p_with_provider.dart';
import 'package:shared_prefrence_eg/with_outt_provder.dart';
import 'package:shared_prefrence_eg/with_provider.dart';

class SharePWithProvider extends StatefulWidget {
  const SharePWithProvider({super.key});

  @override
  State<SharePWithProvider> createState() => _SharePWithProviderState();
}

class _SharePWithProviderState extends State<SharePWithProvider> {
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
            Consumer<SharePreWithProviderclass>(
              builder: (context, value, child) {
                print('thisssssssssdd${value.isLightOn}');
                return Icon(
                  Icons.lightbulb,
                  size: 300,
                  color: value.isLightOn ? Colors.yellow : Colors.grey,
                );
              },
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
                    context.read<SharePreWithProviderclass>().saved();

                  },
                  child: Consumer<SharePreWithProviderclass>(
                    builder: (context, value, child) {
                      return Text('Light is ${value.isLightOn ? 'on' : 'off'}');
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
