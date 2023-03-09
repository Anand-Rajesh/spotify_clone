import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_clone/const.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<String> MainName = [
    'Liked Songs',
    'The Weeknd',
    'Ed Sheeran',
    'Avicii',
    'Giga chad songs'
  ];
  List<String> Subtitle = [
    'Playlist',
    'Artist',
    'Artist',
    'Artist',
    'Playlist'
  ];

  List<String> img = [liked, weeknd, sheeran, avicii, gigachad];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
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
                            "Your Library",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.search_outlined,
                                color: white,
                                size: 29,
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.add,
                                color: white,
                                size: 29,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: black,
                                border: Border.all(color: white, width: 0.8)),
                            child: Center(
                                child: Text('Playlists',
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w500))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: black,
                                border: Border.all(color: white, width: 0.8)),
                            child: Center(
                                child: Text('Artists',
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.sort_outlined,
                                color: white,
                                size: 22,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Recents',
                                style: TextStyle(color: white, fontSize: 18),
                              )
                            ],
                          ),
                          Icon(
                            Icons.window_outlined,
                            color: white,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          SizedBox(
                            height: 500,
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      maxHeight: 300,
                                    ),
                                    child: Image.asset(img[index],
                                        fit: BoxFit.contain),
                                  ),
                                  title: Text(MainName[index],
                                      style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w500)),
                                  subtitle: Text(Subtitle[index],
                                      style: TextStyle(color: white)),
                                  trailing: Icon(
                                    Icons.more_vert_outlined,
                                    color: white,
                                    size: 22,
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
