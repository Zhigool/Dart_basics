import 'package:dart_basics/hw2_6/eight_task/admin_user.dart';
import 'package:dart_basics/hw2_6/eight_task/general_user.dart';
import 'package:dart_basics/hw2_6/eight_task/user.dart';

class UserManager<T extends User> {

  final Map<int, T> _users;

  UserManager({Map<int, T>? users}): _users = users ?? {};

  void add(T user) {
    _users.putIfAbsent(user.id, () => user);
  }

  bool remove(T user) {
    return _users.remove(user.id) != null;
  }

  List<String> getEmails() {
    return _users.values.map((u) =>
      u is AdminUser ? u.getMailSystem() : (u as GeneralUser).email
    ).toList();
  }
}