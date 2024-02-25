import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_10/bloc/profile_info_bloc.dart';
import 'package:hw_10/screens/profile_page.dart';
import 'package:hw_10/utils/setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileInfoBloc(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: ProfilePage()),
    );
  }
}
