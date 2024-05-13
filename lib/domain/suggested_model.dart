class SuggestedModel {
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  Null? isGender;
  String? store;
  String? manufacturer;
  String? oldprice;
  String? price;
  String? image;
  int? cart;
  int? wishlist;

  SuggestedModel(
      {this.productId,
      this.slug,
      this.code,
      this.homeImg,
      this.name,
      this.isGender,
      this.store,
      this.manufacturer,
      this.oldprice,
      this.price,
      this.image,
      this.cart,
      this.wishlist});

  SuggestedModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['slug'] = this.slug;
    data['code'] = this.code;
    data['home_img'] = this.homeImg;
    data['name'] = this.name;
    data['is_gender'] = this.isGender;
    data['store'] = this.store;
    data['manufacturer'] = this.manufacturer;
    data['oldprice'] = this.oldprice;
    data['price'] = this.price;
    data['image'] = this.image;
    data['cart'] = this.cart;
    data['wishlist'] = this.wishlist;
    return data;
  }
}
