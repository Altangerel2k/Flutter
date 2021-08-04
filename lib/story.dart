class Story {
  String name;
  String fileName;

  Story(this.name, this.fileName);
}

initializeStories() {
	List<Story> _stories = new List<Story>();
  _stories.add(new Story('Story#1 - Гурван тоорой', 'assets/audios/story1-gurvan-tooroi.mp3'));
  _stories.add(new Story('Story#2 - Өнхрүүш', 'assets/audios/story2-onkhruush.mp3'));
  _stories.add(new Story('Story#3 - Эвтэй дөрвөн амьтан', 'assets/audios/story3-evtei-durvun-amitan.mp3'));

  return _stories;
}
