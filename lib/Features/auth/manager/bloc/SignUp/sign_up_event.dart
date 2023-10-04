// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

@immutable
abstract class AuthEvent {}

class SignUpEvent extends AuthEvent {
  String? email;
  String? password;
  SignUpEvent({required this.email, required this.password});
}
