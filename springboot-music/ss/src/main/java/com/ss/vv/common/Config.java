package com.ss.vv.common;

import java.util.HashMap;
import java.util.Map;

public class Config {
	public static String VERSION = "V3.0.0";

	/**
	 * 表的前缀
	 */

	public static final boolean RESET_XML = false; // 是否重置xml文件

	/**
	 * 项目物理地址
	 */
//	public static final String PROJECT_PATH = "E:/work/support";
//	public static final String PROJECT_PATH = "E:/work";

	/**
	 * mappings 要存放的模块名称
	 */
	public static final String mapperFilePath = "mapper"; // 模块名称。

	public static final String HTML_FILE_PATH = "";

	public static String getPoType(String columnType) {
		Map<String, String> poType = new HashMap<String, String>();
		poType.put("INT", "Integer");
		poType.put("INT UNSIGNED", "Integer");
		poType.put("BIT", "Integer");
		poType.put("TINYINT", "Integer");
		poType.put("DOUBLE", "Double");
		poType.put("DECIMAL", "BigDecimal");
		poType.put("DECIMAL UNSIGNED", "BigDecimal");
		poType.put("VARCHAR", "String");
		poType.put("SMALLINT", "Integer");
		poType.put("CHAR", "String");
		poType.put("TIMESTAMP", "String");
		poType.put("MEDIUMTEXT", "String");
		poType.put("TEXT", "String");
		poType.put("DATETIME", "String");
		return poType.get(columnType);
	}

	public static String getJdbcType(String columnType) {
		Map<String, String> poType = new HashMap<String, String>();
		poType.put("INT", "INTEGER");
		poType.put("INT UNSIGNED", "INTEGER");
		poType.put("BIT", "INTEGER");
		poType.put("TINYINT", "INTEGER");
		poType.put("DOUBLE", "DOUBLE");
		poType.put("DECIMAL", "DECIMAL");
		poType.put("DECIMAL UNSIGNED", "DECIMAL");

		poType.put("VARCHAR", "VARCHAR");
		poType.put("SMALLINT", "SMALLINT");
		poType.put("CHAR", "CHAR");
		poType.put("TIMESTAMP", "TIMESTAMP");
		poType.put("TEXT", "LONGVARCHAR");
		poType.put("MEDIUMTEXT", "LONGVARCHAR");
		poType.put("DATETIME", "TIMESTAMP");
		return poType.get(columnType);
	}

	public static void main(String[] args) {
//		AutoUtil au = new AutoUtil();
//		au.run();

	}

}

