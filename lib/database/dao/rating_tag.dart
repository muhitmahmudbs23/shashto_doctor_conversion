import 'package:floor/floor.dart';
import '../entity/rating_tag.dart';
import 'base_dao.dart';

@dao
abstract class RatingTagDao extends BaseDao<RatingTag> {
  @Query('SELECT * FROM rating_tag_table')
  Future<List<RatingTag>> getRatingTagList();
}

