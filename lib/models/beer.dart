class Restaurants{
  final int restaurant_id;
  final String restaurant_name;
  final String owner;
  final String rating;
  final String location;

  Restaurants.fromJSON(Map<String, dynamic> jsonMap) :

   restaurant_id = jsonMap['restaurant_id'],
   restaurant_name = jsonMap['restaurant_name'],
   owner = jsonMap['owner'],
   rating = jsonMap['rating'],
   location = jsonMap['location'];
}