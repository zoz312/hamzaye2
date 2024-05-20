part of 'drinks_cubit.dart';

@immutable
sealed class DrinksState {}

final class DrinksInitial extends DrinksState {}
final class Drinksempyt extends DrinksState {}
final class Drinksloaded extends DrinksState {}
