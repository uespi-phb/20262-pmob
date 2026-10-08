import 'dart:convert';

const json = '''
[
  {
    "text": "O que é Flutter?",
    "difficulty": "easy",
    "relatedLevels": ["easy", "medium"]
  },
  {
    "text": "Qual linguagem é utilizada pelo Flutter?",
    "difficulty": "easy",
    "relatedLevels": ["easy"]
  },
  {
    "text": "O que é um StatefulWidget?",
    "difficulty": "medium",
    "relatedLevels": ["easy", "medium"]
  },
  {
    "text": "Qual a diferença entre hot reload e hot restart?",
    "difficulty": "medium",
    "relatedLevels": ["medium", "hard"]
  },
  {
    "text": "Explique o ciclo de vida de um widget com estado.",
    "difficulty": "hard",
    "relatedLevels": ["medium", "hard"]
  }
]
''';

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
    return 'Question($text,$difficulty, $levels)';
  }
}

void main() {
  final data = jsonDecode(json);
  final List<Question> questions = [];

  for (var q in data) {
    // print('q=$q');

    questions.add(Question.from(q));
  }

  print(questions);
}
