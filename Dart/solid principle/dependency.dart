abstract class Database {
  void save(String data);
}

class MySQLDatabase implements Database {
  @override
  void save(String data) {
    print("Saving data to MySQL database");
  }
}

class DataManager {
  final Database db;

  DataManager(this.db);

  void saveData(String data) {
    db.save(data);
  }
}

void main() {
  Database mySQL = MySQLDatabase();
  DataManager manager = DataManager(mySQL);

  manager.saveData("User data");
}
