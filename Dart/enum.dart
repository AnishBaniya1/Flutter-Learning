enum onboardingEnum {
  one(title: 'title1', body: 'body1'),
  two(title: 'title2', body: 'body2'),
  three(title: 'title3', body: 'body3 ');

  const onboardingEnum({required this.title, required this.body});
  final String title;
  final String body;
}

void main() {
  String title = onboardingEnum.values.elementAt(1).title;
  print(title);
}
