// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:journo_blog/data/data_sources/remotes/api_client.dart';
import 'package:journo_blog/data/data_sources/remotes/api_endpoint_urls.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/general/tags/tags_model.dart';

class TagRepo extends ApiClient {
  TagRepo();
  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequests(path: ApiEndpoint.tags);
      if (response.statusCode == 200) {
        // 1solution : json Data  convert to String
        // direct  convert  using Encode
        var responseData = tagsModelFromJson(jsonEncode(response.data));
        Vx.log(responseData);

        // 2nd Solution : json Data  conver to String
        // direct call from TagsModel
        // final responseData = TagsModel.fromJson(response.data);
        // Vx.log(responseData);

        return responseData;
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }

    return TagsModel();
  }
}
