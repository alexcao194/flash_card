part of 'flash_card_bloc.dart';

abstract class FlashCardState extends Equatable {
  const FlashCardState({required this.currentCard});

  final int currentCard;

  @override
  List<Object> get props => [currentCard];
}

class FlashCardInitial extends FlashCardState {
  const FlashCardInitial() : super(currentCard: 0);
}
