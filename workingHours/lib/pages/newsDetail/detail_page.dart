import "package:flutter/material.dart";
class NewsDetail extends StatelessWidget {
final arguments;
  NewsDetail({this.arguments});
  


  @override
  Widget build(BuildContext context) {
  print("路由传递值");
  print(arguments);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                print('返回上一页');
                Navigator.pop(context);
              },
              ),
            title: Text('详情'),
      ),
    );
  }
}