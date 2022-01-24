import 'package:dart_basics/hw2_6/eight_task/admin_user.dart';
import 'package:dart_basics/hw2_6/eight_task/general_user.dart';
import 'package:dart_basics/hw2_6/eight_task/user.dart';
import 'package:dart_basics/hw2_6/eight_task/user_manager.dart';
import 'package:test/test.dart';

void main() {
  group('UserManager tests', () {
    test('Add admin user', () {
      Map<int, User> users = {};
      var userManager = UserManager(users: users);
      var adminUser = AdminUser(0, "123@rambler.ru");
      userManager.add(adminUser);
      expect(users.containsValue(adminUser), true);
    });
    test('Add general user', () {
      Map<int, User> users = {};
      var userManager = UserManager(users: users);
      var adminUser = GeneralUser(0, "123@rambler.ru");
      userManager.add(adminUser);
      expect(users.containsValue(adminUser), true);
    });
    test('Remove admin user', () {
      Map<int, User> users = {};
      var adminUser = GeneralUser(0, "123@rambler.ru");
      users.putIfAbsent(adminUser.id, () => adminUser);
      var userManager = UserManager(users: users);
      expect(userManager.remove(adminUser), true);
      expect(users.isEmpty, true);
    });
    test('Get user emails', () {
      Map<int, User> users = {};
      var generalUser = GeneralUser(0, "123@rambler.ru");
      var adminUser = AdminUser(1, "234@yandex.ru");
      users.putIfAbsent(generalUser.id, () => generalUser);
      users.putIfAbsent(adminUser.id, () => adminUser);
      var userManager = UserManager(users: users);
      expect(userManager.getEmails(), ["123@rambler.ru", "yandex.ru"]); // order?
    });
  });
}