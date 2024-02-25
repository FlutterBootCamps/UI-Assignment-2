import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_10/data_layer/home_data_layer.dart';
import 'package:meta/meta.dart';

part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc() : super(ProfileInfoInitial()) {
    on<ProfileInfoEvent>((event, emit) {});

    on<ChangeTabEvent>(changeTab);
  }

  FutureOr<void> changeTab(
      ChangeTabEvent event, Emitter<ProfileInfoState> emit) {
    GetIt.I.get<HomeData>().currentTabBarIndex = event.index;
    emit(ChangedTabState());
  }
}
