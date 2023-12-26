import 'dart:developer';
// import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:journo_blog/data/data_sources/remotes/api_constant.dart';
import 'package:journo_blog/data/data_sources/remotes/api_exception.dart';
import 'package:journo_blog/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'api_endpoint_urls.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstat.mainUrl);
    dio = Dio(baseOptions);
  }

// GET Request

  Future<Response> getRequests({required String path}) async {
    try {
      debugPrint("  #####: API Request:###");
      debugPrint(" ${baseOptions.baseUrl + path}");
      var response = await dio.get(path);
      debugPrint("  #####: API Respond Status Code :###");
      debugPrint(" ## Status${response.statusCode}");
      debugPrint("  #####: API Respod Data :###");

      log("Data : ${response.data}");
      debugPrint(" ## Data${response.data}");
      debugPrint("  #####:  API Data Loaded ... Completed :###");

      return response;
    } on DioException catch (e) {
      // debugPrint(e.response?.headers.toString() ?? "Response is null");

      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint("##request options :${e.requestOptions}");
        debugPrint(" ##Error Message :${e.message}");
        throw ApiException(message: e.message);
      }
    }
  }

  // post Request
  Future<Response> postRequests({required String path, body}) async {
    // Map body = {"title": "newdellbag", "slug": "newdellbag"};
    // Map body ;

    var token = Utils.getToken();
    final options = Options(headers: {"Authorization": "Bearer $token"});
    try {
      debugPrint("  #####: API Request 1:###");
      debugPrint(" Manish@@ ${baseOptions.baseUrl + path}");
      debugPrint("  ###Body::  ### $body ");

      var response = await dio.post(path, data: body, options: options);
      debugPrint("  ###  API Response Status:: ###  ${response.statusCode}");
      Vx.log(response.data);

      debugPrint(" ###   API Response Data ::### ${response.data}");
      return response;
    } on DioException catch (e) {
      debugPrint(e.response?.headers.toString() ?? "Response is null");

      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint("  #####: data :###");
        debugPrint("##request options :${e.requestOptions}");
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint("##request options :${e.requestOptions}");
        debugPrint(" ##Error Message :${e.message}");
        throw ApiException(message: e.message);
      }
    }
  }
}
