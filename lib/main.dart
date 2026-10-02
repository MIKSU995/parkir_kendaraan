import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ); // MaterialApp
  }
}


class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  state<HomePage> createState() => _HomePageState();
}

class _HomePageState extends state<HomePage> {
  int currentIndex = 0;

  final List <Widget> pages = const [
    HomeContent(),
    // Content2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold;
    appBar: AppBar (title: const Text("Fahmi Hartanto")
    ), // AppBar

    body: pages[currentIndex],
    bottomNavigatorBar: BottomNavigatorBar(
      currentIndex: currentIndex,
      onTap: (index) => 
      setState(() => 
      currentIndex = index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    ), // BottomNavigatorBar
  },
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
  return const Padding(
    padding: const EdgeInserts.all(16),
    child: Column(
      crossAxisAligment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 30,
          color: Colors.Grey,
        ),

        const padding(padding: EdgeInserts.all(16)),
        Container(
          width: 400,
          height: 30,
          color: Colors.Grey,
        ),

        const padding(padding: EdgeInserts.all(16)),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 20,
                color: Colors.Red,
              ),
            ),
          ],
        )
      ],
    )
  )
  }
}