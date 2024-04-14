import 'package:dio/dio.dart';
import 'package:srs77/apifit.dart';
import 'package:srs77/userpage.dart';

class ApiProvider {
  final Dio dio = Dio();
  late final Apifit _apiService;

  ApiProvider() {
    _apiService = Apifit(dio);
  }

  Future<List<Post>> fetchPostsFromApi() async {
    return await _apiService.fetchPostsFromApi();
  }
}
