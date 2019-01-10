package com.ss.vv.common;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IServiceOperations<T extends Serializable, U extends Serializable> extends IOperations<T, U> {

	void setTableName(String tableName);
	
	void insert(final T entity);
	
	public void insertByBatch(List<T> list);

	int update(final T entity);

	U getById(final int id);

	U getOne(LinkedHashMap<String, String> condition, String field);

	int getCount(LinkedHashMap<String, String> condition, String field);

	int delBySign(final int id);

	int delete(LinkedHashMap<String, String> condition);

	int deleteById(final int entityId);

	List<U> getList(int pageNo, int pageSize);

	List<U> getList(int pageNo, int pageSize, String order);

	List<U> getList(int pageNo, int pageSize, String order, String field);

	List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize);

	List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize, String order);

	U getOne(LinkedHashMap<String, String> condition);

	List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize, String order, String field);
}

