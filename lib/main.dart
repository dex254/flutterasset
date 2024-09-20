import 'package:flutter/material.dart';
import 'login_page.dart'; // Ensure you import your login page
import 'registration_page.dart'; // Ensure you import your registration page
import 'dashboard_page.dart'; // Ensure you import your dashboard page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DexApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Set the initial route to the login page
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        // Using a custom route for DashboardPage to pass parameters
        '/dashboard': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map;
          return DashboardPage(
            name: args['name'],
            email: args['email'],
          );
        },
      },
    );
  }
}
