import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AttendanceHeader extends StatelessWidget {
  const AttendanceHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _imageWidget(),
        _nameWidget(),
      ],
    );
  }

  // 背景图片控件
  Widget _imageWidget(){
    return Container(
      height: ScreenUtil().setHeight(400),
      width: ScreenUtil().setWidth(750),
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.fill,
      ),
    );
  }

  // 公司名称
  Widget _nameWidget(){
    return Positioned(
      left: 10,
      top:10,
      child: Container(
        child: Text(
          '啄木鸟科技有限公司',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }

}