import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app_021trade/features/watchlist/data/stock_data_model.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc/watchlist_screen_event.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc/watchlist_screen_state.dart';

class WatchlistScreenBloc
    extends Bloc<WatchlistScreenEvent, WatchlistScreenState> {
  WatchlistScreenBloc() : super(WatchlistScreenState(stocksData: [])) {
    on<LoadWatchlistScreen>(_onLoad);
    on<ReorderWatchlistScreen>(_onReorder);
  }

  void _onLoad(LoadWatchlistScreen event, Emitter<WatchlistScreenState> emit) {
    final sampleStocks = [
      StockDataModel(
        symbol: "TCS",
        name: "Tata Consultancy",
        price: 3500,
        change: 1.2,
      ),
      StockDataModel(
        symbol: "INFY",
        name: "Infosys",
        price: 1500,
        change: -0.5,
      ),
      StockDataModel(
        symbol: "RELIANCE",
        name: "Reliance",
        price: 2800,
        change: 0.8,
      ),
      StockDataModel(
        symbol: "HDFC",
        name: "HDFC Bank",
        price: 1700,
        change: -1.1,
      ),
    ];

    emit(state.copyWith(stocksData: sampleStocks));
  }

  void _onReorder(
    ReorderWatchlistScreen event,
    Emitter<WatchlistScreenState> emit,
  ) {
    final updated = List<StockDataModel>.from(state.stocksData);

    int newIndex = event.newIndex;

    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = updated.removeAt(event.oldIndex);
    updated.insert(newIndex, item);

    emit(state.copyWith(stocksData: updated));
  }
}
