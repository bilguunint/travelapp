import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel/blocs/bottom_bloc.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:travel/pages/explore.dart';
import 'package:travel/styles/theme.dart' as Style;

class HomeScreen extends StatefulWidget {
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BottomNavBarBloc _bottomNavBarBloc;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _bottomNavBarBloc = BottomNavBarBloc();
  }

  @override
  void dispose() {
    _bottomNavBarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.background,
      key: _scaffoldKey,
      drawer: Drawer(),
     appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                icon: Icon(
                  EvaIcons.menu2Outline
                ),
                color: Colors.black,
                
                onPressed: () {
               
                },
              ),
            title: new Text(
        "Travel App", 
        style: TextStyle(
                  fontSize: Theme.of(context).platform == TargetPlatform.iOS
                      ? 17.0
                      : 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
      ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  EvaIcons.searchOutline,
                ),
                color: Colors.black,
              
                onPressed: () {
               
                },
              ),
            ],
          ),
        ),
      body: StreamBuilder<NavBarItem>(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.EXPLORE:
              return Explore();
            case NavBarItem.MYTRIPS:
              return _myTrips();
            case NavBarItem.FAVOURITE:
              return _favourite();
            case NavBarItem.PROFILE:
              return _profile();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            elevation: 10.0,
            unselectedFontSize: 10,
            selectedFontSize: 10,
            fixedColor: Style.Colors.mainColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: snapshot.data.index,
            onTap: _bottomNavBarBloc.pickItem,
            items: [
              BottomNavigationBarItem(
                title: Text('Explore', style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                icon: Icon(EvaIcons.compassOutline),
                activeIcon: Icon(EvaIcons.compass),
              ),
              BottomNavigationBarItem(
                title: Text('My Trips', style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                icon: Icon(EvaIcons.calendarOutline),
                activeIcon: Icon(EvaIcons.calendar),
              ),
              BottomNavigationBarItem(
                title: Text('Favourite', style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                icon: Icon(EvaIcons.bookmarkOutline),
                activeIcon: Icon(EvaIcons.bookmark),
              ),
              BottomNavigationBarItem(
                title: Text('Profile', style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                icon: Icon(EvaIcons.clipboardOutline),
                activeIcon: Icon(EvaIcons.clipboard),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _explore() {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.green,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _myTrips() {
    return Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.red,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _favourite() {
    return Center(
      child: Text(
        'Settings Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blue,
          fontSize: 25.0,
        ),
      ),
    );
  }
  Widget _profile() {
    return Center(
      child: Text(
        'Settings Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blue,
          fontSize: 25.0,
        ),
      ),
    );
  }
}