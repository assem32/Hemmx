import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://ichef.bbci.co.uk/news/976/cpsprodpb/888C/production/_128065943_gettyimages-1450389057.jpg.webp'),
            ),
            SizedBox(width: 10),
            Text(
              'Chats',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.edit, color: Colors.black),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [Icon(Icons.search), Text('Search')],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (context, index) => buildStroyitem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 12,
                  ),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => chatItem(),
                separatorBuilder: (context, index) => SizedBox(
              height: 12,
                ),
                itemCount: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStroyitem() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRiULU6xp8Ls7qSNmipLUuaC9BMdy_8j_vvz6KfXTpoaRusojsRb0x2hBNdmeZrCwPzuNflBFvgz1a2yrk'),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ],
            )
          ],
        ),
        Text('Cristino'),
      ],
    );

Widget chatItem() => Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://ichef.bbci.co.uk/news/976/cpsprodpb/888C/production/_128065943_gettyimages-1450389057.jpg.webp'),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'leo messi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'how are you assem how are you assemhow are you assemhow are you assemhow are you assemhow are you assemhow are you assemhow are you assem',
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
