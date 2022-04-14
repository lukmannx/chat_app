import 'package:chat_app/screen/chat_screen.dart';
import 'package:chat_app/screen/login_screen.dart';
import 'package:chat_app/screen/register_screen.dart';
import 'package:chat_app/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        RegisterScreen.id : (context) => const RegisterScreen(),
        LoginScreen.id : (context) => const LoginScreen(),
        ChatScreen.id : (context) => const ChatScreen(),
        WelcomeScreen.id : (context) => const WelcomeScreen(),
      },
    );
  }
}