// import 'package:first_browse_screen/screens/helper_screen/helper_screen.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(useMaterial3: true),
//       home: const HelperScreen(),
//     ),
//   );
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Example'),
        ),
        body: const MyRadioWidget(),
      ),
    );
  }
}

class MyRadioWidget extends StatefulWidget {
  const MyRadioWidget({super.key});

  @override
  createState() => _MyRadioWidgetState();
}

class _MyRadioWidgetState extends State<MyRadioWidget> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio(
          value: 'Option 1',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
        const Text('Option 1'),
        Radio(
          value: 'Option 2',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
        const Text('Option 2'),
        Radio(
          value: 'Option 3',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
        const Text('Option 3'),
      ],
    );
  }
}
