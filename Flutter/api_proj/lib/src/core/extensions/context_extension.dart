import 'package:flutter/material.dart';

extension BuildExtension on BuildContext{
void push(dynamic route)=>Navigator.of(this).push(MaterialPageRoute(builder: (_)=>route));
}






// What's happening step by step:
// Extension:
// Extensions let you add new functionality to existing classes (like BuildContext) without modifying their original code.

// The push function:

// This function takes a route as its argument. The route here is a screen (or widget) that you want to navigate to.
// Inside the function, it uses Flutter's Navigator class to perform the navigation.
// Navigator.of(this):
// This finds the nearest Navigator for the current BuildContext. Think of the Navigator as a tool that manages which screen you’re currently on.

// MaterialPageRoute:
// This is a way to define a new screen (or route) in Flutter. It wraps your route (widget) so Flutter knows how to display it.

// Usage:
// With this extension, instead of writing a long block of code every time you want to navigate, you can just call context.push(MyNewScreen()).