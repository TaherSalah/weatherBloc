import 'package:weather_app/models/weather_model.dart';

abstract class WeatherStates {}

class InitState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}
class WeatherSuccessState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherSuccessState({required this.weatherModel});

}
class WeatherFailureState extends WeatherStates {
  final String errorMsg;

  WeatherFailureState({required this.errorMsg});

}
