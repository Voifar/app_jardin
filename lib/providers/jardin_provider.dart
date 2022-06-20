import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JardinProvider {
  final String apiURL = 'http://127.0.0.1:8000/api';

  // TODO: Agregar (por ahora nivel)
  Future<LinkedHashMap<String, dynamic>> jardinAgregar(String nombre) async {
    var uri = Uri.parse('$apiURL/niveles');
    var respuesta = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
        body: jsonEncode(<String, dynamic>{'nombre': nombre}));
    return json.decode(respuesta.body);
  }
}
