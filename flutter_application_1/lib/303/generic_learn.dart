class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;
    final sumMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => previousValue + element);
    final _money = users.fold<int>(
        0, (previousValue, element) => previousValue + element.money);
    return (_money);
  }

  Iterable<CGModel<R>>? showNames<R>(List<GenericUser> users) {
    //bunu sadece role 1 olanlar görebilir
    if (R == String) {
      final names = users.map((e) => CGModel<R>(e.name.split('').toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class CGModel<T> {
  final String name = 'CG';
  final List<T> items;

  CGModel(this.items);
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;

  AdminUser(super.name, super.id, super.money, this.role);
}
