part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}
final class Favoriteloaded extends FavoriteState {}
final class Favoriteempty extends FavoriteState {}
