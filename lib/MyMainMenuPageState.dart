import 'package:flutter/material.dart';
import 'MyMainMenuPage.dart';
import 'MyMainMenuCardItem.dart';
import 'package:gdg_roma_flutter_app/events/events_route.dart';

class MyMainMenuPageState extends State<MyMainMenuPage> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  final List<MyMainMenuCardItem> _items = <MyMainMenuCardItem>[
    new MyMainMenuCardItem("01","Eventi","Tutti gli eventi organizzati dal Google Developers Group di Roma", new Icon(Icons.calendar_today)),
    new MyMainMenuCardItem("02","Chi siamo","Incontra il team di organizzatori del Google Developers Group di Roma", new Icon(Icons.contacts)),
    new MyMainMenuCardItem("03","Come arrivare","Raggiungici!", new Icon(Icons.map))
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Google Developers Group Roma'),
      ),
      body: _buildCards(),
    );
  }

  Widget _buildCards() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          return _buildCard(_items[i]);
        },
        itemCount: _items.length);
  }

  Widget _buildCard(MyMainMenuCardItem item) {
    return new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            leading: item.icon,
            title: new Text(
                item.text,
                style: _biggerFont),
            subtitle: new Text(item.subtext),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('SCOPRI'),
                  onPressed: () {
                    _pushSaved(item.id);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _pushSaved(id) {
    var redirectTo;
    if(id == "01" ){
      /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EventsRoute()),

      );*/
      Navigator.pushNamed(context, '/events');
    } else if(id == "02"){
      redirectTo = new MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: const Text('Chi siamo'),
            ),
            body: Center(
              child: Text('Under construction'),
            ),
          );
        },
      );
      Navigator.of(context).push( redirectTo );
    }else if(id == "03"){
      redirectTo = new MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: const Text('Come arrivare'),
            ),
            body: Center(
              child: Text('Under construction'),
            ),
          );
        },
      );
      Navigator.of(context).push( redirectTo );
    }

    //Navigator.of(context).push( redirectTo );


  }
}