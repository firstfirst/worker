// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Example extends StatefulWidget {
//   const Example({Key? key, required this.child}) : super(key: key);
//   final Widget child;
//   @override
//   _ExampleState createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   late int _count;

//   void increment() {
//     setState(() {
//       _count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Provider.value(
//       value: _count,
//       child: Provider.value(
//         value: this,
//         child: widget.child,
//       ),
//     );
//   }
// }
