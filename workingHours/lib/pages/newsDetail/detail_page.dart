// 获取路由跳转的值
// import "package:flutter/material.dart";
// class NewsDetail extends StatelessWidget {
// final arguments;
//   NewsDetail({this.arguments});
//   @override
//   Widget build(BuildContext context) {
//   print("路由传递值");
//   print(arguments);
//     return Scaffold(
//       appBar: AppBar(
//           leading: IconButton(
//               icon:Icon(Icons.arrow_back),
//               onPressed: (){
//                 print('返回上一页');
//                 Navigator.pop(context);
//               },
//               ),
//             title: Text('详情'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../store/counter.dart';
import 'package:provider/provider.dart';
// class NewsDetail extends StatelessWidget {
//   final arguments;
//   NewsDetail({this.arguments});
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       create: (_) => MyModel(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('provider'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Builder(
//               builder: (context) {
//                 // 获取到provider提供出来的值
//                 MyModel _model = Provider.of<MyModel>(context);
//                 return Container(
//                     margin: const EdgeInsets.only(top: 20),
//                     width: MediaQuery.of(context).size.width,
//                     padding: const EdgeInsets.all(20),
//                     alignment: Alignment.center,
//                     color: Colors.lightBlueAccent,
//                     child: Text('当前是：${_model.counter}'));
//               },
//             ),
//             Consumer<MyModel>(
//                 // 获取到provider提供出来的值
//               builder: (context, model, child) {
//                 return Container(
//                   margin: const EdgeInsets.only(top: 20),
//                   width: MediaQuery.of(context).size.width,
//                   padding: const EdgeInsets.all(20),
//                   alignment: Alignment.center,
//                   color: Colors.lightGreen,
//                   child: Text(
//                     '${model.counter}',
//                   ),
//                 );
//               },
//             ),
//             Consumer<MyModel>(
//                // 获取到provider提供出来的值
//               builder: (context, model, child) {
//                 return FlatButton(
//                     color: Colors.tealAccent,
//                     onPressed:model.incrementCounter,
//                     child: Icon(Icons.add));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class NewsDetail extends StatelessWidget {
  final arguments;
  NewsDetail({this.arguments});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('provider'),
        ),
        body: Column(
          children: <Widget>[
            Builder(
              builder: (context) {
                MyModel _model = Provider.of<MyModel>(context);
                return Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    color: Colors.lightBlueAccent,
                    child: Text('当前是：${_model.counter}'));
              },
            ),
            Consumer<MyModel>(
              builder: (context, model, child) {
                return Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.lightGreen,
                  child: Text(
                    '${model.counter}',
                  ),
                );
              },
            ),
            Consumer<MyModel>(
              builder: (context, model, child) {
                return FlatButton(
                    color: Colors.tealAccent,
                    onPressed: model.incrementCounter,
                    child: Icon(Icons.add));
              },
            ),
          ],
        ),
      ),
    );
  }
}
