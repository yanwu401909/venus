class PictureCardModel {
  String name;
  String occupation;
  String imageUrl;
  int posts;
  int follows;
  int following;
  PictureCardModel({
    this.name,
    this.occupation,
    this.imageUrl,
    this.posts = 0,
    this.follows = 0,
    this.following = 0,
  });
}
