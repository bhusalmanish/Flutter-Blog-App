part of 'tags_imports.dart';

class TagsViewModel {
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc =
      VelocityBloc<TagsModel>(TagsModel());

  fetchAllTags() async {
    var tagsData = await repository.tagRepo.getAllTags();
    if (tagsData.status == 1) {
      tagsModelBloc.onUpdateData(tagsData);
    }
  }
}
