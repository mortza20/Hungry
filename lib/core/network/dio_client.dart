import 'package:dio/dio.dart';

class DioClient {
final Dio _dio =Dio(
BaseOptions(
  baseUrl: "https://sonic-zdi0.onrender.com/api",
  headers: {"Content-Type":"application/json"}
)
);

DioClient (){
  _dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options,handler) {
        final token="mortza aldaly";
        if(token!= null&& token.isNotEmpty){
          options.headers["authorization"]="Bearer$token";
        }
return handler.next(options);

      }


    )
  );
}


Dio get dio =>_dio;

}