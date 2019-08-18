import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/c210d79ab18147dda465e7646064c33f.jpg'),
          alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 40.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(20.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                //borderRadius:BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 6),
                    color:Color.fromRGBO(23, 2, 200, 0.4),
                    blurRadius: 1.0,
                    spreadRadius: -3.0,              
                  ),
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(12, 255, 1, 0.8),
                    Color.fromRGBO(1, 1, 199, 0.8),

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,                  
                )
            ),
                
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'nihao',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _title = '将进酒';
  final String _author = '李白';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》————$_author。君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
