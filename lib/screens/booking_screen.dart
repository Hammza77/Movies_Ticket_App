import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  String movie;
  BookingScreen({required this.movie});

  List days = [
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
  ];

  List formats = [
    "2D",
    "3D",
    "4DX",
    "IMAX",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF212429),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("images/${movie}.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.6,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      movie,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Format: ",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: index == 1
                                        ? Colors.yellow
                                        : Color(0xFF212429),
                                    borderRadius: BorderRadius.circular(5),
                                    border: index != 1
                                        ? Border.all(color: Colors.white60)
                                        : null,
                                  ),
                                  child: Center(
                                    child: Text(formats[index],
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Select Date",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                color: index == 1 ? Colors.yellow : null,
                                borderRadius: BorderRadius.circular(5),
                                // border: index != 1
                                //     ? Border.all(color: Colors.white60)
                                //     : null,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${days[index]}",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                  Text("${index + 8}",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.yellow,
                      ),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "Hall A",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select Time",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: index == 1 ? Colors.yellow : null,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text("${index + 4} : 30 PM",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.yellow,
                      ),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "Hall A",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select Time",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: index == 1 ? Colors.yellow : null,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text("${index * 2 + 10} : 00",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.yellow.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Book Ticket",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
