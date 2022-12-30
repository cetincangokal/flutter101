class PortModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PortModel2 {
  int userId;
  int id;
  String title;
  String body;
  PortModel2(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PortModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PortModel3(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PortModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PortModel4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class PortModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;
  int get userId => _userId;
  PortModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  }):_userId = userId, _id = id, _title = title, _body = body;
  
  //{
   // int _userId = userId;
   // int _id = id;
   // String _title = title;
   // String _body = body;
 // }

}

class PortModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;
  PortModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  })
  {
   int _userId = userId;
   int _id = id;
   String _title = title;
   String _body = body;
  }

  }

  class PortModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;
  PortModel7({
     int userId = 0,
     int id = 0,
     String title = '',
     String body = '',
  })
  {
   int _userId = userId;
   int _id = id;
   String _title = title;
   String _body = body;
  }

  }
class PortModel8 {
   final int? userId;
   final int? id;
   final String? title;
   final String? body;
  PortModel8({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  


  PortModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PortModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
  }
