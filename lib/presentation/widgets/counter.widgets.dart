import 'package:flutter/material.dart';

final iconsItems = [Icons.home, Icons.favorite, Icons.search, Icons.account_circle];
class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Art Street'),
          actions: [
            Image.asset('assets/images/logoartstreet.png', width: 132),
          ],
        ),
        body: const Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              'Si la Calle es el escenario, aquí encontrarás el verdadero Arte',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text('1',style: TextStyle(
              fontSize: 30
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 50,
                ),
                Icon(Icons.minimize_outlined, size: 50,)
              ],
            )
          ],
        )
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     return print('Heyyy');
            //   },
            //   child:  Icon(Icons.plus_one),
            // ),
            ),
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.live_tv),
            Icon(Icons.notifications),
            Icon(Icons.person)
          ],
        ));
  }
}

class IconWidget extends StatelessWidget{
  const IconWidget({super.key});
  @override
  Widget build(BuildContext context){
    return const Icon(
      Icons.ac_unit_rounded
    );
  }
}