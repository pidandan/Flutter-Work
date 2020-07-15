import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AttendanceHeader extends StatefulWidget {
  AttendanceHeader({Key key}) : super(key: key);

  @override
  _AttendanceHeaderState createState() => _AttendanceHeaderState();
}

class _AttendanceHeaderState extends State<AttendanceHeader> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _imageWidget(), 
        _nameWidget(), 
        _workTime()
        ],
    );
  }

  // 背景图片控件
  Widget _imageWidget() {
    return Container(
      height: ScreenUtil().setHeight(340),
      width: ScreenUtil().setWidth(750),
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.fill,
      ),
    );
  }

  // 公司名称
  Widget _nameWidget() {
    return Positioned(
        left: 10,
        top: 10,
        child: Container(
          child: Text(
            '精诚合作 共筑未来',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ));
  }

  
  // 上班时段
  Widget _workTime(){
    return Positioned(
      right: 10,
      bottom: 10,
      child: Container(
        child: Text(
          '工作时段：09:00~18:00',
          style: TextStyle(
             color: Colors.white60,
             fontSize: 20,
             fontWeight: FontWeight.w600
          ),
        ),
      )
      );
  }
  
  
  
}
