import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'flash_card_event.dart';
part 'flash_card_state.dart';

class FlashCardBloc extends Bloc<FlashCardEvent, FlashCardState> {
  FlashCardBloc() : super(const FlashCardInitial()) {
    on<FlashCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
