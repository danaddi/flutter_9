import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/pattern.dart';

import 'package:injectable/injectable.dart';

import '../data/patterns_repository.dart';

part 'patterns_event.dart';
part 'patterns_state.dart';

@injectable
class PatternsBloc extends Bloc<PatternsEvent, PatternsState> {
  final PatternsRepository _repository;

  PatternsBloc(this._repository) : super(const PatternsInitial()) {
    on<LoadPatternsEvent>(_onLoadPatterns);
  }

  Future<void> _onLoadPatterns(
    LoadPatternsEvent event,
    Emitter<PatternsState> emit,
  ) async {
    emit(const PatternsLoading());

    try {
      emit(PatternsLoaded(await _repository.fetchPatterns()));
    } catch (e) {
      emit(const PatternsError('Не удалось загрузить паттерны'));
    }
  }
}
