import 'package:code_box/src/CodeBoxIdentifiable.dart';

/// better check on one single wanted element
extension CodeBoxSet<T extends Identifiable> on Set<T> {
  T? firstIdentifiedOrNull(String id) {
    if (any((test) => test.id == id)) {
      return firstWhere((test) => test.id == id);
    } else {
      return null;
    }
  }
}
