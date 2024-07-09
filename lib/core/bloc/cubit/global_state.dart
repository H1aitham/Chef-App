part of 'global_cubit.dart';

@immutable
sealed class GlobalState {}

final class GlobalInitial extends GlobalState {}
final class ChangeLangLoading extends GlobalState {}
final class ChangeLangSucess extends GlobalState {}
