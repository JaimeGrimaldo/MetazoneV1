import 'package:metazone/api/remote/authetication_api.dart';
import 'package:metazone/models/register.dart';

import '../../models/consulta_bd.dart';
import '../repositories/authetication.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationAPI _api;

  AuthenticationRepositoryImpl(this._api);
  @override
  Future<List<ImagenAmmo>> better(String tipo) {
    return _api.better(tipo);
  }

  @override
  Future<String?> registro(String correo, String user, String password) {
    return _api.registro(correo, user, password);
  }

  @override
  Future<String?> usuario(String correo, String password) {
    return _api.login(correo, password);
  }
}
