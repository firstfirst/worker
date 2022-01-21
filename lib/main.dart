import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workedclick/modules/example/providers/example-provider.dart';
import 'package:workedclick/page/exam/count.dart';
import 'package:workedclick/page/exam/exam-home.dart';
import 'package:workedclick/page/exam/example.dart';
import 'package:workedclick/page/exam/my-home-page.dart';
import 'package:workedclick/page/home/home-panel.dart';

// class SimpleBlocObserver extends BlocObserver {
//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     print(event);
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     print(transition);
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     print(error);
//     super.onError(bloc, error, stackTrace);
//   }
// }

void main() {
  // Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(home: HomePanel());
    // return MaterialApp(
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => const ExampleProvider(),
    //   },
    // );
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            home: ExampleProvider(),
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.apartment_outlined,
          size: MediaQuery.of(context).size.width * 0.785,
        ),
      ),
    );
  }
}
