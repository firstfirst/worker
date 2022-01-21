// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:workedclick/bloc/home/home_bloc.dart';

// class ChildA extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
//         return Center(
//           child: Column(
//             children: [
//               Text(_.read<HomeBloc>().count.toString()),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   // Navigate back to first route when tapped.
//                 },
//                 child: Text('Go back!'),
//               )
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
