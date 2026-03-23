///Event screen handling reorder event
abstract class WatchlistScreenEvent {}

class LoadWatchlistScreen extends WatchlistScreenEvent {}

class ReorderWatchlistScreen extends WatchlistScreenEvent {
  final int oldIndex;
  final int newIndex;
  ReorderWatchlistScreen(this.oldIndex, this.newIndex);
}
