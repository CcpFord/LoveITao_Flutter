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
      'I have just only you in my life, my life is beautiful.',
      'It is nothing serious.',
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "How far do you give importance to your lover's demerits?",
    "options": [
      'Never spotted any',
      'Can deal with them',
      'Yeah, I can manage as they do tolerate my flaws',
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "If your boyfriend is mad at you, you will ______",
    "options": [
      'Sweet talk, let him cool down first. Other matters will be cleared later.',
      'Keep calm for a minute. If I say anything, life may be unsafe.',
      'Walk away, I do not want to care about a stupid guy.'
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Today is your 6 month dating anniversary.",
    "options": [
      'Said that I love him/her the most with one gift instead of love.',
      'Invite him to have dinner, watch a movie.',
      'What you want to do today, I will indulge you everything.'
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What character of your lover can you not tolerate?",
    "options": ['Hot temper', 'Easy going', 'Possessiveness'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "How much you think about your lover?",
    "options": [
      'Sometimes when I have nothing much to do',
      'Most of the time',
      'Too busy to think about my lover'
    ],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "How does it feel to live with this person?",
    "options": [
      'It is still too early to say',
      'Time flies ... I love to spend time with my sweet partner',
      'It is a drag.. not my kind I guess'
    ],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Something that puts you off?",
    "options": [
      'Lover acting odd among friends and family',
      'Your lover has found interest in someone else',
      'Your lover is controlling you'
    ],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "When the two of you are alone, you feel?",
    "options": [
      'Bored : I just feel like leaving as soon as possible',
      'Attentive: Interested in making sure he or she is comfortable and entertained.',
      'Relaxed: Without a care in the world.",'
    ],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Where would you like to be with your partner?",
    "options": ['Fancy dinner', 'Shopping complex', 'Beach'],
    "answer_index": 2,
  },
];
