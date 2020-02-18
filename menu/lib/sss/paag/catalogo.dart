import 'package:flutter/material.dart';

class Catalogo extends StatelessWidget {
  Container MyArticles(String imageval, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  Container MyArticles2(String imageval, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Consulta tus peliculas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: 

      Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyArticles(
                "https://es.web.img3.acsta.net/pictures/19/12/11/18/10/4293997.jpg",
                "Aves de presa",
                "DC"),
            MyArticles(
                "https://es.web.img3.acsta.net/pictures/19/12/11/18/10/4293997.jpg",
                "Aves de presa",
                "DC"),
            MyArticles(
                "https://es.web.img3.acsta.net/pictures/19/12/11/18/10/4293997.jpg",
                "Aves de presa",
                "DC"),
          ],
        ),
      ),
    );
  }
}
