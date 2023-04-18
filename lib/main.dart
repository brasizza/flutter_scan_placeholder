import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: SizedBox(
        width: 300,
        height: 100,
        child: Card(
          elevation: 2,
          color: Colors.grey.shade300,
          child: Row(
            children: [
              Icon(Icons.camera_alt_outlined),

              // ScanController controller = ScanController();
// String qrcode = 'Unknown';

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ScanView(
                    // controller: controller,
                    // custom scan area, if set to 1.0, will scan full area
                    scanAreaScale: 1,
                    onCapture: (data) {
                      print(data);
                      // do something
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
