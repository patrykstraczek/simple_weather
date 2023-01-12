import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
<<<<<<< HEAD
=======
    // http://api.weatherapi.com/v1/current.json?key=96c889c3978146c7a94120558231201&q=Namyslow&aqi=no
>>>>>>> 670d35029346b1b85eb8778351eb1693d0b8617e
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=96c889c3978146c7a94120558231201&q=$city&aqi=no');
    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    final name = responseData['location']['name'] as String;
    final temp = (responseData['current']['temp_c'] + 0.0) as double;

    return WeatherModel(city: name, temperature: temp);
  }
}
