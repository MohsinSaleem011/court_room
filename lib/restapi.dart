import 'package:court_room/screens/remoteapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';

import 'models/Api model.dart';

class RestApi extends StatefulWidget {
  const RestApi({Key? key}) : super(key: key);

  @override
  State<RestApi> createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  List<Post>? posts;
  var isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Posts"),
      ),
      body: Visibility(
        visible: isLoading,
        child: ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (Context, index) {
              return Container(
                child: Text(posts[index].title),
              );
            }),
      ),
    );
  }
}
