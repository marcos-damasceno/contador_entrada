import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void increment() {
    if (kDebugMode) {
      print('Incrementou');
    }
  }

  void decrement() {
    if (kDebugMode) {
      print('Decrementou');
    }
  }

  void totalDaily() {
    if (kDebugMode) {
      print('Total Daily');
    }
  }

  void reset() {
    if (kDebugMode) {
      print('Resetou');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white30,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img-0004.jpg'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'TOTAL DO DIA',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                '0',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1,
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              const Text(
                'Pode Entrar!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                '0',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 80,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white60,
                          fixedSize: const Size(100, 100),
                          foregroundColor: Colors.black87,
                          shadowColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )
                          //padding: const EdgeInsets.all(30),
                          ),
                      child: const Text(
                        'Saiu',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                        ),
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  TextButton(
                      onPressed: increment,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white60,
                          fixedSize: const Size(100, 100),
                          foregroundColor: Colors.black87,
                          shadowColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )
                          //padding: const EdgeInsets.all(30),
                          ),
                      child: const Text(
                        'Entrou',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: reset,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white60,
                          fixedSize: const Size(100, 100),
                          foregroundColor: Colors.black38,
                          //primary: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      child: const Text(
                        'Resetar',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
