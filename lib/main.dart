import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/widget_list_page.dart';
import 'screens/widget_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Explain App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/widget_list': (context) => const WidgetListPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/widget_detail') {
          final widgetName = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => WidgetDetailPage(widgetName: widgetName),
          );
        }
        return null;
      },
    );
  }
}
