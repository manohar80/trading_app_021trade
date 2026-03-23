import 'package:flutter/material.dart';
import 'package:trading_app_021trade/features/watchlist/data/stock_data_model.dart';

///WatchDataWidget - Common widget with listview.We can use it in multiple
///screens.
class WatchDataWidget extends StatelessWidget {
  final StockDataModel stockData;

  const WatchDataWidget({super.key, required this.stockData});

  @override
  Widget build(BuildContext context) {
    final isPositive = stockData.change >= 0;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.drag_handle),
        title: Text(stockData.symbol),
        subtitle: Text(stockData.name),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("₹${stockData.price}"),
            Text(
              "${stockData.change}%",
              style: TextStyle(color: isPositive ? Colors.green : Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
