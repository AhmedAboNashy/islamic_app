import 'package:flutter/material.dart';
class radio extends StatelessWidget {
  const radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(transformAlignment: Alignment.center,
      color: Colors.green, child: Text('Radio',style: TextStyle(color:Colors.white,fontSize: 40),),
    );
  }
}
