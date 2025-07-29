import 'package:dio/dio.dart';

abstract class PostService {
  Future<Response> createPost();
}
