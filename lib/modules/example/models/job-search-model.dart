class JobSearchModel {
  final List<JobModel> jobs;
  const JobSearchModel(this.jobs);
  JobSearchModel.fromJson(Map<String, dynamic> json)
      : jobs = JobModel.parseList(json['jobs']);
}

class JobModel {
  final String jobTitle;
  const JobModel(this.jobTitle);
  JobModel.fromJson(Map<String, dynamic> json) : jobTitle = json['JobTitle'];
  static List<JobModel> parseList(dynamic responseBody) {
    return responseBody
        .map<JobModel>((json) => JobModel.fromJson(json))
        .toList();
  }
}
