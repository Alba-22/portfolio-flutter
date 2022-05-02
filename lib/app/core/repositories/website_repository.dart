import '../models/post_model.dart';
import '../models/project_model.dart';

abstract class WebsiteRepository {
  Future<List<PostModel>> getPosts();
  Future<List<ProjectModel>> getProjects();
  Future<String> getDescription();
}
