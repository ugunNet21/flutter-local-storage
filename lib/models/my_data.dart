import 'package:hive/hive.dart';
part 'my_data.g.dart';
@HiveType(typeId: 0)
class MyData extends HiveObject {
  @HiveField(0)
  late String value;

  MyData(this.value);
}
