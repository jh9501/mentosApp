import 'package:flutter/material.dart';
import 'package:mentos/page/login_page.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  runApp(
    MaterialApp(
        home: login_page()
    ),
  );
}