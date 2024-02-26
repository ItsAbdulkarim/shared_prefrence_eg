import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefrence_eg/provder/provider_with_out_sharep.dart';
import 'package:shared_prefrence_eg/with_outt_provder.dart';
class WithProvider extends StatefulWidget {
  const WithProvider({super.key});

  @override
  State<WithProvider> createState() => _WithProviderState();
}

class _WithProviderState extends State<WithProvider> {


  @override
  Widget build(BuildContext context) {
    print('hhhhhhh');
    return Scaffold(
      appBar: AppBar(title: Text('withProvder'),
      centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(

          children: [



        Consumer<ProviderWithOutShareP>(builder: (context, value, child) {
          return Icon(Icons.lightbulb,size: 300,  color: value.isLightONn?Colors.yellow:Colors.grey,);
        },),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(),
                    padding: EdgeInsets.symmetric(vertical: 20),


                  ),
                  onPressed: (){

                 context.read<ProviderWithOutShareP>().isLightONorOFF();


                  }, child: Consumer<ProviderWithOutShareP>(builder: (context, value, child) {
                    return value.isLightONn? Text('Light is on',style: TextStyle(
                        color: Colors.white
                    ),):Text('Light is off',style: TextStyle(
                color: Colors.white
                ),
                );
                  },)
      ),
            ),
TextButton(onPressed: (){

  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
    return WithOutProvider();
  },));


}, child: Text('back'))


          ],
        ),
      ),
    );
  }
}
