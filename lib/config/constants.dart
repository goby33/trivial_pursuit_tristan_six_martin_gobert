//Game
// how many questions in the game
import 'package:intl/intl.dart';

const String NAME_FOLDERS = 'questionOfTheDay';

const int NB_QUESTIONS = 10;
// how many point for an easy question
const int EASY_SCORE = 1;
// how many point for a medium question
const int MEDIUM_SCORE = 2;
// how many point for a hard question
const int HARD_SCORE = 3;

enum DIFFICULTY_QUESTION {
  any,
  easy,
  medium,
  hard,
}

enum TYPE_QUESTION {
  any,
  multiple,
  boolean,
}

//get date of today
String getDateToday() {
  // get date of today in format yyyy-MM-dd
  DateTime today = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(today);
}

