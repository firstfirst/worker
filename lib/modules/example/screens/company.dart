import 'package:workedclick/core/shared-provider.dart';

class Company extends StatelessWidget {
  const Company({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                width: 150,
                color: Colors.amber[(index + 1) * 100],
                child: Center(child: Text('Entry ${index}')),
              );
            }));
    // (
    //   scrollDirection: Axis.horizontal,
    //   children: List.generate(5, (index) => Text('data')),
    // );
  }
}
