import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _contenedor1(),
            _contenedor2(),
            SizedBox(height: 20),
            //Text('Hola, probando los temas.', style: TextStyle(color: Theme.of(context).accentColor)),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            SizedBox(height: 20),
        ],
        )
      )
    );
  }

  Widget _crearImagen(){

    return Container(
      width: double.infinity,
      child: Image(
              image: NetworkImage('https://lh3.googleusercontent.com/apGlRVSzUrQZfz1mdtxzCJrHYzLfR8v6kM1cnDpNmlT_52QpccQhd1C1SEV1WLySsRH1WRXWAyyzpkDqZhRhxZVlzZaZK7_lafbGVRchIHWT1WJVY5lzWf7cQvSvqnsyCNzD5isM'),
              height: 200.0,
              fit: BoxFit.cover,
            ),
    );

  }

  Widget _contenedor1(){

    return Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Developer Students Clubs - UGR', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Granada, España', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.blue, size: 30.0,),
                  Text('99', style: TextStyle(fontSize: 15.0)),
                ],
              ),
            );
    
  }

  Widget _contenedor2(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        
        _boton(Icons.call, 'LLAMAR'),
        _boton(Icons.near_me, 'TELEGRAM'),
        _boton(Icons.share, 'COMPARTIR'),

      ],
    );

  }

  Widget _boton(IconData icon, String texto){

    return GestureDetector(
      onTap: () => print('Pulsando ${texto}'),
      child: Column(
          children: <Widget>[
            Icon(icon, color: Colors.lightBlue, size: 40.0),
            SizedBox(height: 5.0),
            Text('$texto', style: TextStyle(fontSize: 15.0, color: Colors.blue)),
          ],
      ),
    );

  }

  Widget _crearTexto(){

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed lacus et quam ultricies dignissim. Curabitur tempus nisl at ante pulvinar volutpat. Sed nec erat massa. Donec finibus dolor vitae euismod scelerisque. Nunc sollicitudin sodales velit vitae malesuada. Nam vitae turpis libero. Praesent at porta massa.',
          textAlign: TextAlign.justify,
        ),
      );

  }

}