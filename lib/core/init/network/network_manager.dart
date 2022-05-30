import 'dart:io';

import 'package:dio/dio.dart';

import 'network_model.dart';

abstract class INetworkManager {
  final String _path = '';
  INetworkManager();

  late List<CatsModel> returnType;
  Future<List<CatsModel>?> getCats();
}

class NetworkManager extends INetworkManager {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.thecatapi.com/v1/images/search?limit=100&mime_types=&order=Random&size=small&page=3&sub_id=demo-ce06ee'));

  Future<dynamic> _getDioRequest() async {
    final response = await dio.get(_path);

    if (response.statusCode == HttpStatus.ok) {
      return response.data;
    }
  }

  @override
  Future<List<CatsModel>?> getCats() async {
    final response = await _getDioRequest();
    returnType = [];
    if (response is List) {
      return response.map((e) => CatsModel.fromMap(e)).toList();
    } else {
      throw response;
    }
  }
}
