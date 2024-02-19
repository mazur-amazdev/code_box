# Code Box 

Code Box is a growing collection of useful code snippets for flutter and/or dart. Feel free to contribute by yourself.

# Current Features

## List 

### flatMap
```dart
import 'package:code_box/code_box.dart';

/// for example youve got a column with conditional build
Widget build(BuildContext context) {
    return Column(
        children: [
            (text != null) ? Text("test") : null,
            Text("next Line"),
            (secondText != null) ? Text("second Text") : null
        ] /// usually you would be told that
        /// you cant build the children like that because null is not a type of widget
        /// with flat map you can call
        .flatMap() /// the magic happens and the conditional build starts :)   
    );
}
```

### unique
```dart  
    final list = ["test", "test", "test1", "test2", "test4", "test1", "test2"];
    final List<String> uniqued = list.unique(); /// magic happens and the list is uniqued by its type
```

## Widget Modifier

### padding & scrollbar & safearea 

basic features holding the normal initializer from those base widgets.

```dart
Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
                Text("test"),
                Text("test2")
            ]
        ).padding(left: 15, right: 15, bottom: 5)
        .safeArea()
        // personal opinion but long build blocs with paddings get more readable
        // same usage with safe area and scrollbar
    );
}
```