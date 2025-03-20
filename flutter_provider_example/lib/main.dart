import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_example.dart';
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

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 4, 125, 146)),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
      create: (context) => Counter(0),
      child: const MyHomePage(title: 'Flutter Demo Home Page'),
    ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;
@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Provider App',
            ),
    Consumer<Counter>(
  builder: (context, counter, child) {
    return Text('Total price: ${counter.value}');
  },
)   
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Provider.of<Counter>(context,listen: false).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

