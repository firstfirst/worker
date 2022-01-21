import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/models/job-search-model.dart';
import 'package:workedclick/modules/example/screens/example-home.dart';
import 'package:workedclick/modules/job-description/providers/job-description-provider.dart';
import 'package:workedclick/modules/job-description/screens/job-descriptoin.dart';

class ExampleProvider extends StatelessWidget {
  const ExampleProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('ExampleProvider');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: ExampleHome(),
    );
  }
}

class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  //attribute
  bool _isLoading = false;
  int _count = 0;
  var _response = '';
  JobSearchModel? jobsModel;
  //get
  int get count => _count;
  get response => _response;
  bool get isloading => _isLoading;
  get jobs => jobsModel;
  void increment() {
    _count++;
    notifyListeners();
  }

  void waitLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void loadingSuccess() {
    _isLoading = false;
    notifyListeners();
  }

  void callapi() async {
    this.waitLoading();
    try {
      var res = await Dio().get('https://workedclick.co/api/v1/health');
      print('res success');
      print(res.data["message"]);
      // var body = jsonDecode(res.data);
      // print('object body : $body');
      this._response = res.data["message"];
      print('call success');
      notifyListeners();
      this.loadingSuccess();
    } catch (e) {
      print('error');
      print(e);
    }
  }

  void callapiSearch() async {
    this.waitLoading();
    try {
      final _data = {"key": "Dev"};

      var res = await Dio()
          .post('https://workedclick.co/api/v1/job-search/search', data: _data);
      print('res success');
      print(res.data["jobs"]);
      // print('object body : $body');
      this.jobsModel = JobSearchModel.fromJson(res.data);
      print('callapiSearch success');
      notifyListeners();
      this.loadingSuccess();
    } catch (e) {
      print('error');
      print(e);
    }
  }

  void switToDescPage(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              JobDescriptionProvider(job: this.jobsModel!.jobs[index])),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
    // properties.add(toString('jobsModel', jobsModel));
  }
}
