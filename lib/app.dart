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
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      home: const PortfolioScreen(),
    );
  }
}
