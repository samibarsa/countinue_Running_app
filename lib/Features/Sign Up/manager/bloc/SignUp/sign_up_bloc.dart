import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<AuthEvent, SignUpState> {
  bool modalprogresshud = false;
  SignUpBloc() : super(SignUpInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is SignUpEvent) {
        try {
          modalprogresshud = true;
          // ignore: unused_local_variable
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email!,
            password: event.password!,
          );
          modalprogresshud = false;
          emit(SignUpSucsess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            // ignore: avoid_print
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            // ignore: avoid_print
            print('The account already exists for that email.');
          }
          emit(SignUpFailure());
          modalprogresshud = false;
        } catch (e) {
          // ignore: avoid_print
          print(e);
        }
      }
    });
  }
}
