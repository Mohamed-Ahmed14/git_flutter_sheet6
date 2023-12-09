import 'user.dart';
class Post{
  User? user;
  String? image;
  String? title;
  int? likes;
  int? comments;

  Post({this.user,this.image,this.title,this.likes,this.comments});
}

List<Post> postsList=[
  Post(
    user: User(name: "Ahmed Khalid",
    profile: "assets/images/profile1.jpeg"),
    image: "assets/images/qoute.png",
    title: "Fyodor Mikhailovich Dostoevsky, sometimes transliterated as Dostoyevsky, was a Russian novelist, short story writer, essayist and journalist...more",
    likes: 44,
    comments: 1,
  ),
  Post(
    user: User(name: "Wael Ryad",
        profile: "assets/images/profile2.jpg"),
    image: "assets/images/lion.jpg",
    title: "Lions are one of Africa's most recognizable animals and for good reason: more than any other animal in the African wilderness, lions signify courage, strength, and power.",
    likes: 25,
    comments: 8,
  ),
  Post(
    user: User(name: "Yasser Mohamed",
        profile: "assets/images/profile3.jpg"),
    image: "assets/images/pyramids.jpg",
    title: "The largest and most famous of all the pyramids, the Great Pyramid at Giza, was commissioned by Snefru's son, Khufu, known also as Cheops, the later Greek form of his name.",
    likes: 120,
    comments: 76,
  ),
];