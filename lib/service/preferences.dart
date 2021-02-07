import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';

const deviceIdKey = "device_id";
const userIdKey = "user_id";
const tokenKey = "token";
const nicknameKey = "nickname";
const avatarUrlKey = "avatar_url";
const phoneNumberKey = "phone_number";

const maxSYNKey = "max_syn";

SharedPreferences sharedPreferences;

Int64 getDeviceId() {
  return Int64(sharedPreferences.getInt(deviceIdKey));
}

Int64 getUserId() {
  return Int64(sharedPreferences.getInt(userIdKey));
}

String getToken() {
  return sharedPreferences.getString(tokenKey);
}

String getNickname() {
  return sharedPreferences.getString(nicknameKey);
}

String getAvatarUrl() {
  return sharedPreferences.getString(avatarUrlKey);
}

String getPhoneNumber() {
  return sharedPreferences.getString(phoneNumberKey);
}

Future<void> setMaxSYN(int maxSYN) async {
  return sharedPreferences.setInt("${getUserId()}_$maxSYNKey", maxSYN);
}

Int64 getMaxSYN() {
  return Int64(sharedPreferences.getInt("${getUserId()}_$maxSYNKey") ?? 0);
}
