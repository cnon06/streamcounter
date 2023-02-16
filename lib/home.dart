import 'package:flutter/material.dart';
import 'package:streamcounter/counterviewmodel.dart';
import 'package:streamcounter/textwidget.dart';

class Home extends StatelessWidget {
  var myCounterViewModel = CounterViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
           
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
           TextWidget(myCounterViewModel: myCounterViewModel),
            // StreamBuilder(
            // stream: myCounterViewModel.myCounterStream,
            // builder: (context, snapshot) {
            //   return  Text(snapshot.hasData ? snapshot.data.toString():'no data', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),);
            // }),
            // SizedBox(height: 50,),
       
        ElevatedButton(
            onPressed: () {
              // print(myCounterViewModel.myCounterStream.first);
               myCounterViewModel.increase();
            },
            child: Text('Increase')),
        ElevatedButton(onPressed: () {
          myCounterViewModel.decrease();
        }, child: Text('Decrease')),
      ])),
    );
  }




}
