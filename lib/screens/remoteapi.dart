import '../models/Api model.dart';
import 'package:http/http.dart';

class RemoteService {
  get http => null;

  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await client.getUrl(uri);
    if (response.statuscode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
