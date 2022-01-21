import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/providers/example-provider.dart';
import 'package:workedclick/modules/example/screens/company.dart';
import 'package:workedclick/modules/example/screens/count.dart';
import 'package:workedclick/modules/example/screens/job.dart';
import 'package:workedclick/modules/example/screens/text-call-api.dart';

class ExampleHome extends StatelessWidget {
  const ExampleHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Worked Click')),
      ),
      body: context.watch<Counter>().isloading
          ? Center(child: CircularProgressIndicator(strokeWidth: 2))
          : Column(
              // shrinkWrap: true,
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Align(alignment: Alignment.centerLeft, child: Text('Company')),
                Company(),
                Align(alignment: Alignment.centerLeft, child: Text('job')),
                // Job(),
                Expanded(child: Job()),
                Text('You have pushed the button this many times:'),
                Count(),
                TextCallApi()
              ],
            ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            key: const Key('increment_floatingActionButton1'),

            /// Calls `context.read` instead of `context.watch` so that it does not rebuild
            /// when [Counter] changes.
            onPressed: () => context.read<Counter>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            key: const Key('increment_floatingActionButton2'),
            onPressed: () => context.read<Counter>().callapiSearch(),
            tooltip: 'call',
            child: const Icon(Icons.call),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          // Text('data'),
          Expanded(
              flex: 1, child: Container(height: 20, color: Colors.orange[50])),
          Expanded(
              flex: 1, child: Container(height: 20, color: Colors.orange[100])),
          Expanded(
              flex: 1, child: Container(height: 20, color: Colors.blue[300])),
          Expanded(
              flex: 1, child: Container(height: 20, color: Colors.orange[200])),
          Expanded(
              flex: 1, child: Container(height: 20, color: Colors.orange[300])),
        ],
      ),
    );
  }
}
