import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/models/job-search-model.dart';
import 'package:workedclick/modules/job-description/screens/job-descriptoin.dart';

class JobDescriptionProvider extends StatelessWidget {
  final JobModel job;

  const JobDescriptionProvider({Key? key, required this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('ExampleProvider');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JobDescriptionRepository(job)),
      ],
      child: JobDescription(),
    );
  }
}

class JobDescriptionRepository with ChangeNotifier, DiagnosticableTreeMixin {
  final JobModel job;
  JobDescriptionRepository(this.job);
  //attribute
  String jobTitle = '';
  //get
  get getJobTitle => job.jobTitle;
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // properties.add(IntProperty('count', count));
  }
}
