import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc(int value) : super(StockInitial(value: value)) {
    on<StockEvent>(handleStockEvent);
  }

  void handleStockEvent(StockEvent event, Emitter<StockState> emit) {
    emit(StockInitial(value: state.value + 1));
  }
}

@immutable
class StockEvent {}

@immutable
sealed class StockState {
  final int value;

  const StockState({required this.value});
}

final class StockInitial extends StockState {
  const StockInitial({required super.value});
}
