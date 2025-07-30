import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../data/post_service.dart';
import '../model/post_model/post_model.dart';

class PostController extends StateNotifier<AsyncValue<List<PostModel>>>{
  final Ref ref;
  PostController(this.ref) : super( AsyncLoading()){
    createPost();
  }

  Future<Response> createPost() async {
    try {
      final response = await ref.read(postServiceProvider).createPost();
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        //final post = PostModel.fromJson(response.data);
        state = AsyncData(
          data.map((item) => PostModel.fromJson(item as Map<String, dynamic>)).toList(),
        );
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

final postControllerProvider = StateNotifierProvider<PostController, AsyncValue<List<PostModel>>>((ref) {
  return PostController(ref);
});