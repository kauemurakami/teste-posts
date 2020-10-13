import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/provider/app_api.dart';

class UserRepository {
  final MyProvider apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);
}
