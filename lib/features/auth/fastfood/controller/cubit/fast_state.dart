part of 'fast_cubit.dart';

@immutable
sealed class FastState {}

final class FastInitial extends FastState {}
final class Fastloaded extends FastState {}
final class Fastempty extends FastState {}

