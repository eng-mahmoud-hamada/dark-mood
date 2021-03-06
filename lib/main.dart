import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

void main() {
  runApp(DarkMood());
}

class DarkMood extends StatefulWidget {
  @override
  _DarkMoodState createState() => _DarkMoodState();
}

class _DarkMoodState extends State<DarkMood> {
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: const Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
          appBar: AppBar(
            title: Text("DARK MOOD"),
            actions: <Widget>[
              DayNightSwitcher(
                isDarkModeEnabled: isDarkModeEnabled,
                onStateChanged: (isDarkModeEnabled) {
                  setState(() {
                    this.isDarkModeEnabled = isDarkModeEnabled;
                  });
                },
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            )
    )
    )
    )
    ;
  }
}
