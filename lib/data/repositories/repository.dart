import 'package:journo_blog/data/repositories/auth_repo.dart';
import 'package:journo_blog/data/repositories/tag_repo.dart';

class Repository {
  final TagRepo tagRepo;
  final AuthRepo authRepo;

  Repository({required this.tagRepo, required this.authRepo});
}
