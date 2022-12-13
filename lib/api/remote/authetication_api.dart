import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:metazone/api/data/http_method.dart';
import 'package:metazone/models/consulta_bd.dart';
import '../../models/register.dart';
import '../data/http.dart';

class AuthenticationAPI {
  final Http _http;

  AuthenticationAPI(this._http);
  Future<List<ImagenAmmo>> better(String tipo) async {
    String url = '/api/meta/${tipo}';
    print(url + " esto debe ser la url bien");
    final result = await _http.request(
      url,
      method: HttpMethod.get,
    );
    List<ImagenAmmo> datosReturn = [];
    print("ESTO ES DATA ${result.data}");
    for (var element in result.data) {
      datosReturn.add(ImagenAmmo(element['nombre'], element['image']));
    }
    return datosReturn;
  }

  Future<String?> registro(String correo, String user, String password) async {
    String url = '/api/user/${correo}/${user}/${password}';
    final result = await _http.request<String>(
      url,
      method: HttpMethod.post,
    );
    print("esto es data we ${result.data}");
    return result.data;
  }

  Future<String?> login(String correo, String password) async {
    String url = "/api/login/${correo}/${password}";
    final result = await _http.request(
      url,
      method: HttpMethod.get,
    );
    print("RESULT DATA ${result.data[0]['usuario']}");
    return result.data[0]['usuario'];
  }
}
