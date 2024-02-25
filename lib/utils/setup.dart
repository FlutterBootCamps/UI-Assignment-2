import 'package:get_it/get_it.dart';
import 'package:hw_10/data_layer/home_data_layer.dart';

void setup() {
  GetIt.I.registerSingleton(HomeData());
}
