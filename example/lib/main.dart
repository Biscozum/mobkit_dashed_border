import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobkit Dashed Border Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobkit Dashed Border Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 75,
              decoration: const BoxDecoration(
                border: DashedBorder.fromBorderSide(
                    dashLength: 10,
                    side: BorderSide(color: Colors.black, width: 1)),
              ),
              child: const Center(
                child: Text(
                  'Same color and width',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 75,
              decoration: const BoxDecoration(
                border: DashedBorder(
                  dashLength: 10,
                  left: BorderSide(color: Colors.black, width: 1),
                  top: BorderSide(color: Colors.red, width: 1.5),
                  right: BorderSide(color: Colors.orange, width: 2),
                  bottom: BorderSide(color: Colors.blue, width: 2.5),
                ),
              ),
              child: const Center(
                child: Text(
                  'Different color and width',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 75,
              decoration: const BoxDecoration(
                  border: DashedBorder.fromBorderSide(
                      dashLength: 15,
                      side: BorderSide(color: Colors.black, width: 2)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Center(
                child: Text(
                  'Rounded same color and width',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 75,
              decoration: const BoxDecoration(
                  border: DashedBorder(
                    dashLength: 10,
                    left: BorderSide(color: Colors.black, width: 1),
                    top: BorderSide(color: Colors.red, width: 1.5),
                    right: BorderSide(color: Colors.orange, width: 2),
                    bottom: BorderSide(color: Colors.blue, width: 2.5),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Center(
                child: Text(
                  'Rounded different color and width',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 75,
              decoration: const BoxDecoration(
                border: DashedBorder(
                  dashLength: 15,
                  left: BorderSide(color: Colors.black, width: 2),
                  top: BorderSide(color: Colors.red, width: 2),
                  right: BorderSide(color: Colors.orange, width: 2),
                  bottom: BorderSide(color: Colors.blue, width: 2),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Different rounded and color',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 90,
              decoration: BoxDecoration(
                border: DashedBorder.all(
                  color: Colors.black,
                  dashLength: 40,
                  width: 2,
                  isOnlyCorner: true,
                  strokeAlign: BorderSide.strokeAlignInside,
                  strokeCap: StrokeCap.round,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Is only corner',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
