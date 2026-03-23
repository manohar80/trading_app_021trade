import 'package:equatable/equatable.dart';

import '../../data/stock_data_model.dart';

class WatchlistScreenState extends Equatable {
  final List<StockDataModel> stocksData;

  const WatchlistScreenState({required this.stocksData});

  @override
  List<Object?> get props => [stocksData];

  WatchlistScreenState copyWith({List<StockDataModel>? stocksData}) {
    return WatchlistScreenState(stocksData: stocksData ?? this.stocksData);
  }
}
