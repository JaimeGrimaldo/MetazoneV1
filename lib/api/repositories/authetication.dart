import 'package:metazone/models/register.dart';

import '../../models/consulta_bd.dart';

abstract class AuthenticationRepository {
  Future<List<ImagenAmmo>> better(String arma);
  Future<String?> registro(String correo, String usuario, String password);
  Future<String?> usuario(String correo, String password);
}
