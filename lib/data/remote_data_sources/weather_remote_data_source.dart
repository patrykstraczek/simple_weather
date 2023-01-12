import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=96c889c3978146c7a94120558231201&q=$city&aqi=no');
    return response.data;
  }
}
