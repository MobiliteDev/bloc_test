import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/lib1/bloc/stock_bloc/stock_bloc.dart';

class SubCmp extends StatelessWidget {
  const SubCmp({super.key});

  @override
  Widget build(BuildContext context) {
    StockBloc bloc = context.watch<StockBloc>();
    BlocProvider.of<StockBloc>(context);

    return Column(
      children: <Widget>[
        Text("Sub cmp + ${bloc.state.value}"),
        TextButton(
            onPressed: () {
              bloc.add(StockEvent());
            },
            child: const Text("Ajouter 1"))
      ],
    );
  }
}
