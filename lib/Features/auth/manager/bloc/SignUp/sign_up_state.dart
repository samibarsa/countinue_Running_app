part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpSucsess extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpFailure extends SignUpState {}
