import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swan/constants.dart';

List<Map<String, dynamic>> bannerList = [];
List<Map<String, dynamic>> brandList = [];
List<Map<String, dynamic>> suggestedList = [];
List<Map<String, dynamic>> productList = [];
Future<void> getBannerList() async {
  final response = await http.post(Uri.parse(
      'https://swan.alisonsnewdemo.online/api/home?id=bDy&token=${Token().token}'));
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data['banner1']);
    List banner = data['banner1'];
    print("banner : ${banner.length}");
    for (int i = 0; i < banner.length; i++) {
      bannerList.add({
        "id": banner[i]['id'],
        "linkType": banner[i]['link_type'],
        "linkValue": banner[i]['link_value'],
        "image": banner[i]['image'],
        "title": banner[i]['title'],
        "subTitle": banner[i]['sub_title'],
        "logo": banner[i]['logo']
      });
    }
    print(bannerList.length);
  } else {
    print("issue while fetching banner data");
  }
}

Future<void> getBrandList() async {
  final response = await http.post(Uri.parse(
      'https://swan.alisonsnewdemo.online/api/home?id=bDy&token=${Token().token}'));
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data['featuredbrands']);
    List brand = data['featuredbrands'];
    print("brand : ${brand.length}");
    for (int i = 0; i < brand.length; i++) {
      brandList.add({
        "id": brand[i]['id'],
        "image": brand[i]['image'],
        "slug": brand[i]['slug'],
        "name": brand[i]['name'],
      });
    }
    print(brandList.length);
  } else {
    print("issue while fetching brand data");
  }
}

Future<void> getSuggestedList() async {
  final response = await http.post(Uri.parse(
      'https://swan.alisonsnewdemo.online/api/home?id=bDy&token=${Token().token}'));
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data['suggested_products']);
    List suggested = data['suggested_products'];
    print("brand : ${suggested.length}");
    for (int i = 0; i < suggested.length; i++) {
      suggestedList.add({
        "productId": suggested[i]['productId'],
        "slug": suggested[i]['slug'],
        "code": suggested[i]['code'],
        "homeImg": suggested[i]['home_img'],
        "name": suggested[i]['name'],
        "isGender": suggested[i]['is_gender'],
        "store": suggested[i]['store'],
        "manufacturer": suggested[i]['manufacturer'],
        "oldprice": suggested[i]['oldprice'],
        "price": suggested[i]['price'],
        "image": suggested[i]['image'],
        "cart": suggested[i]['cart'],
        "wishlist": suggested[i]['wishlist'],
      });
    }
    print("suggested : ${suggestedList.length}");
  } else {
    print("issue while fetching brand data");
  }
}

// Future<void> getProductList() async {
//   final response = await http.post(Uri.parse(
//       'https://swan.alisonsnewdemo.online/api/home?id=bDy&token=${Token().token}'));
//   print(response.statusCode);
//   if (response.statusCode == 200) {
//     var data = jsonDecode(response.body);
//     print(data['suggested_products']);
//     List suggested = data['suggested_products'];
//     print("brand : ${suggested.length}");
//     for (int i = 0; i < suggested.length; i++) {
//       suggestedList.add({
//         "productId": suggested[i]['productId'],
//         "slug": suggested[i]['slug'],
//         "code": suggested[i]['code'],
//         "homeImg": suggested[i]['home_img'],
//         "name": suggested[i]['name'],
//         "isGender": suggested[i]['is_gender'],
//         "store": suggested[i]['store'],
//         "manufacturer": suggested[i]['manufacturer'],
//         "oldprice": suggested[i]['oldprice'],
//         "price": suggested[i]['price'],
//         "image": suggested[i]['image'],
//         "cart": suggested[i]['cart'],
//         "wishlist": suggested[i]['wishlist'],
//       });
//     }
//     print("suggested : ${suggestedList.length}");
//   } else {
//     print("issue while fetching brand data");
//   }
// }
