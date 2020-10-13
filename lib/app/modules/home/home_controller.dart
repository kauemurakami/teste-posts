import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/model/post_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final postRepository;
  HomeController({@required this.postRepository})
      : assert(postRepository != null);

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final searchResults = List<Posts>().obs;

  final repositorios = List<Posts>().obs;
  set repositorios(value) => this.repositorios.value = value;

  @override
  void onInit() {
    getAllRepositories();
    super.onInit();
  }

  final _countList = 0.obs;
  get countList => this._countList.value;
  set countList(value) => this._countList.value = value;

  onChangedFiltro(value) {
    if (value.length > 3) {
      repositorios.forEach((post) {
        if (post.title.toLowerCase().contains(value.toLowerCase())) {
          searchResults.add(post);
        }
        countList = searchResults.length;
        repositorios = searchResults;
      });
    }

    if (countList == 0) {
      this.message = 'Nenhum resultado encontrado';
    }

    if (value.length < 2) {
      this.message = '';
      searchResults.clear();
      getAllRepositories();
      countList = repositorios.length;
    }
  }

  onSavedFiltro(value) => '';
  validateFiltro(value) => '';

  getAllRepositories() async {
    await postRepository.getAllPosts().then((data) {
      repositorios = data;
      this.countList = repositorios.length;
    });
  }
}
