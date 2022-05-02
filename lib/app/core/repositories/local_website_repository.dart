import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/post_model.dart';
import '../models/project_model.dart';
import 'website_repository.dart';

class LocalWebsiteRepository implements WebsiteRepository {
  @override
  Future<String> getDescription() async {
    final response = await rootBundle.loadString("info/description.json");
    final decodedResponse = jsonDecode(response);
    return decodedResponse["description"];
  }

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await rootBundle.loadString("info/posts.json");
    final decodedResponse = jsonDecode(response);
    return decodedResponse["posts"].map<PostModel>((e) {
      return PostModel.fromMap(e);
    }).toList();
  }

  @override
  Future<List<ProjectModel>> getProjects() async {
    final response = await rootBundle.loadString("info/projects.json");
    final decodedResponse = jsonDecode(response);
    return decodedResponse["projects"].map<PostModel>((e) {
      return PostModel.fromMap(e);
    }).toList();
  }
}
