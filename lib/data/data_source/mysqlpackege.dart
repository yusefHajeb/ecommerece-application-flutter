import 'package:mysql1/mysql1.dart';

Future<void> getResults() async {
  var seting =  ConnectionSettings(
    host: "localhost",
    db: "ecommerce",
    // port: 3306,
    user: 'root',
    password: '',
  );
  var conn = await MySqlConnection.connect(seting);

  var result = await conn.query("SELECT * FROM users");

  for (var raw in result) {
    print(raw);
  }

  await conn.close();
}
