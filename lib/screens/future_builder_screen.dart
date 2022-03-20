import 'package:animate_do/animate_do.dart';
import 'package:componentes/models/reqre_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPagina2();
  }
}

Future<ReqReRespuesta> getUsuarios() async {
  final url = Uri.https('reqres.in', 'api/users');

  final resp = await http.get(url);
  return reqReRespuestaFromJson(resp.body);
}

class MiPagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Future Builder')),
        body: FutureBuilder(
          future: getUsuarios(),
          builder:
              (BuildContext context, AsyncSnapshot<ReqReRespuesta> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return _ListaUsuarios(
                usuarios: snapshot.data?.data,
              );
            }
          },
        ));
  }
}

class _ListaUsuarios extends StatelessWidget {
  final List<Usuario>? usuarios;

  const _ListaUsuarios({
    Key? key,
    required this.usuarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios?.length,
      itemBuilder: (BuildContext context, int i) {
        final usuario = usuarios?[i];
        return FadeInLeft(
          delay: Duration(milliseconds: 100 * i),
          child: ListTile(
            title: Text('${usuario!.firstName} ${usuario.lastName}'),
            subtitle: Text(usuario.email),
            trailing: Image.network(usuario.avatar),
          ),
        );
      },
    );
  }
}
