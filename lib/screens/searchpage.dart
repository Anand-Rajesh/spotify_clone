import 'package:flutter/material.dart';
import 'package:spotify_clone/const.dart';
import 'package:spotify_clone/models/models.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 30,
            ),
            child: Column(
              children: [
                SafeArea(
                  top: true,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: white,
                                size: 29,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 35),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: black,
                        ),
                        child: Row(children: [
                          SizedBox(width: 4),
                          Icon(Icons.search_outlined, color: white, size: 28),
                          SizedBox(width: 4),
                          Text(
                            'What do you want to listen to?',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          )
                        ]),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Browse all',
                        style: TextStyle(
                            color: white,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 18),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SizedBox(
                          height: 500,
                          child: GridView(
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    mainAxisExtent: 85),
                            children: [
                              BrowseTab(
                                  text: 'Podcasts',
                                  color: Colors.orange.shade900),
                              BrowseTab(
                                  text: 'Live Events',
                                  color: Colors.blue.shade900),
                              BrowseTab(
                                  text: 'Made For You',
                                  color: Colors.deepPurple.shade800),
                              BrowseTab(
                                  text: 'New releases',
                                  color: Colors.pink.shade800),
                              BrowseTab(
                                  text: 'Hindi',
                                  color: Colors.red.shade800),
                              BrowseTab(
                                  text: 'Punjabi',
                                  color: Colors.purple.shade800),
                              BrowseTab(
                                  text: 'Tamil',
                                  color: Colors.brown.shade800),
                              BrowseTab(
                                  text: 'Telugu',
                                  color: Colors.deepOrange.shade800),
                              BrowseTab(
                                  text: 'Trending',
                                  color: Colors.purpleAccent.shade700),
                              BrowseTab(
                                  text: 'Radio',
                                  color: Colors.green.shade800),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
