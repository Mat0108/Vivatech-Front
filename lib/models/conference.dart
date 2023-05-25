class Conference {
  final String imageURL;
  final String theme;
  final String name;
  final List<Day> program;

  Conference(this.name,  this.program, this.theme, this.imageURL);
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
