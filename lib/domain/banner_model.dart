class BannerModel {
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  String? title;
  String? subTitle;
  Null? logo;

  BannerModel(
      {this.id,
      this.linkType,
      this.linkValue,
      this.image,
      this.title,
      this.subTitle,
      this.logo});

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link_type'] = this.linkType;
    data['link_value'] = this.linkValue;
    data['image'] = this.image;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['logo'] = this.logo;
    return data;
  }
}
