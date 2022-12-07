part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class UserLoginEvent extends AuthenticationEvent {
  String email;
  String password;
  UserLoginEvent({required this.email, required this.password});
}
