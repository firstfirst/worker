// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:workedclick/bloc/home/home_bloc.dart';
// import 'package:workedclick/page/home/child/child-a.dart';
// import 'package:workedclick/page/home/test.dart';

// class CounterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print("CounterPage");
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter')),
//       body: BlocBuilder<HomeBloc, HomeState>(
//         builder: (_, state) {
//           // print('state : $state');
//           // count = _.read<ThemeCubit>().count;
//           // print("count : $count");
//           // if(state is IncrementState){
//           //  count++;
//           //  print("count : $count");
//           //  _.read<ThemeCubit>().setCount(count);
//           //  _.read<HomeBloc>().add(StopEvent());
//           // }
//           return _.read<HomeBloc>().state is LoadingState
//               ? Center(
//                   child: CircularProgressIndicator(
//                     strokeWidth: 2,
//                   ),
//                 )
//               : Column(
//                   children: [
//                     Center(
//                       child: Text('${_.read<HomeBloc>().count}',
//                           style: Theme.of(context).textTheme.headline1),
//                     ),
//                     Center(
//                       child: Text('${_.read<HomeBloc>().response}',
//                           style: TextStyle(fontSize: 14)),
//                     )
//                   ],
//                 );
//         },
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               heroTag: "btn1",
//               child: const Icon(Icons.add),
//               onPressed: () => context.read<HomeBloc>().add(IncrementEvent()),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               heroTag: "btn2",
//               child: const Icon(Icons.brightness_6),
//               onPressed: () => context.read<ThemeCubit>().toggleTheme(),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               heroTag: "btn3",
//               backgroundColor: Colors.green,
//               child: const Icon(Icons.skip_next),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ChildA()),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               heroTag: "btn4",
//               backgroundColor: Colors.red,
//               child: const Icon(Icons.error),
//               onPressed: () => context.read<HomeBloc>().add(CallApiEvent()),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
