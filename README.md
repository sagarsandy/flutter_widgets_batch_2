# Flutter: Working with widgets batch two
### App Bar
App bar widget comes inside a scaffold widget, it has various properties, most commonly used are
[![Screenshot-2021-01-29-at-12-38-33-PM.png](https://i.postimg.cc/gr9Jbsz7/Screenshot-2021-01-29-at-12-38-33-PM.png)](https://postimg.cc/rRJcSStG)
1. title: Which takes a text widget as input and will display the title of appbar
2. leading: Which takes any kind of widget as input, mostly people use icon buttons here
3. actions: Which takes multiple widgets as children, mostly people use icon buttons here
4. backgroundColor: Which takes color as input and determines the background color of appbar
5. centerTitle: Which take bool value as input and will determine the placement of appbar title
6. elevation: Is a z-index input and determines the elevation of appbar with respect to body widget
7. leadingWidth: Takes double as input and determines width of leading widget
8. primary: Takes bool as input and by default it is true, if it false, then appbar becomes a normal widget and starts from top as a normal container widget for ex.
9. flexibleSpace: Which takes a widget as input, and this works as one of the stack widget to appbar, this will also render above the appbar in same location from top left. see "Hello world" text for better understanding.

### Bottom Navigation Bar
[![Screenshot-2021-01-29-at-1-56-08-PM.png](https://i.postimg.cc/C5Z0bGcJ/Screenshot-2021-01-29-at-1-56-08-PM.png)](https://postimg.cc/fSh1N9n0)

This will take any widget as input, mostly used for tab based applications. How ever if you want to place a widget at the bottom of screen and it needs to present every time irrespective of scroll, then you can use this widget. Most used widget for this is; BottomNavigationBar widget, which will have items property and will take more than 2 BottomNavigationBarItem widgets as input, and basically works like a tab bar. Please check the code once. As this is works like a tab bar, we will have different properties like, selected item color, unselected item color, selected label font etc..

### BottomSheet
1. [![Screenshot-2021-01-29-at-3-19-53-PM.png](https://i.postimg.cc/fL8P5fZG/Screenshot-2021-01-29-at-3-19-53-PM.png)](https://postimg.cc/WFJS1rd8)
2. [![Screenshot-2021-01-29-at-3-20-08-PM.png](https://i.postimg.cc/K87JJDD0/Screenshot-2021-01-29-at-3-20-08-PM.png)](https://postimg.cc/jD5HjN9f)

Which can be used to show some info, or to perform some user interaction. There are two types of bottom sheets, one fo them is comes directly from the bottom of the screen. This will hide anything behind this widget. Another one is scaffoldStateShowBottomSheet, which comes after the bottom navigation bar. Means, it will comes above the bottom navigation bar.
Basically showModalBottomSheet takes a builder widget, means we can render any type of widgets in that. Which can be buttons, forms, etc..

### ButtonBar
As the name itself indicates, this is a bar of buttons widget. Works like a list of buttons, the default alignment is row type, once the space is runs out, then it works like column, laying out the widgets vertically.

--
 

# Flutter Info:
## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
