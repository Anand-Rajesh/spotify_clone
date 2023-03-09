import 'package:flutter/material.dart';

import '../const.dart';

class SongThumb extends StatelessWidget {
  const SongThumb({Key? key, this.image, this.text, this.title})
      : super(key: key);

  final image;

  final text;

  final title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 150,
      child: Column(
        children: [
          Stack(children: [
            SizedBox(
                height: 140,
                width: 150,
                child: Image(
                  image: image,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 15),
              child: Text(
                text,
                style: TextStyle(
                    color: white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ]),
          const SizedBox(height: 10),
          Expanded(
              child: Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
          ))
        ],
      ),
    );
  }
}

class BrowseTab extends StatelessWidget {
  const BrowseTab({Key? key, required this.text, required this.color}) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(top: 10, left: 10),
        child: Text(text,
            style: TextStyle(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 17)),
      ),
    );
  }
}
