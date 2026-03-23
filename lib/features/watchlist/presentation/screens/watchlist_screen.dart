import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app_021trade/core/constants.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc/watchlist_screen_bloc.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc'
    '/watchlist_screen_event.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc/watchlist_screen_state.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/widgets'
    '/watch_data_widget.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Constants.appTitle)),
      body: BlocBuilder<WatchlistScreenBloc, WatchlistScreenState>(
        builder: (context, state) {
          return ReorderableListView.builder(
            itemCount: state.stocksData.length,
            onReorder: (oldIndex, newIndex) {
              context.read<WatchlistScreenBloc>().add(
                ReorderWatchlistScreen(oldIndex, newIndex),
              );
            },
            itemBuilder: (context, index) {
              final stock = state.stocksData[index];

              return WatchDataWidget(
                key: ValueKey(stock.symbol),
                stockData: stock,
              );
            },
          );
        },
      ),
    );
  }
}
