part of 'profile_info_bloc.dart';

@immutable
sealed class ProfileInfoEvent {}

final class ChangeTabEvent extends ProfileInfoEvent {
  final int index;

  ChangeTabEvent({required this.index});
}
