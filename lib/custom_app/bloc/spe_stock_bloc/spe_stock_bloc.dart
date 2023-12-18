import 'package:bloc/src/bloc.dart';

import '../../../lib1/bloc/stock_bloc/stock_bloc.dart';

class SpeStockBloc extends StockBloc {
  SpeStockBloc(int value) : super(value);

  @override
  void handleStockEvent(StockEvent event, Emitter<StockState> emit) {
    emit(StockInitial(value: state.value + 5));
  }
}
