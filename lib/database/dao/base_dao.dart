import 'package:floor/floor.dart';


abstract class BaseDao<T> {
  @Insert(onConflict: OnConflictStrategy.abort)
  Future<void> insert(T object);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertOrUpdate(T object);

  @Insert(onConflict: OnConflictStrategy.abort)
  Future<void> insertList(List<T> list);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertOrUpdateList(List<T> list);

  @Update(onConflict: OnConflictStrategy.abort)
  Future<void> update(T object);

  @Update(onConflict: OnConflictStrategy.abort)
  Future<void> updateList(List<T> list);

  @delete
  Future<void> deleteObject(T object);
  
  @delete
  Future<void> deleteList(List<T> list);
}
