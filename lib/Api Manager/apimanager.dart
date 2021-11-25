import 'dart:convert';
import 'package:booksapp_assignment/Model/model.dart';
import 'package:http/http.dart' as http;

class Api_Manager {
  final baseurl = 'run.mocky.io';

  Future<Model> getData() async {
    final url = Uri.https(
      baseurl,
      '/v3/f3feef1c-9bfa-43fd-b2a0-bbe9abadb4f6',
    );
    final response = await http.get(url);
    final json = jsonDecode(response.body);
    return Model.fromJson(json);
  }
}
