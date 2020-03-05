import 'package:devpictures/controller/controller.dart';
import 'package:devpictures/model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<List<Post>> futurePost;

    FindAll findAll = new FindAll();

  void initState() {
    super.initState();
      futurePost =  findAll.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListView.builder(
              itemCount: widget.futurePost.value
            ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ],
        ),

//        child: Column(
//
//
//          children: <Widget>[
//            StreamBuilder<List<Post>>(
//                initialData: new List<Post>(),
//                stream: controller.saida,
//                builder: (context, snapshot) {
//                  List<Widget> listAux = new List<Widget>();
//                  snapshot.data.forEach((post) {
//                    listAux.add(
//                        ///criar aqui seu componente que listara essa lista
//                        Text(post.person.name),
//
//                    );
//                  });
//
//                  return Column(
//                    children: listAux,
//                  );
//                }),
//
////            for(PostModel post in controller.lista)Text(post.person.name)
//          ],
//        ),
      ),
    );
  }
}
