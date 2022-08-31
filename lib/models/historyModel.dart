class historyItems {
  final String blodGroup;
  final String name;
  final String date;
  final String time;
  final String location;

  historyItems(
      {required this.blodGroup,
      required this.name,
      required this.date,
      required this.time,
      required this.location});
}

class HistoryitemList {
  List<historyItems> historylist;

  HistoryitemList({required this.historylist});
}

HistoryitemList historyitemList = HistoryitemList(historylist: [
  historyItems(
      blodGroup: "A+",
      name: "Muhammad Waseem",
      date: "21Feb2022",
      time: "03:30 pm",
      location: "Lahore"),
  historyItems(
      blodGroup: "B+",
      name: "Usama",
      date: "21Feb2022",
      time: "03:30 pm",
      location: "Khaniwal"),
  historyItems(
      blodGroup: "A-",
      name: "Moin Arshad",
      date: "21Feb2022",
      time: "03:30 pm",
      location: "Multan"),
  historyItems(
      blodGroup: "B-",
      name: "Adnan Manzoor",
      date: "21Feb2022",
      time: "03:30 pm",
      location: "AliPur"),
  historyItems(
      blodGroup: "B-",
      name: "Adnan Manzoor",
      date: "21Feb2022",
      time: "03:30 pm",
      location: "AliPur"),
]);
