import 'package:flutter/material.dart';

class Consulta extends StatelessWidget{

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text("Busca tus peliculas Chidas"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: Datasearch());
            },
          ),
        ],
      ),
      body: (
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
        )
      ),
     //  drawer: Drawer(),
    );
  }
}

class Datasearch extends SearchDelegate<String>{
  final cities =[
    "Batman",
    "SuperMan",
    "El bromas",
    "Los humanos",
    "Los malos",
  ];
  final recentCities = [
   "Superman II",
   "Iron Man",
   "Spider-man",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
         onPressed: (){
           query="";
         })
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon:AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
         progress: transitionAnimation),
         onPressed: (){
           close(context, null);
         },
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(
      child:Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.black,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty
    ? recentCities
    : cities.where((p)=> p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index)=>ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.movie),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color:Colors.black,fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}