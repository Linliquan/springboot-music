package com.ss.vv.common;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;

public abstract class AbstractService<T extends Serializable, U extends Serializable> implements IServiceOperations<T, U> {

	protected abstract IOperations<T, U> getMapper();
	
	protected String tableName = "";

	public abstract void setTableName(String tableName);
	
	protected String getTableName() {
		return this.tableName;
	}
	
	@Override
	public void insert(T entity) {
		getMapper().insert(entity, this.getTableName());
	}

	@Override
	public void insertByBatch(List<T> list) {
		getMapper().insertByBatch(list, this.getTableName());
	}

	@Override
	public int update(T entity) {
		return getMapper().update(entity, this.getTableName());
	}

	@Override
	public U getById(int id) {
		return getMapper().getById(id, this.getTableName());
	}
    
	@Override
	public U getOne(LinkedHashMap<String, String> condition) {
		String field = null;
		return this.getOne(condition, field, this.getTableName());
	}

	@Override
	public U getOne(LinkedHashMap<String, String> condition, String field) {
		return getMapper().getOne(condition, field, this.getTableName());
	}

	@Override
	public int getCount(LinkedHashMap<String, String> condition, String field) {
		return getMapper().getCount(condition, field, this.getTableName());
	}

	@Override
	public List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize, String order, String field) {
		int offset = (pageNo - 1) * pageSize;
		int limit = pageSize;
		return getMapper().getList(condition, offset, limit, order, field, this.getTableName());
	}

	@Override
	public int delBySign(int id) {
		return getMapper().delBySign(id, this.getTableName());
	}

	@Override
	public int delete(LinkedHashMap<String, String> condition) {
		return getMapper().delete(condition, this.getTableName());
	}

	@Override
	public int deleteById(int entityId) {
		return getMapper().deleteById(entityId, this.getTableName());
	}

	@Override
	public List<U> getList(int pageNo, int pageSize) {
		String order = null;
		return this.getList(pageNo, pageSize, order);
	}

	@Override
	public List<U> getList(int pageNo, int pageSize, String order) {
		String field = null;
		return this.getList(pageNo, pageSize, order, field);
	}

	@Override
	public List<U> getList(int pageNo, int pageSize, String order, String field) {
		LinkedHashMap<String, String> condition = new LinkedHashMap<String, String>();
		return this.getList(condition, pageNo, pageSize, order, field);
	}

	@Override
	public List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize) {
		String order = null;
		return this.getList(condition, pageNo, pageSize, order);
	}

	@Override
	public List<U> getList(LinkedHashMap<String, String> condition, int pageNo, int pageSize, String order) {
		String field = null;
		return this.getList(condition, pageNo, pageSize, order, field);
	}

	@Override
	public int existTable(String tableName) {
		return getMapper().existTable(tableName);
	}

	@Override
	public int createTable(String tableName) {
		return getMapper().createTable(tableName);
	}

	// 以下暂时没有场景用到，留在这里，需要时候根据实际情况进行修改即可。
	@Override
	public void insert(T entity, String tableName) {
		this.getMapper().insert(entity, tableName);
	}

	@Override
	public void insertByBatch(List<T> list, String tableName) {
		this.getMapper().insertByBatch(list, tableName);
	}

	@Override
	public int update(T entity, String tableName) {
		return this.update(entity, tableName);
	}

	@Override
	public U getById(int id, String tableName) {
		return this.getMapper().getById(id, tableName);
	}

	@Override
	public U getOne(LinkedHashMap<String, String> condition, String field, String tableName) {
		return this.getMapper().getOne(condition, field, tableName);
	}

	@Override
	public int getCount(LinkedHashMap<String, String> condition, String field, String tableName) {
		return this.getMapper().getCount(condition, field, tableName);
	}

	@Override
	public List<U> getList(LinkedHashMap<String, String> condition, int offset, int limit, String order, String field, String tableName) {
		return this.getMapper().getList(condition, offset, limit, order, field, tableName);
	}

	@Override
	public int delBySign(int id, String tableName) {
		return this.getMapper().delBySign(id, tableName);
	}

	@Override
	public int delete(LinkedHashMap<String, String> condition, String tableName) {
		return this.getMapper().delete(condition, tableName);
	}

	@Override
	public int deleteById(int entityId, String tableName) {
		return this.getMapper().deleteById(entityId, tableName);
	}
}

