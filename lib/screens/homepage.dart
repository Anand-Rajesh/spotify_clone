import 'package:flutter/material.dart';
import 'package:spotify_clone/const.dart';
import 'package:spotify_clone/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 30,
            ),
            child: Stack(
              children: [
                SafeArea(
                  top: true,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Good Morning",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                color: white,
                                size: 29,
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.access_time,
                                color: white,
                                size: 29,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade900,
                            ),
                            child: Center(
                                child: Text('Music',
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w500))),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade900,
                            ),
                            child: Center(
                              child: Text(
                                'Podcasts and Shows',
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 65,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade900,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 55,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10)),
                                            gradient: LinearGradient(colors: [
                                              Colors.deepPurpleAccent,
                                              white
                                            ])),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Liked ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13),
                                            ),
                                            Text(
                                              'Songs ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons.more_horiz,
                                        size: 23,
                                        color: Colors.green,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  height: 65,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade900,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/weekend.jpg'))),
                                      ),
                                      const SizedBox(width: 18),
                                      Text(
                                        "Weekend",
                                        style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            'Your top mixes',
                            style: TextStyle(
                                color: white,
                                fontSize: 23,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SongThumb(
                              image: AssetImage('assets/images/ruhth_b.jpg'),
                              text: 'Ruth B.Mix',
                              title:
                                  'Rosie Darking, SYML, Sleeping At Last and ...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/eminem.jpg'),
                              text: 'Eminem',
                              title: 'SuperMan, Mockingbird,  and...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/coldplay.jpg'),
                              text: 'Coldplay',
                              title: 'Believer, Hymn For The Weekend and...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/ed_sheeran.jpg'),
                              text: 'Ed sheeran',
                              title: 'Perfect, Shape of you, Bad Habits and...',
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            'More of what you like',
                            style: TextStyle(
                                color: white,
                                fontSize: 23,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SongThumb(
                              image: AssetImage('assets/images/hothits.jpg'),
                              text: '',
                              title:
                                  'The hottest tracks in India. Cover: Sam smi...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/rewind.jpg'),
                              text: '',
                              title:
                                  'Viral classics. yup, we re at that stage...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/trending.jpg'),
                              text: '',
                              title: 'Every track you are listening...',
                            ),
                            SizedBox(width: 8),
                            SongThumb(
                              image: AssetImage('assets/images/spedup.jpg'),
                              text: ' ',
                              title: '150%',
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Recently played',
                              style: TextStyle(
                                  color: white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SongThumb(
                                image:
                                    AssetImage('assets/images/likedsongs.png'),
                                text: '',
                                title: 'Liked songs..'),
                            SizedBox(width: 8),
                            SongThumb(
                                image: AssetImage(
                                  'assets/images/joeladams.jpg',
                                ),
                                text: '',
                                title: 'Please Dont go -Joel Adams'),
                            SizedBox(width: 8),
                            SongThumb(
                                image:
                                    AssetImage('assets/images/goldenhour.jpg'),
                                text: '',
                                title: 'Golden Hour -JVKE'),
                            SizedBox(width: 8),
                            SongThumb(
                                image: AssetImage('assets/images/asitwas.jpg'),
                                text: '',
                                title: 'As It Was -Harry Styles'),
                            SizedBox(width: 8),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
