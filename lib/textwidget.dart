import 'package:flutter/material.dart';
import 'package:streamcounter/counterviewmodel.dart';

class TextWidget extends StatelessWidget {
  
final CounterViewModel myCounterViewModel;

  
  const TextWidget({super.key, required this.myCounterViewModel});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
         StreamBuilder(
            stream: myCounterViewModel.myCounterStream,
            builder: (context, snapshot) {
              return  Text(snapshot.hasData ? snapshot.data.toString():'no data', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),);
            }),
            const SizedBox(height: 25,),
      ],
    );
    
    
  }
}
