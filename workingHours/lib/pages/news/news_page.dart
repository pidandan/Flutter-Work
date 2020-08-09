import 'package:flutter/material.dart';
import './news_list.dart';
class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('消息')),
      body: Container(
        color: Colors.grey[200],
        child: NewsList(),
      ),
    );
  }
}
