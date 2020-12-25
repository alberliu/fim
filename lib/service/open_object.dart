import 'package:fixnum/fixnum.dart';

class OpenedObject {
  static Int64 openedObjectType;
  static Int64 openedObjectId;

  static bool isOpened(int objectType, int objectId) {
    if (openedObjectType == Int64(objectType) &&
        openedObjectId == Int64(objectId)) {
      return true;
    }
    return false;
  }

  static void open(Int64 objectType, Int64 objectId) {
    openedObjectType = objectType;
    openedObjectId = objectId;
  }

  static void close() {
    openedObjectType = null;
    openedObjectId = null;
  }
}
