part of 'food_cubit.dart';

@immutable
sealed class FoodState {}

final class Foodloading extends FoodState {}
final class Foodloaded extends FoodState {}
final class Foodempty extends FoodState {}