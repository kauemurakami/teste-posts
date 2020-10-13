import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/provider/app_api.dart';

class PostsRepository {
  final MyProvider apiClient;

  PostsRepository({@required this.apiClient}) : assert(apiClient != null);

  getAllPosts() {
    return apiClient.getAllPosts();
  }
}
