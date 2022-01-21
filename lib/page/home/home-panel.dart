// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:workedclick/bloc/home/home_bloc.dart';
// import 'package:workedclick/page/home/counter-page.dart';
// import 'package:workedclick/page/home/test.dart';

// class HomePanel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print("HomePanel");
// //    return Scaffold(
// //      body: SafeArea(child: Center(child: RichText(text: TextSpan(
// //          style: TextStyle(color: Colors.red),
// //          children: <TextSpan>[
// //        TextSpan(text: "hello "),
// //        TextSpan(text: "world",style: TextStyle(fontWeight: FontWeight.bold))
// //      ]),)))
// //    );
//     return BlocProvider(
//       create: (_) => ThemeCubit(),
//       child: BlocBuilder<ThemeCubit, ThemeData>(
//         builder: (_, theme) {
//           return MaterialApp(
//             theme: theme,
//             home: BlocProvider(
//               create: (_) => HomeBloc(InitialHomeState()),
//               child: CounterPage(),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
