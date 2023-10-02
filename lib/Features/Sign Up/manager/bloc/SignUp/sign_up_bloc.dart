import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is SignUp) {
        try {
          emit(SignUpLoading());
          // ignore: unused_local_variable
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email!,
            password: event.password!,
          );
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
        } catch (e) {
          print(e);
        }
      }
    });
  }
}
