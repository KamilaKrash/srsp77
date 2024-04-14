import 'package:srs77/userpage.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'apifit.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class Apifit {
  factory Apifit(Dio dio, {String baseUrl}) = _Apifit;

  @GET("/posts/1")
  Future<List<Post>> fetchPostsFromApi();
}
