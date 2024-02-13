import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Con estado interno
class FunctonalCounter extends StatefulWidget {
  const FunctonalCounter({super.key});
  @override
  State<FunctonalCounter> createState() => _FunctionalCounter();
}

class _FunctionalCounter extends State<FunctonalCounter> {
  int numberCounter = 0;
  void addNumber() {
    setState((){
      if(numberCounter==10) return;
      numberCounter++;
    });
  }

  void lessNumber() => setState(() {
        if (numberCounter > 0) {
          numberCounter--;
        }
        return;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.orange,
        title: const Text('Este es mi primer contador usando flutter'),
      ),
      body: Center(
        child: Text(
          '$numberCounter',
          style: const TextStyle(fontSize: 80),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            hoverColor: Colors.green,
            onPressed: addNumber,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16), // Puedes ajustar el ancho según sea necesario
          FloatingActionButton(
            hoverColor: Colors.red,
            onPressed: lessNumber,
            child: const Icon(Icons.minimize),
          )
        ],
      ),
    );
  }
}



//Sin estado interno
// class FunctionalCounter extends StatelessWidget {
//   const FunctionalCounter({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Center(
//         child: Column(
//           children: [
//             Text('1'),
//             Row(
//               children: [Icon(Icons.add), Icon(Icons.minimize_outlined)],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

