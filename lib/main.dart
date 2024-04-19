import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/home.dart';
import 'package:provider_flutter/list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NumbersListProvider(),
        )
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
