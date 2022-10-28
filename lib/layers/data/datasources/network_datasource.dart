
 import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

import 'package:reddit_case/commons/errors/failure.dart';
import 'package:reddit_case/commons/exceptions/exceptions.dart';
import 'package:reddit_case/commons/utils/statics.dart';
import 'package:reddit_case/layers/data/models/content_model.dart';

import '../../domain/repositories/network_repository.dart';

class NetworkDatasource {
  final Client client = Client();

  @override
  Future<List<Content>> getContents() async {
    List<Content> contentList =[];
 Response response = await requestWithoutHeaderServiceCall(Statics().getRequestUrl(Statics.contents));
  Map result = jsonDecode(response.body);
   for(var i in result['data']['children']){
     contentList.add(Content.fromJson(i['data']));
  }
    return contentList;
  }


  Future requestWithoutHeaderServiceCall(String url,) async {
    try {
      Response response;

        response = await client.get(Uri.parse(url)).timeout(const Duration(seconds: 60));


      final int statusCode = response.statusCode;

      if (statusCode != 200 && statusCode == 401) {

       } else if (statusCode < 200 || statusCode > 400 ) {

      }

      return response;
    } catch (ex) {
      return "";
    }
  }


}
