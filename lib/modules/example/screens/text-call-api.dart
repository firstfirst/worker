import 'package:workedclick/core/shared-provider.dart';
import 'package:workedclick/modules/example/providers/example-provider.dart';

class TextCallApi extends StatelessWidget {
  const TextCallApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(context.watch<Counter>().response);
  }
}
