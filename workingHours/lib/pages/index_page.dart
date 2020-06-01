import 'package:flutter/material.dart';
import './attendance/attendance_page.dart';
import './mine/mine_page.dart';
import './news/news_page.dart';
import './work/work_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../store/attendance_provider.dart';
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 四个底部按钮
  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.fingerprint),
      title: Text('考勤'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.desktop_mac),
      title: Text('工作'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mail_outline),
      title: Text('消息'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_add),
      title: Text('我的'),
    ),
  ];

  // 四个功能块
  final List<Widget> tabBodies = [
    AttendancePage(),
    MinePage(),
    NewsPage(),
    WorkPage()
  ];

  // 默认底部选中的页面下标
  int selectIndex = 0;
  // 默认选中的功能块
  var defaultTerm;

  @override
  void initState() {
    defaultTerm = tabBodies[selectIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
          items: bottomItems,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectIndex,
          onTap: (index){
            setState(() {
              selectIndex = index;
              defaultTerm = tabBodies[index];
            });
             Provider.of<AttendanceProvider>(context, listen: false).getNowTimeInfo();
          },
        ),
      body: IndexedStack(
        index: selectIndex,
        children: tabBodies,
      ),
    );
  }
}
