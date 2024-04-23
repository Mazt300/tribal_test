import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

Future<Response<dynamic>> request({
  required String nameSpace
}) async {
  final Response response;
  response = await dio.get(
    '${dotenv.env['API_URL']!}$nameSpace',
  );

  return response;
}