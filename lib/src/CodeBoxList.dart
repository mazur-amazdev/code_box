import 'package:code_box/code_box.dart';

extension CodeBoxList on List {
  /// flatten a list of any type to wanted type of t
  /// e.g. wanted is List<String>
  /// given list is ["test", 2, ["test2", 3], 4.5]
  /// it'll return ["test", "test2"]
  List<T> flatMap<T>() {
    // create internal list to be corresponding return type
    List<T> internalList = [];
    // iterate through given list with non final type
    for (var element in this) {
      /// if the given element is a list of List<T>
      /// we add all elements
      if (element is List<T>) {
        internalList.addAll(element);
      }

      /// if the element is a list of non final type
      /// we start a recursion on the list to flatmap it to according type
      else if (element is List) {
        internalList.addAll(element.flatMap());
      }

      /// if element is type T simply add
      else if (element is T) {
        internalList.add(element);
      }
    }

    /// return the internal list
    return internalList;
  }
}

extension IdentifiableCodeBoxList<T extends Identifiable> on List<T> {
  /// returns the uniqued list
  List<T> unique() {
    /// internal uniqued list
    Set<T> uniqued = {};

    /// iterate through this
    for (var element in this) {
      /// if uniqued doesnt contain add element
      if (uniqued.firstIdentifiedOrNull(element.id) == null) {
        uniqued.add(element);
      }
    }

    /// return the uniqued list
    return uniqued.toList();
  }
}
