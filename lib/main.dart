import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefrence_eg/provder/provider_with_out_sharep.dart';
import 'package:shared_prefrence_eg/provder/shared_p_with_provider.dart';
import 'package:shared_prefrence_eg/sharedpref_with_out_provider.dart';
import 'package:shared_prefrence_eg/sharpref_with_provder.dart';
import 'package:shared_prefrence_eg/with_outt_provder.dart';
import 'package:shared_prefrence_eg/with_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ProviderWithOutShareP();
        },),
        ChangeNotifierProvider(create: (context) {
          return SharePreWithProviderclass();
        },)



      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SharePWithProvider()
      ),
    );
  }
}

