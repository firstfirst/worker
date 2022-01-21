import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/providers/example-provider.dart';

class Job extends StatelessWidget {
  const Job({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        // physics: ClampingScrollPhysics(), // add this
        // shrinkWrap: true,

        itemCount: context.watch<Counter>().jobsModel != null
            ? context.watch<Counter>().jobsModel!.jobs.length
            : 0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                context.read<Counter>().switToDescPage(context, index);
              },
              child: Card(
                  elevation: 10,
                  color: Colors.amber[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 40,
                    child: Text(context
                        .watch<Counter>()
                        .jobsModel!
                        .jobs[index]
                        .jobTitle),
                  )));
        });
  }
}
