class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Love slogan for you is ______",
    "options": [
      'Our relationship should be monagamous',
      'We are in a relationship.',
      'It is nothing serious.',
    ],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question":
        "If you relive your love with him From the first day until this minute",
    "options": [
      'Unforgettable happiness, good luck to meet you.',
      'Undercooked, this is love.',
      'Hit with every day. More delicious than eating Tom Yum Kung'
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "If your boyfriend is mad at you, you will ______",
    "options": [
      'Sweet talk, let him cool down first. Other matters will be cleared later.',
      'Keep calm for a minute. If you say anything, life may be unsafe.',
      'Walk away, I do not want to care about a stupid guy.'
    ],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Today is your 6 month dating anniversary.",
    "options": [
      'Said that you love him the most with one gift instead of love.',
      'Invite him to eat, watch a movie.',
      'What will he do today, I will indulge him everything.'
    ],
    "answer_index": 3,
  },
];
