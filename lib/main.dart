// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class TeksUtama extends StatelessWidget {
  const TeksUtama({super.key, required this.teks1, required this.teks2, this.backgroundColor});

  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20, 
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 167, 162, 162)
          ),
        )
      ],
      )
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TeksUtama(
              teks1: 'IMACULATA HAGAR KEMALA',
              teks2: 'STI202102516',
            ),
            TeksUtama(
              teks1: 'MARGERETA STEPHANI',
              teks2: 'STI202102517',
            ),
            TeksUtama(
              teks1: 'SALSABILA MUMTAZ',
              teks2: 'STI202102521',
              backgroundColor: Colors.yellow,
            ),TeksUtama(
              teks1: 'ANA SAFITRI',
              teks2: 'STI202102525',
            ),
            TeksUtama(
              teks1: 'GIAS GARDA PAMUNGKAS',
              teks2: 'STI202102533',
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
