import 'package:flutter/material.dart';
import 'screens/pwd_list_page.dart';

void main() {
  runApp(const PwdRegistryApp());
}

class PwdRegistryApp extends StatelessWidget {
  const PwdRegistryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PWD Registry',
      theme: ThemeData(useMaterial3: true),
      home: const PwdListPage(),
    );
  }
}
