import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app_021trade/features/watchlist/presentation/bloc/watchlist_screen_event.dart';

import 'core/app_theme.dart';
import 'features/watchlist/presentation/bloc/watchlist_screen_bloc.dart';
import 'features/watchlist/presentation/screens/watchlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: BlocProvider(
        create: (_) => WatchlistScreenBloc()..add(LoadWatchlistScreen()),
        child: const WatchlistScreen(),
      ),
    );
  }
}
