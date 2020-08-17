import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MineOperate extends StatefulWidget {
  MineOperate({Key key}) : super(key: key);

  @override
  _MineOperateState createState() => _MineOperateState();
}

class _MineOperateState extends State<MineOperate> {
  List mineItemList = [];
  @override
  void initState() {
    super.initState();
    mineItemList = [
      {"id": 0, "item": "推荐服务", "type": 0},
      {"id": 1, "item": "设置", "type": 1}
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: mineItemList.length,
        itemBuilder: (context, index) {
          return _itemInfo(mineItemList[index]);
        },
      ),
    );
  }

  Widget _itemInfo(item) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          _leftIcon(item['type']),
          _rightInfo(item),
        ],
      ),
    );
  }

  // 左侧icon图标展示
  Widget _leftIcon(int type) {
    return Container(
        height: ScreenUtil().setHeight(120),
        width: ScreenUtil().setWidth(120),
        alignment: Alignment.center,
        child: Icon(type == 0 ? Icons.airplay : Icons.backspace));
  }

  // 右侧消息的展示布局
  Widget _rightInfo(item) {
    return Container(
        height: ScreenUtil().setHeight(120),
        width: ScreenUtil().setWidth(630),
        child: Text(
           item['item'],
           style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        );
        // decoration: BoxDecoration(
        //     border:
        //         Border(bottom: BorderSide(width: 1, color: Colors.grey[200]))),
        // child: Container(
        //   height: ScreenUtil().setHeight(70),
        //   alignment: Alignment.topLeft,
        //   child: Text(
        //     item['item'],
        //     style: TextStyle(fontSize: 16, color: Colors.grey),
        //     overflow: TextOverflow.ellipsis,
        //     maxLines: 1,
        //   ),
        //  )
        // );
  }
}
