import 'package:dart_basics/hw2_6/eight_task/user.dart';

class AdminUser extends User with UserMixin {
  AdminUser(int id, String email) : super(id: id, email: email);
}