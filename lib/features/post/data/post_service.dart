import 'package:dio/dio.dart';
import 'package:featurebase/features/post/data/base.dart';
import 'package:featurebase/utils/api_client.dart';
import 'package:riverpod/riverpod.dart';

class Post extends PostService {
  Ref ref;
  Post(this.ref);
  @override
  Future<Response> createPost() async {
    final response = await ref
        .read(apiClientProvider)
        .get('https://jsonplaceholder.typicode.com/posts');
    return response;
  }
}

final postServiceProvider = Provider<PostService>((ref) {
  return Post(ref);
});
