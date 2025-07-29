import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../data/post_service.dart';
import '../model/post_model/post_model.dart';

class PostController extends StateNotifier<AsyncValue<PostModel>>{
  final Ref ref;
  PostController(this.ref) : super( AsyncLoading()){
    createPost();
  }

  Future<Response> createPost() async {
    try {
      final response = await ref.read(postServiceProvider).createPost();
      if (response.statusCode == 200) {
        final post = PostModel.fromJson(response.data);
        state = AsyncData(post);
        return response;
      } else {
        state = AsyncError('Failed to create post',StackTrace.current);
        throw Exception('Failed to create post');
      }
    } catch (e) {
      state = AsyncError(e.toString(),StackTrace.current);
      rethrow;
    }
  }


}