import 'package:discover_app/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _locations = ['Poluare', 'Japan', 'Moscow', 'London'];
  final int _activeLocation = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        left: false,
        right: false,
        bottom: true,
        minimum: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05,
          0,
          MediaQuery.of(context).size.width * 0.05,
          0,
        ),
        child: _mainColumn(context),
      ),
    );
  }

  Widget _mainColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Icon(Icons.menu, color: Colors.black87, size: 35),
            Container(
              height: 85,
              width: 177,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/discover.png'),
                ),
              ),
            ),
            Icon(Icons.search, color: Colors.black87, size: 35),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            bottom: MediaQuery.of(context).size.height * 0.03,
          ),
          child: _locationBar(context),
        ),
        _articlesList(context),
      ],
    );
  }

  Widget _locationBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
        color: Color.fromRGBO(69, 69, 69, 1.0),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _locations.map((l) {
          bool isActive = l == _locations[_activeLocation];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l,
                style: TextStyle(
                  fontSize: 15,
                  color: isActive ? Colors.white : Colors.white54,
                  fontFamily: 'Montserrat',
                ),
              ),
              (isActive)
                  ? Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  : Container(),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _articlesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(articles[index].image),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: _articleInfoColumn(context, index),
                  ),
                ),
              ),

              Positioned(
                bottom: 30,
                left: MediaQuery.of(context).size.width * 0.10,
                child: _socialInfoContainer(context, index,),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _articleInfoColumn(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 30, 0),
          child: _authorInfoRow(context, index),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            30,
            MediaQuery.of(context).size.height * 0.05,
            30,
            0,
          ),
          child: _detailInfoRow(context, index),
        ),
      ],
    );
  }

  Widget _authorInfoRow(BuildContext context, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.pravatar.cc/300'),
                ),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articles[index].author,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "3 Hours Ago",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 20),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(Icons.bookmark, color: Colors.white, size: 20),
            ),
          ],
        ),
      ],
    );
  }

  Widget _detailInfoRow(BuildContext context, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(Icons.play_arrow, color: Colors.redAccent, size: 30),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: Text(
                  articles[index].title,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3, ),
                child: Text(
                  articles[index].location,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

              _ratingWidget(context, index),
            ],
          ),
        ),
      ],
    );
  }

  Widget _socialInfoContainer(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.redAccent,),
              Text("${articles[index].likes}", style: TextStyle(color: Colors.redAccent),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.mode_comment, color: Colors.grey),
              Text(
                "${articles[index].comments}",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.share, color: Colors.grey),
              Text(
                "${articles[index].shares}",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _ratingWidget(BuildContext context, int index) {
return Row(
  children: List<Widget>.generate(5, (currentIndex){
    double fillAmount = articles[index].rating - currentIndex;
    Icon starIcon;
    if(fillAmount >= 1) {
      starIcon = Icon(Icons.star, size: 15, color: Colors.amber,);
    }
    else if(fillAmount >= 0.5) {
      starIcon = Icon(Icons.star_half, size: 15, color: Colors.amber);

    }
    else {
      starIcon = Icon(Icons.star_border, size: 15, color: Colors.amber);

    }
    return starIcon;
  },),
);
  }
}
