
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info.dart';
final opciones = ['Omar', 'Carolina', 'Jesus', 'Gerardo', 'Jorge'];
class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes widgets'),
      ),
      body: ListView(
        
        children: _crearItems(context),
      ),
    );
  }
}

List<Widget> _crearItems(BuildContext context) {
  List<Widget> lista = new List<Widget>();
  for (String opt in opciones) {
    final tempWidget = ListTile(
      title: Text(opt),
      subtitle: Text('Subtitulo' + opt),
      leading: Icon(Icons.account_box),
      trailing: Icon(Icons.keyboard_arrow_right_rounded),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> Info(opt)));
      },
    );
    lista..add(tempWidget)..add(Divider());
  }
  return lista;
}
