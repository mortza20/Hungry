//هنا راح نجمع كل الفكشن الخاصات بالاوث مثلا تسجيل تسجيل دخول تسجيل خروج ذني الشغلات يعني لازم يكونن هنا علمود بعدين اي خلل يصير نصلح من هذا الفايل

import 'package:dio/dio.dart';
import 'package:dontknow_jus_test/core/network/api_error.dart';
import 'package:dontknow_jus_test/core/network/api_exceptions.dart';
import 'package:dontknow_jus_test/core/network/api_service.dart';
import 'package:dontknow_jus_test/core/utils/pref_helper.dart';
import 'package:dontknow_jus_test/features/auth/data/user_model.dart';

class AuthRepo {
  ApiService apiService = ApiService();
  // Login
  Future<UserModel?> login(String email, String password) async {
    try {
      final response = await apiService.post("/login", {
        "email": email,
        "password": password,
      });
      final user = UserModel.fromjson(response["data"]);
      if (user.token != null) {
        await PrefHelper.saveToken(user.token!);
      }
      return user;
    } on DioException catch (e) {
      throw ApiExceptions.handleError(e);
    } catch (e) {
      throw ApiError(message: e.toString());
    }
  }
  //register

  //Get profile data

  //Update profile data

  //Logout
}
