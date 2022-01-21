import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workedclick/page/exam/count.dart';
import 'package:workedclick/page/exam/my-home-page.dart';

class ExamHome extends StatelessWidget {
  const ExamHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MyHomePageTest(),
    );
  }
}
