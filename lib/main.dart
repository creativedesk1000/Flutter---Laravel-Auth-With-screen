import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_design/screen/sign_in.dart';
import 'package:app_design/screen/signup_up.dart';
import 'package:app_design/screen/home_screen.dart';
import 'state/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Medical App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SignInScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}