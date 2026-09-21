import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _SummaryCard(
                title: 'Portfolio value',
                value: '\$128,450.00',
                accent: Colors.indigo,
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                    child: _SummaryCard(
                      title: 'Realized PnL',
                      value: '+\$8,210.00',
                      accent: Colors.green,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _SummaryCard(
                      title: 'Unrealized PnL',
                      value: '-\$620.40',
                      accent: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Assets',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const _PositionRow(symbol: 'BTC', position: '1.40', price: '\$84,600', pnl: '+12.4%'),
              const _PositionRow(symbol: 'ETH', position: '12.40', price: '\$31,800', pnl: '+6.8%'),
              const _PositionRow(symbol: 'USD', position: '12,050', price: '\$12,050', pnl: '0.0%'),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent trades',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View all')),
                ],
              ),
              const _TradeRow(type: 'BUY', symbol: 'BTC', amount: '\$60,000', time: '09:41'),
              const _TradeRow(type: 'SELL', symbol: 'ETH', amount: '\$12,100', time: 'Yesterday'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final Color accent;

  const _SummaryCard({
    required this.title,
    required this.value,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: accent.withOpacity(0.08),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.grey, fontSize: 13)),
            const SizedBox(height: 10),
            Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: accent)),
          ],
        ),
      ),
    );
  }
}

class _PositionRow extends StatelessWidget {
  final String symbol;
  final String position;
  final String price;
  final String pnl;

  const _PositionRow({
    required this.symbol,
    required this.position,
    required this.price,
    required this.pnl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(symbol, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Text(position, textAlign: TextAlign.center),
          ),
          Expanded(
            child: Text(price, textAlign: TextAlign.center),
          ),
          Expanded(
            child: Text(pnl, textAlign: TextAlign.right, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class _TradeRow extends StatelessWidget {
  final String type;
  final String symbol;
  final String amount;
  final String time;

  const _TradeRow({
    required this.type,
    required this.symbol,
    required this.amount,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final isBuy = type == 'BUY';
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isBuy ? Colors.green.withOpacity(0.12) : Colors.red.withOpacity(0.12),
        child: Text(type, style: TextStyle(color: isBuy ? Colors.green : Colors.red, fontSize: 10, fontWeight: FontWeight.bold)),
      ),
      title: Text(symbol),
      subtitle: Text(time),
      trailing: Text(amount, style: TextStyle(color: isBuy ? Colors.green : Colors.red, fontWeight: FontWeight.bold)),
    );
  }
}
