import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo(),
                SizedBox(height: 10.0),
                _botonesRedondeados(),
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Colors.blue[200],
            Colors.blue[500],
          ]
        )
      ),
    );

    final caja = Transform.rotate(
      angle: -pi / 5.0,
      child:  Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.circular(60.0),
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.amber[200],
          //     Colors.amber[500],
          //   ]
          // )
        ),
      ),
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: caja
        )
      ],
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Taller ASB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        )
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black87,
        primaryColor: Colors.white,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Colors.grey[600]
          )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 26.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            title: Container(),
          )
        ]
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.red[300], Icons.home, 'HOME'),
            _crearBotonRedondeado(Colors.blue[300], Icons.search, 'SEARCH'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green[300], Icons.access_alarm, 'ALARM'),
            _crearBotonRedondeado(Colors.amber[300], Icons.accessibility_new, 'NEW'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.cyan [300], Icons.airplanemode_active, 'AIR'),
            _crearBotonRedondeado(Colors.brown[300], Icons.audiotrack, 'AUDIO'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigo[300], Icons.autorenew, 'REFRESH'),
            _crearBotonRedondeado(Colors.deepOrange[300], Icons.brightness_high, 'HIGH'),
          ]
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.0,
          sigmaY: 1.0,
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon , color: Colors.white, size: 30.0)
              ),
              Text(
                texto,
                style: TextStyle(color: color)
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          )
        ),
      ),
    );
  }
}