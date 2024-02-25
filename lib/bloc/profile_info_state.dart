part of 'profile_info_bloc.dart';

@immutable
sealed class ProfileInfoState {}

final class ProfileInfoInitial extends ProfileInfoState {}

final class ChangedTabState extends ProfileInfoState {}
