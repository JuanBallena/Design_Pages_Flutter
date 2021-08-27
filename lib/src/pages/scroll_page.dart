import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushNamed(context, 'botones');
        }
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber[200]
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/dr-lee.png'),
        fit: BoxFit.cover,
      )
    );
  }

  Widget _textos() {
    final estileTexto = TextStyle(color: Colors.black, fontSize: 40.0);
    
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 400.0),
          Text('Drumline', style: estileTexto),
          Text('Dr. Lee', style: estileTexto),
          Expanded(
            child: Container()
          ),
          Icon(Icons.keyboard_arrow_down, size: 60.0, color: Colors.black),
        ],
      ),
    );
  }


  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber[200],
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue[900],
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Welcome', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )
            ),
          ),
          onPressed: () {

          }
        )
      )
    );
  }
}