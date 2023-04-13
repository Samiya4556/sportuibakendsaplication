import 'package:bakenss/models/profile_models.dart';
import 'package:bakenss/models/status_models.dart';
import 'package:bakenss/models/history_models.dart';
import 'package:dio/dio.dart';


class StatusService {
  static Future<dynamic> getProfile() async {
    try {
      Response response = await Dio(BaseOptions(
        validateStatus: (status) {
          if (status! >= 100 && status <= 599) {
            return true;
          } else {
            return false;
          }
        },
      )).get("http://192.168.42.35:3000/home/profile");
      if (response.statusCode == 200) {
        return ProfileModels.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }

  static Future<dynamic> getStatus() async {
    try {
      Response response = await Dio(BaseOptions(
        validateStatus: (status) {
          if (status! >= 100 && status <= 599) {
            return true;
          } else {
            return false;
          }
        },
      )).get("http://192.168.42.35:3000/home/status");
      if (response.statusCode == 200) {
        return StatusModels.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }

  static Future<dynamic> getHistory() async {
    try {
      Response response = await Dio(BaseOptions(
        validateStatus: (status) {
          if (status! >= 100 && status <= 599) {
            return true;
          } else {
            return false;
          }
        },
      )).get("http://192.168.42.35:3000/home/history");
      if (response.statusCode == 200) {
        return HistoryModels.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
