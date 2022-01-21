import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/providers/example-provider.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
        '${context.watch<Counter>().count}',
        // key: const Key('counterState'),
        style: Theme.of(context).textTheme.headline4);
  }
}
