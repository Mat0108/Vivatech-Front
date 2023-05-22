
class Conference {
  final String name;
  final String description;
  final List<Presenter> presenters;

  Conference(this.name, this.description, this.presenters);
}

class Presenter {
  final String name;
  final String imageURL;

  Presenter(this.name, this.imageURL);
}
