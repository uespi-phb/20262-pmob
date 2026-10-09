import 'dart:convert';
import 'dart:io';

enum DifficultyLevel {
  easy,
  medium,
  hard,
}

class Question {
  final String text;
  final String difficulty;
  final List<DifficultyLevel> levels;

  Question({
    required this.text,
    required this.difficulty,
    required this.levels,
  });

  factory Question.from(dynamic data) {
    final levels = data['relatedLevels'] as List<dynamic>;
    return Question(
      text: data['text'],
      difficulty: data['difficulty'],
      levels: List<DifficultyLevel>.generate(levels.length, (index) {
        return DifficultyLevel.values.byName(levels[index]);
      }),
    );
  }

  @override
  String toString() {
    return 'Question($text)';
  }
}

void main() {
  final json = File('data.json').readAsStringSync();
  final data = jsonDecode(json);
  final List<Question> questions = [];

  for (var q in data) {
    // print('q=$q');

    questions.add(Question.from(q));
  }

  print(questions);
}
