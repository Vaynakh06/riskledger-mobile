import 'package:flutter/material.dart';

import 'portfolio_screen.dart';

class RiskLedgerApp extends StatelessWidget {
  const RiskLedgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RiskLedger Mobile',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7C3AED),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF111114),
          foregroundColor: Colors.white,
        ),
      ),
      home: const PortfolioScreen(),
    );
  }
}
