class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final int likes;
  final int comments;
  final int shares;
  bool isLiked;
  final double rating;

  Article({
    required this.title,
    required this.image,
    required this.location,
    required this.author,
    required this.likes,
    required this.comments,
    required this.shares,
    this.isLiked = false,
    required this.rating,
  });
}

List<Article> articles = [
  Article(
    title: "Japan's second largest metropolatian area",
    image:
        'https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg',
    location: 'Osaka Japan',
    author: 'Yvonee Jess',
    likes: 32000,
    comments: 100,
    shares: 50,
    isLiked: true,
    rating: 4
  ),
  Article(
    title: "Japan's second largest metropolatian area",
    image:
        'https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg',
    location: 'Osaka Japan',
    author: 'Yvonee Jess',
    likes: 32000,
    comments: 100,
    shares: 50,
    isLiked: true,
    rating: 3.5
  ),
  Article(
    title: "Japan's second largest metropolatian area",
    image:
        'https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg',
    location: 'Osaka Japan',
    author: 'Yvonee Jess',
    likes: 32000,
    comments: 100,
    shares: 50,
    isLiked: true,
    rating: 5
  ),
  Article(
    title: "Japan's second largest metropolatian area",
    image:
        'https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg',
    location: 'Osaka Japan',
    author: 'Yvonee Jess',
    likes: 32000,
    comments: 100,
    shares: 50,
    isLiked: true,
    rating: 1
  ),
  Article(
    title: "Japan's second largest metropolatian area",
    image:
        'https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg',
    location: 'Osaka Japan',
    author: 'Yvonee Jess',
    likes: 32000,
    comments: 100,
    shares: 50,
    isLiked: true,
    rating: 2.5
  ),
];
