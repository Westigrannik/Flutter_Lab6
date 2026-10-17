import 'package:flutter/material.dart';
import 'package:my_app_vovk/random_fact.dart';
import 'dart:math';

final randomizer = Random();

class Fact extends StatefulWidget{
  const Fact({super.key});
  
  @override
  State<StatefulWidget> createState(){
    return _fact();
  }
}

class _fact extends State<Fact> {
  var Nofimage = 1;
  final List<String> facts = [
    " ",
    "Сыр - самый часто крадущийся продукт питания в мире: по статистике, около 4% всего производимого сыра в магазинах похищают",
    "Францзия - страна, попадающая в 12 часовых появсов",
    "Волгоград - один из самых длинных городов России: его протяженность вдоль правого берега Волги превышает 65 километров, но при этом ширина городской застройки составляет всего от 1 до 5 километров",
  ];
  var Noftext = 1;
  void newfact() {
  setState(() {
    var a = randomizer.nextInt(3) + 1;
    Nofimage = a;
    Noftext = a;
  });
}

  @override
  Widget build(BuildContext context) {
    return Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Image.asset(
                  'assets/images/img$Nofimage.png',
                  width: 300,
                  ),
                   Padding(
            padding: const EdgeInsets.only(
            top: 20, 
            left: 20, 
            right: 20),
                  child: Text(
            facts[Noftext],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
                  
                  TextButton(
                    onPressed: newfact,
                    style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    textStyle: const TextStyle(
                      fontSize: 30,
                      ),
                    ),
                     child: Text("Случайный факт"),
                  ),
               ],
             );
  }
}