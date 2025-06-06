import 'package:flutter_riverpod/flutter_riverpod.dart';

class RefreshNotifier extends StateNotifier<int> {
  RefreshNotifier() : super(0);

  void refresh() {
    state = DateTime.now().millisecondsSinceEpoch;
  }
}

final refreshControllerProvider =
StateNotifierProvider<RefreshNotifier, int>((ref) => RefreshNotifier());