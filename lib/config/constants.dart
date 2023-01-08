//Game
// how many questions in the game
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
  DateTime now = DateTime.now();;
  DateTime date = new DateTime(now.year, now.month, now.day);
  return '${date.year}-${date.month}-${date.day}';
}
