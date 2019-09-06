import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:people_finder_app/src/models/persona_model.dart';

class PersonasProvider {
  String _url = 'mpisaluddev.mendoza.gov.ar:8080';

  Future<Persona> getDatos(int nDocumento, int sexo) async {
    final url = Uri.http(_url, 'mpi-fhir/fhir/Patient',
        {'_query': 'renaper', 'n_documento': '$nDocumento', 'sexo': '$sexo'});

print(url);

    return await _procesarRespuesta(url);
  }

  Future<Persona> _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    return decodedData;
  }
}
