package com.ss.vv.common;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IOperations<T extends Serializable, U extends Serializable> {

	void insert(@Param("entity") final T entity, @Param("tableName") String tableName);

	void insertByBatch(@Param("list") List<T> list, @Param("tableName") String tableName);

	int update(@Param("entity") final T entity, @Param("tableName") String tableName);

	U getById(@Param("id") final int id, @Param("tableName") String tableName);

	U getOne(@Param("condition") LinkedHashMap<String, String> condition, @Param("field") String field, @Param("tableName") String tableName);

	int getCount(@Param("condition") LinkedHashMap<String, String> condition, @Param("field") String field, @Param("tableName") String tableName);

	List<U> getList(@Param("condition") LinkedHashMap<String, String> condition, @Param("offset") int offset, @Param("limit") int limit, @Param("order") String order,
			@Param("field") String field, @Param("tableName") String tableName);

	int delBySign(@Param("id") final int id, @Param("tableName") String tableName);

	int delete(@Param("condition") LinkedHashMap<String, String> condition, @Param("tableName") String tableName);

	int deleteById(@Param("id") final int id, @Param("tableName") String tableName);

	// 以下方法特殊，为判断表是否存在，批量和创建表

	int existTable(@Param("tableName") String tableName);

	int createTable(@Param("tableName") String tableName);

}

