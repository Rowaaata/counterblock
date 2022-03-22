import 'package:counterblock/block/bloc_counter.dart';
import 'package:counterblock/block/bloc_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of(context);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) => Column(
            children: [
              Text(
                'Increament&Decreament',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$state',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: ()=> counterBloc.add(IncreamentCounter()),
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: () =>counterBloc.add(DecreamentCounter()),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
