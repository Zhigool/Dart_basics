class User {
  final int id;
  final String email;
  User({
    required this.id,
    required this.email
  });
}

mixin UserMixin on User {
  String getMailSystem() {
    if (!_emailIsValid(email)) {
      throw Exception("Email is not valid!");
    }
    return email.split("@")[1];
  }
  bool _emailIsValid(String email) {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
    ).hasMatch(email);
  }
}