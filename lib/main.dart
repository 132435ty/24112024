import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  bool _firstCheckboxValue = false;
  bool _secondCheckboxValue = false;
  bool _thirdCheckboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Transform.scale(
                  scale: 50/24,
                  child: Checkbox(
                    value: _firstCheckboxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        _firstCheckboxValue = value ?? false;
                      });
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 274)),
                Transform.scale(
                  scale: 50/24,
                  child: Checkbox(
                    value: _secondCheckboxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        _secondCheckboxValue = value ?? false;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 109)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Checkbox(
                  value: _thirdCheckboxValue,
                  onChanged: (bool? value) {
                    setState(() {
                      _thirdCheckboxValue = value ?? false;
                    });
                  },
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.grey),
                    text: 'By ticking this box, you agree to our',
                    children: [
                      TextSpan(
                        text: ''' Terms and 
           conditions and private policy''',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
