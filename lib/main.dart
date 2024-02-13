
import 'package:flutter/material.dart';
import 'package:hello_world/presentation/widgets/functionalCounter.widgets.dart';
void main(){
  //En este runApp va e widwt principal o lo que en react es la <App/>
  //El runApp es el método que se encarga de renderizar el Widwts principal, llo que quiere decir que como parámetro recibe un widwt
  runApp(const MyApp());
}
//Todo StatelessWidwets implementa un método build
class MyApp extends StatelessWidget{
  
  const MyApp({super.key}); //Darle un "nombre" al widwet
  //Se utiliza @override para hacer referencia que se hará polimosfirmo, ya que ocmo se stá herendando el m´ñetodo build de una super clase la uso aquí de esta forma
  // colocar la palabra build y se forma el siguiente métdodo 
  @override
  Widget build(BuildContext context){
    //El MAterialApp es el widwet principal, es el body de html
    return const MaterialApp( //El const es para deci
      debugShowCheckedModeBanner: false,
        home:  FunctonalCounter(),      
    );
  }
}