import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

class api {
  static String finalURL = 'https://8e0efe6c161c.ngrok.io/api/v1/login';

  static access(String user, String password, BuildContext context) async{
    Map<String, String> body = {
      'username': user,
      'password': password
    };

    var response = await http.post(finalURL, body: body);

    if(response.statusCode == 200){
      print('EXITO');
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    }else{
      print('No se pudo accesar');
    }
  }
}