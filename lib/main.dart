import 'screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes.dart';

void main() {
   runApp( //MyApp()
      const MaterialApp(
    initialRoute: HomeScreen.routeName,
        onGenerateRoute: Approute.onGenerrateRoute,
        debugShowCheckedModeBanner: false,
  )
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Zero To Unicorn',
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       onGenerateRoute: Approute.onGenerrateRoute,
//       initialRoute: HomeScreen.routeName,
//     );
//   }
// }
