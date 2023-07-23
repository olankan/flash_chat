import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
 // Import the Firebase Core package
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() 
// async 
{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(); 
  // Initialize Firebase
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      // enabled: false,
      builder: (context) => FlashChat(), // Wrap your app
    ),
  );
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
