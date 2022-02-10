import 'package:api_callig3/HomeScreen/BottomNavBar/bottomnavbar1.dart';
import 'package:api_callig3/HomeScreen/BottomNavBar/homePage.dart';
import 'package:api_callig3/Login%20Page/login.dart';
import 'package:api_callig3/Widgets/filterProdect.dart';
import 'package:api_callig3/Widgets/paymentScreen.dart';
import 'package:api_callig3/Widgets/profile.dart';
import 'package:api_callig3/Widgets/sceccessfulpage.dart';
import 'package:api_callig3/provider/viewLogicController.dart';
import 'package:api_callig3/reviewCart/cartReview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HomeScreen/BottomNavBar/BottomNavBar4.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAg5xCtdedcycNrZDL3GEFRtnifaurxT2U",
          // Your apiKey
          appId: "1:832403426429:android:2dfd83052612c09c70f514", // Your appId
          messagingSenderId: "832403426429", // Your messagingSenderId
          projectId: "shopping-app-cb97e"));
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ViewLogicModel())],
    child: MaterialApp(
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'rrr', primarySwatch: Colors.blue),
      title: 'Easy Shopping',
      home: BottomNavBar1(),
      routes: {
        '/home': (context) => Bottomnav(),
        '/login': (context) => LoginPage(),
        '/filter': (context) => FilterPage(),
        '/payment': (context) => PaymentScreen(),
        '/paymentsuccess': (context) => PaymeentsuccessPage(),
        '\profile': (context) => ProfilePage(),
        '\reviewcart': (context) => CartReview(),
        '\whistlist': (context) => BottomNavBar4(),
        '\Homepahe': (context) => BottomNavBar1(),
        '\filterpagr': (context) => FilterPage()
      },
    ),
  ));
}


