class Assets {
  static final String logo = _path('logo', 'png');
  static final String cat = _path('cat', 'png');
}

String _path(String name, String type) {
  return 'assets/images/$name.$type';
}
