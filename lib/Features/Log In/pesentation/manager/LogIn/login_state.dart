part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

class LoginInitial extends LoginState {}

class LoginSucsess extends LoginState {}

class LoginFailure extends LoginState {}
