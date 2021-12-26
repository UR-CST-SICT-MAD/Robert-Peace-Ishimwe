import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/beer.dart';

Future<Stream<Restaurants>> getBeers() async {
  final String url = 'https://rwemaapi.000webhostapp.com/api/restaurants/allrestaurants.php';

  final client  = new http.Client();
  final streamedRest = await client.send(
    http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
    .transform(utf8.decoder)
    .transform(json.decoder)
    .expand((data) => (data as List))
    .map((data) => Restaurants.fromJSON(data));
}