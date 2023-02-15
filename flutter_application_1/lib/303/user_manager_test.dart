import 'package:flutter_application_1/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test('User calculate', () {
    final users = [
      GenericUser('cetin', '11', 10),
      GenericUser('tta', '21', 10),
      GenericUser('aysu', '31', 20)
    ];
    final userManagement = UserManagement(AdminUser('cAdmin', 'ad', 15, 0));
    final result =
        userManagement.calculateMoney(users);
    final response = userManagement.showNames<String>(users);
    expect(result, 40);
  });
}
