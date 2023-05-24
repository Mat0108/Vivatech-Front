class Conference {
  final String name;
  final String description;
  final List<Day> program;

  Conference(this.name, this.description, this.program);
}

class Day {
  final String title;
  final List<Session> sessions;

  Day(this.title, this.sessions);
}

class Session {
  final String name;
  final String time;
  final List<Presenter> presenters;

  Session(this.time, this.presenters, this.name);
}

class Presenter {
  final String name;
  final String imageURL;

  Presenter(this.name, this.imageURL);
}
