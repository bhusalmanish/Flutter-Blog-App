import 'dart:convert';
import 'package:journo_blog/data/data_sources/remotes/api_client.dart';
import 'package:journo_blog/data/data_sources/remotes/api_endpoint_urls.dart';
import 'package:journo_blog/data/models/message_model.dart';
import 'package:journo_blog/presentation/screens/auth/login/login_model.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthRepo extends ApiClient {
  AuthRepo();

  Future<LoginModel> userLogin(String email, String password, context) async {
    Map body = {
      "email": email,
      "password": password,
    };

    try {
      final response = await postRequests(path: ApiEndpoint.login, body: body);
      if (response.statusCode == 200) {
        // 1solution : json Data  convert to String
        // direct  convert  using Encode
        var responseData = loginModelFromJson(jsonEncode(response.data));
        Vx.log(responseData);

        // 2nd Solution : json Data  conver to String
        // direct call from TagsModel
        // final responseData = TagsModel.fromJson(response.data);
        // Vx.log(responseData);

        return responseData;
      } else {
        LoginModel();
      }
    } on Exception catch (e) {
      // Vx.log(e);
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }

    return LoginModel();
  }

  Future<MessageModel> userLogout(context) async {
    try {
      final response = await postRequests(path: ApiEndpoint.logOut);
      if (response.statusCode == 200) {
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      MessageModel();
    }

    return MessageModel();
  }
}
