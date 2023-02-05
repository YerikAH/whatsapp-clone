class CallModel {
  final String name;
  final int lastCallDay;
  final int lastCallMounth;
  final int countCalls;
  final bool answer;
  final String avatar;
  final String time;

  CallModel(
      {required this.name,
      required this.lastCallDay,
      required this.lastCallMounth,
      required this.countCalls,
      required this.answer,
      required this.avatar,
      required this.time});
}
