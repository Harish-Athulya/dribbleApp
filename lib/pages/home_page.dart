import 'package:dribble/util/emoticon_face.dart';
import 'package:dribble/util/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var now = new DateTime.now();
var formatter = new DateFormat.yMd();
final String formattedDate = DateFormat('dd MMM yyyy').format(now);

// String formattedDate = "";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* var _now = DateTime.now();
  var _formatter = new DateFormat('dd-MMM-yyyy');
  String formattedDate = _formatter.format(_now);
 */
  // print(formattedDate); // 2016-01-25

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Welcome, first Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, User!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 29, 102, 142),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            formattedDate,
                            style: TextStyle(
                                color: Color.fromARGB(255, 222, 52, 128)),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 222, 52, 128),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 29, 102, 142),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Search",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 29, 102, 142),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // 4 faces

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          EmoticonFace(emoticonFace: '❤️'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Like',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 29, 102, 142)),
                            ),
                          ),
                        ]),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😂'),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Haha',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 29, 102, 142)),
                              ),
                            ),
                          ],
                        ),
                        Column(children: [
                          EmoticonFace(emoticonFace: '😎'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Cool',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 29, 102, 142)),
                            ),
                          ),
                        ]),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😔'),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Sad',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 29, 102, 142)),
                              ),
                            )
                          ],
                        ),

                        // EmoticonFace(emoticonFace: '❤️'),
                        // EmoticonFace(emoticonFace: '😇'),
                        // EmoticonFace(emoticonFace: '😎'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[350],
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.nordic_walking,
                            exerciseName: "Walking",
                            numberOfExercise: 15,
                            customColor: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.accessibility_new_outlined,
                            exerciseName: "Yoga",
                            numberOfExercise: 41,
                            customColor: Colors.red,
                          ),
                          ExerciseTile(
                            icon: Icons.star_border_purple500_rounded,
                            exerciseName: "Physiotherapy",
                            numberOfExercise: 35,
                            customColor: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.keyboard,
                            exerciseName: "Jogging",
                            numberOfExercise: 19,
                            customColor: Colors.purple,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
