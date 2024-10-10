import 'package:code_box/code_box.dart';
import 'package:code_box/src/CodeBoxWidgetModifier.dart';
import 'package:flutter/material.dart';

final class TestWidget extends StatelessWidget {
  TestWidget({super.key, required this.injected});

  // MARK: Properties

  List injected;

  // MARK: build

  @override
  Widget build(BuildContext context) {
    return Column(
            children: injected
                // .unique()

                /// we only want each entry once
                /// just want to show the strings from the injected list
                .map((e) {
                  (e != String) ? null : Text(e.id);
                })

                /// make the map to list
                .toList()

                /// and flat map it to the wanted list type
                .flatMap())
        .padding(top: 15)
        .safeArea();
  }
}
