import 'package:flutter/material.dart';
import 'package:movie_ticket_booking/screens/booking_screen.dart';

class HomeScreen extends StatelessWidget {
  List movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];

  List movies2 = [
    "GOTG Vol 3",
    "Shazam 2",
    "Aquaman 2",
    "Ant Man 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.sort,
          size: 32,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "DP Cinplex",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.filter_alt_off_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playing Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 415,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigate to movie details page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BookingScreen(movie: movies[index]),
                                  ));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/${movies[index]}.jpg",
                                height: 280,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.yellow,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.white60,
                                    ),
                                    SizedBox(width: 4),
                                    Text("2h 25m",
                                        style: TextStyle(color: Colors.white60))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF2F3236),
                    ),
                    child: Text(
                      "COMING SOON",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 355,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/${movies2[index]}.jpg",
                                fit: BoxFit.cover,
                                height: 280,
                                width: 180,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies2[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
