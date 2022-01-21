import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/job-description/providers/job-description-provider.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Worked Click')),
        ),
        body: Center(
            child:
                Text(context.watch<JobDescriptionRepository>().job.jobTitle)));
  }
}
