import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreenNotifier extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  set pageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }
}

// ref is provided by Riverpod
final mainScreenNotifierProvider = ChangeNotifierProvider<MainScreenNotifier>((ref) {
  return MainScreenNotifier();
});
