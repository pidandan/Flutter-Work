import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsList extends StatefulWidget {
  NewsList({Key key}) : super(key: key);

  @override
  _NewsListState createState() => _NewsListState();
  
}



class _NewsListState extends State<NewsList> {
  List newsList = [
    {'id': 0, 'news': '下午5点参加会议', 'type': 'notice', 'isNew': true},
    {'id': 1, 'news': '打卡成功2020-08-03 08:00', 'type': 'system', 'isNew': false},
    {
      'id': 2,
      'news': '王亮担任公司CEO，将于2029年上任。请各部门做好工作报告',
      'type': 'company',
      'isNew': true
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return _messageInfo(newsList[index],context);
        },
      ),
    );
  }

  Widget _messageInfo(item,context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          _leftIcon(item['type']),
          _rightInfo(item,context),
        ],
      ),
    );
  }

  // 左侧icon图标展示
  Widget _leftIcon(String type) {
    return Container(
      height: ScreenUtil().setHeight(160),
      width: ScreenUtil().setWidth(150),
      alignment: Alignment.center,
      child: type == 'notice'
          ? Icon(
              Icons.message,
              size: 30,
              color: Colors.greenAccent[200],
            )
          : type == 'system'
              ? Icon(
                  Icons.mail_outline,
                  size: 30,
                  color: Colors.blueAccent[200],
                )
              : Icon(
                  Icons.personal_video,
                  size: 30,
                  color: Colors.orangeAccent[200],
                ),
    );
  }

  // 右侧消息的展示布局
  Widget _rightInfo(item,context) {
    return InkWell(
      child: Container(
        height: ScreenUtil().setHeight(160),
        width: ScreenUtil().setWidth(600),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.grey[200]))),
        child: Column(
          children: <Widget>[
            _topTitle(item),
            Container(
              height: ScreenUtil().setHeight(70),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 2.0),
              child: Text(
                item['news'],
                style: TextStyle(fontSize: 16, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
      onTap: () => _newsDetail(context),
    );
  }

  // 消息标题头
  Widget _topTitle(item) {
    return Container(
      height: ScreenUtil().setHeight(80),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 2.0),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(520),
            child: Text(
              item['type'] == 'notice'
                  ? '订阅消息'
                  : item['type'] == 'system' ? '系统消息' : '公司消息',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
          ),
          item['isNew']
              ? Container(
                  child: Text(
                    'new',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.redAccent[200]),
                )
              : Container(),
        ],
      ),
    );
  }

  // 查看消息详情
  _newsDetail(context) {
    //  Navigator.of(context).pushNamed("news_detail", arguments: "你好详情页").then((value) => {});
      Navigator.pushNamed(context, '/news_detail',arguments: { "id":123 });
    //  Navigator.pushNamed(context, "news_detail");
  }
}
