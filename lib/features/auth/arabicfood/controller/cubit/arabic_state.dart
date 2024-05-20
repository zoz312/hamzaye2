part of 'arabic_cubit.dart';

@immutable
sealed class ArabicState {}

final class ArabicInitial extends ArabicState {}
final class Arabicempty extends ArabicState {}
final class Arabicloaded extends ArabicState {}
