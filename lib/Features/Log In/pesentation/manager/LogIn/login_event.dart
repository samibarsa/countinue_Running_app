// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class Login extends LoginEvent {
  String? email;
  String? password;
  Login({required this.email, required this.password});
}
