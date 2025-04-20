import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabbar_proj/src/pages/car_page.dart';
import 'package:tabbar_proj/src/pages/flight_page.dart';
import 'package:tabbar_proj/src/pages/setting_page.dart';
import 'package:tabbar_proj/src/pages/transit_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<bool> _onBackPressed() async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Exit'),
          content: Text('Are you sure you want to exit ?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); //don't exit
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // yes proceed
              },
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Connects tab with tabbar and tabbarview and manages tab state
    return PopScope(
      canPop:
          false, //Don’t automatically allow popping this screen unless I say so in the callback
      //callback that runs when user presses the back button
      onPopInvokedWithResult: (didPop, result) async {
        //If Flutter already handled the back press (didPop is true), just stop here,
        //You don’t want to show a dialog or try to pop again.
        if (didPop) return;

        //This calls your confirmation dialog (AlertDialog).
        final bool shouldPop = await _onBackPressed();
        //make sure widget hasn't been removed and shouldpop only true if user pressed "exit"
        if (context.mounted && shouldPop) {
          SystemNavigator.pop(); // this closes the app
        }
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicatorWeight: 6,
              indicatorSize: TabBarIndicatorSize.tab,
              //Clickable top tabs
              tabs: [
                Tab(icon: Icon(Icons.flight)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          //Content shown for each tab
          body: TabBarView(
            children: [FlightPage(), TransitPage(), CarPage(), SettingPage()],
          ),
        ),
      ),
    );
  }
}
