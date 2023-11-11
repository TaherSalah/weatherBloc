import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/cubit/weather_state.dart';

import '../../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherStates>{

  WeatherCubit(this.weatherService) : super(InitState());
String? cityName;
  WeatherService weatherService;
  WeatherModel? weatherModel;

  getWeather({required String cityName })async{
    try {
      emit(WeatherLoadingState());

      WeatherModel weatherModel=await    weatherService.getWeather(cityName: cityName);

      emit(WeatherSuccessState(weatherModel: weatherModel));
    } on Exception catch (e) {
      // TODO
      emit(WeatherFailureState(errorMsg: e.toString()));
    }


  }




}