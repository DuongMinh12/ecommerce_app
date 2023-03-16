import 'package:flutter/material.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({Key? key}) : super(key: key);
  static const String routeName = 'flashPage';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> FlashPage(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      // bottomNavigationBar: BottomAppBar(),
    );
  }
}
