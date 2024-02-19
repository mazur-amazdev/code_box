import 'package:flutter_test/flutter_test.dart';
import 'package:code_box/code_box.dart';

void main() {
  test('check if the list can be flatmapped', () {
    final list = [
      null,
      "test",
      null,
      "test1",
      "test2",
      null,
      ["test3", "test4", 5]
    ];
    final flatmapped = list.flatMap<String>();

    expect(flatmapped, ["test", "test1", "test2", "test3", "test4"]);
  });
  test('check if the list could be uniqued by its type', () {
    final list = ["test", "test", "test1", "test2", "test4", "test1", "test2"];
    final List<String> uniqued = list.unique();
    expect(uniqued, ["test", "test1", "test2", "test4"]);
  });
}
