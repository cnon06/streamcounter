import 'package:flutter/material.dart';
import 'package:streamcounter/counterviewmodel.dart';
import 'package:streamcounter/textwidget.dart';


class Home extends StatelessWidget {
 Home({super.key});
   final myCounterViewModel = CounterViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
           
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
            
            
            
            
            
            
       
        ElevatedButton(
            onPressed: () {
              
               myCounterViewModel.increase();
            },
            child: const Text('Increase')),
        ElevatedButton(onPressed: () {
          myCounterViewModel.decrease();
        }, child: const Text('Decrease')),
      ])),
    );
  }




}
