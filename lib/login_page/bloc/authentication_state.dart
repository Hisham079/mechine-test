part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class LoginSucces extends AuthenticationState {}

class LoginFailed extends AuthenticationState {
  String error_message;
  LoginFailed({required this.error_message});
}
