class BrandModel {
  int? id;
  String? image;
  String? slug;
  String? name;

  BrandModel({this.id, this.image, this.slug, this.name});

  BrandModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['slug'] = this.slug;
    data['name'] = this.name;
    return data;
  }
}
