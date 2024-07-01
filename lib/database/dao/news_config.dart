import 'package:floor/floor.dart';
import '../entity/news_config.dart';
import 'base_dao.dart';

@dao
abstract class NewsConfigDao extends BaseDao<NewsConfig> {
  @Query('SELECT * FROM news_config')
  Future<List<NewsConfig>> getAllNewsConfig();

  @Query('SELECT * FROM news_config WHERE active = 1')
  Future<List<NewsConfig>> getAllActiveNewsConfig();

  @Query('SELECT COUNT(id) FROM news_config WHERE active = 1')
  Future<int?> getActiveNewsCount();
}
