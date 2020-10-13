import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/model/post_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final postRepository;
  HomeController({@required this.postRepository})
      : assert(postRepository != null);

  @override
  void onInit() {
    getAllRepositories();
    super.onInit();
  }

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final searchResults = List<Posts>().obs;

  final repositorios = List<Posts>().obs;
  set repositorios(value) => this.repositorios.value = value;

  onChangedFiltro(value) {
    searchResults.clear();
    if (value.length > 3) {
      repositorios.forEach((post) {
        if (post.title.toLowerCase().contains(value.toLowerCase())) {
          searchResults.add(post);
        } else {
          getAllRepositories();
          return;
        }
        repositorios = searchResults;
      });
    } else if (value.length < 1) {
      getAllRepositories();
      return;
    }
  }

  onSavedFiltro(value) => '';
  validateFiltro(value) => '';

  getAllRepositories() async {
    await postRepository.getAllPosts().then((data) => repositorios = data);
  }
}
