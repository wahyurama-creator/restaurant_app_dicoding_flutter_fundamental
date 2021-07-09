import 'dart:convert';

class Restaurant {
  late String name;
  late String address;
  late String category;
  late String description;
  late double foodRate, serviceRate, rateValue;
  late String timeRange;
  late String imageUrl;
  late List<FoodMenu> menu;

  Restaurant({
    required this.name,
    required this.address,
    required this.category,
    required this.description,
    required this.foodRate,
    required this.serviceRate,
    required this.rateValue,
    required this.timeRange,
    required this.menu,
  });

  Restaurant.fromJson(Map<String, dynamic> restaurant) {
    name = restaurant['name'];
    address = restaurant['address'];
    category = restaurant['category'];
    description = restaurant['description'];
    foodRate = restaurant['foodRate'];
    serviceRate = restaurant['serviceRate'];
    rateValue = restaurant['rateValue'];
    timeRange = restaurant['timeRange'];
    menu = restaurant['menu'];
  }
}

class FoodMenu {
  late String foodName;
  late String foodDescription;
  late String foodWeight;
  late String foodImage;
  late String deliveryCategory;
  late String foodPrice;
  late double foodRating;

  FoodMenu({
    required this.foodName,
    required this.foodDescription,
    required this.foodWeight,
    required this.foodImage,
    required this.deliveryCategory,
    required this.foodPrice,
    required this.foodRating,
  });
}

List<Restaurant> parseRestaurant(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Restaurant.fromJson(json)).toList();
}
