import 'package:flutter/material.dart';
import 'package:exam/api.dart';


class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  final TextEditingController _usernameC = TextEditingController();
  final TextEditingController _passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomPadding: false,
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             child: Stack(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.fromLTRB(15.0, 110, 0.0, 0.0),
                   child: Text(
                     'Hello',
                     style: TextStyle(
                       fontSize: 80.0, fontWeight: FontWeight.bold),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(15.0, 175, 0.0, 0.0),
                   child: Text(
                     'There',
                     style: TextStyle(
                       fontSize: 80.0, fontWeight: FontWeight.bold),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(240.0, 175, 0.0, 0.0),
                   child: Text(
                     '.',
                     style: TextStyle(
                       fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.green),
                   ),
                 )
               ],
             ),
           ),
           Container(
             padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0 ),
             child: Column(
               children: <Widget>[
                 TextField(
                   controller: _usernameC,
                   decoration: InputDecoration(
                     labelText: 'Usuario',
                     labelStyle: TextStyle(
                       fontFamily: 'Monserrat',
                       fontWeight:  FontWeight.bold,
                       color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      )
                   ),
                 ),
                 SizedBox(height: 20.0),
                 TextField(
                   controller: _passwordC,
                   decoration: InputDecoration(
                     labelText: 'Contraseña',
                     labelStyle: TextStyle(
                       fontFamily: 'Monserrat',
                       fontWeight:  FontWeight.bold,
                       color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      )
                   ),
                   obscureText: true,
                 ),
                 SizedBox(height: 20.0),
                 Container(
                   alignment: Alignment(1.0, 0.0),
                   padding: EdgeInsets.only(top:15.0, left: 20.0),
                   child: InkWell(
                     child: Text('¿Olvidaste tu contraseña?',
                     style: TextStyle(
                       color: Colors.green,
                       fontWeight: FontWeight.bold,
                       fontFamily: 'Monserrat',
                       decoration: TextDecoration.underline
                       ),
                   ),
                 ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        api.access(_usernameC.text, _passwordC.text, context);
                      },
                      child: Center(
                        child: Text(
                          'Ingresar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monserrat'
                          ),
                        )
                      ),
                    )
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Image.network(
                            "https://img.icons8.com/material-outlined/24/000000/facebook-f.png"
                          ),
                        ),
                        SizedBox(width:10.0),
                        Center(
                          child: Text('Ingresar con Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monserrat',
                          )
                          )
                        )
                      ],
                    ),
                  ),
                )
               ],
             ),
           ),
           SizedBox(height: 15.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 '¿Eres nuevo?',
                 style: TextStyle(
                   fontFamily: 'Monserrat',
                 ),
               ),
               SizedBox(width: 5.0),
               InkWell(
                 onTap: (){},
                 child: Text(
                   'Registrate',
                   style: TextStyle(
                     color: Colors.green,
                     fontFamily: 'Monserrat',
                     fontWeight: FontWeight.bold,
                     decoration: TextDecoration.underline
                   )
                 ),
               )
             ],
           )
         ],
       ),       
    );
  }
}

