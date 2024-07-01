import 'package:floor/floor.dart';
import '../entity/tags.dart';
import 'base_dao.dart';

@dao
abstract class TagsDao extends BaseDao<Tags> {

  @Query('SELECT * FROM tags ORDER BY name')
  Future<List<Tags>> getAllTags();

  @Query("SELECT * FROM tags WHERE tag_type = 'medical_condition'")
  Future<List<Tags>> getAllMedicalConditions();

  @Query("SELECT * FROM tags WHERE parent_id = 0 AND tag_type != 'medical_condition' ORDER BY name")
  Future<List<Tags>> getAllClinicalRecordCategories();

  @Query("SELECT * FROM tags WHERE parent_id = 0 AND tag_type != 'medical_condition' AND name NOT LIKE 'Others%' ORDER BY name")
  Future<List<Tags>> getAllClinicalRecordCategoriesWithOutOthers();

  @Query("SELECT * FROM tags WHERE parent_id = 0 AND tag_type != 'medical_condition' AND name LIKE 'Others%' ORDER BY name")
  Future<List<Tags>> getAllClinicalRecordCategoriesOnlyOthers();

  @Query('SELECT * FROM tags WHERE parent_id = 0 AND tag_type = :tagType ORDER BY name')
  Future<List<Tags>> getCategoriesByTagType(String tagType);

  @Query('SELECT * FROM tags WHERE parent_id = :parentId ORDER BY name')
  Future<List<Tags>> getClinicalRecordSubCategoriesByParentId(int parentId);

  @Query('SELECT COUNT(tag_id) FROM tags WHERE parent_id = :parentId')
  Future<int?> getSubCategoriesByParentIdCount(int parentId);

  @Query('SELECT name FROM tags WHERE tag_id = :tagId')
  Future<String?> getTagNameById(int tagId);

  @Query('SELECT tag_type FROM tags WHERE tag_id = :tagId')
  Future<String?> getTagTypeById(int tagId);
}
