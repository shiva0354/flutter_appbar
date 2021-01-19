import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget",
      home: MyStateLessWidget(),
    );
  }
}
void openPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context){
        return Scaffold(
          appBar: new AppBar(
            title: new Text('Showing Next Page'),
          ),
          body: const Center(
            child: Text('This is next page'),
          ),
        );
      }
  ));
}
class MyStateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.menu),
        title: new Text('Appbar Demo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Showing Snackbar',
            onPressed: (){},
          ),
          IconButton(icon: const Icon(Icons.navigate_next), onPressed: (){openPage(context);}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: null),
        ],
      ),
      body: new Center(
        child: new Text('Welcome to flutter Logo',style: new TextStyle(color: Colors.red,fontSize: 20,),),
      ),
    );
  }
}

