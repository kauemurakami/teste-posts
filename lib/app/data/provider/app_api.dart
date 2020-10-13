import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/model/post_model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts';

class MyProvider {
  final http.Client httpClient;
  MyProvider({@required this.httpClient});

  getAllPosts() async {
    try {
      var response = await httpClient.get(
        '$baseUrl',
      );
      if (response.statusCode == 200) {
        // print(response.statusCode.toString());
        // print(response.body);
        return postsFromJson(response.body);
      }
    } catch (e) {}
  }
}
