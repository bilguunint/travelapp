import 'dart:async';

enum NavBarItem { EXPLORE, MYTRIPS, FAVOURITE, PROFILE }

class BottomNavBarBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.EXPLORE;

  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.EXPLORE);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.MYTRIPS);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.FAVOURITE);
        break;
      case 3:
        _navBarController.sink.add(NavBarItem.PROFILE);
        break;
    }
  }

  close() {
    _navBarController?.close();
  }
}