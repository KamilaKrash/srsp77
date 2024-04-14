import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:srs77/api.dart';
import 'package:srs77/bloc/bloc_state.dart';
import 'package:srs77/userpage.dart';

class PostCubit extends Cubit<PostState> {
  final ApiProvider apiProvider = ApiProvider();

  PostCubit() : super(PostInitial());

  void fetchPosts() async {
    emit(PostLoading());
    try {
      List<Post> posts = await apiProvider.fetchPostsFromApi();
      emit(PostLoaded(posts));
    } catch (error) {
      emit(PostError("Ошибка загрузки постов"));
    }
  }
}
