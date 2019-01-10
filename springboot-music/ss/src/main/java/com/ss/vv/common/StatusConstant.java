package com.ss.vv.common;

/**
 * @author linliquan
 * @version
 * @since JDK 1.8
 * @see
 */
public class StatusConstant {
	
	
	// 错误码
	public static final int HTTP_OK_CODE = 200;
	public static final int SERVER_INTERNAL_ERROR_CODE = 500;
	public static final int BAD_REQUEST_CODE = 400;
	public static final int REQUEST_NOT_FOUND_CODE = 404;
	public static final int PARAMS_NULL_CODE = 501;
	public static final int PARAMS_ERROR_CODE = 502;
	//请添加不在上述之列的错误码
	
	
	// 错误码对应的错误消息
	private static final String HTTP_OK_MSG = "OK!";
	private static final String SERVER_INTERNAL_ERROR_MSG = "The server you just visited has a internal error!";
	private static final String BAD_REQUEST_MSG = "Bad request!";
	private static final String REQUEST_NOT_FOUND_MSG = "The request not found!";
	private static final String PARAMS_NULL_MSG = "Param is null!";
	private static final String PARAMS_ERROR_MSG = "Param is error!";
	//请添加不在上述之列的错误码对应的消息
	
	//内部错误识别码，不能接口输出，仅用于console和日志输出
	//当发生内部错误时，将内部错误信息写入日志，而对外输出SERVER_INTERNAL_ERROR错误信息，可以使用 /800 进行判断
	//如有存在的未在列的错误类型，请自行添加
	
	//内部错误码
	public static final int DB_QUERY_EXCEPTION_CODE = 800;
	public static final int DB_INSERT_EXCEPTION_CODE = 801;
	public static final int DB_UPDATE_EXCEPTION_CODE = 802;
	public static final int DB_DELETE_EXCEPTION_CODE = 803;
	public static final int USER_NOT_FOUND_CODE = 820;
	public static final int REQUEST_EXCEED_LIMIT_CODE = 821;
	//请添加不在上述之列的服务器内部错误码
	
	
	//内部错误码对应的消息
	private static final String DB_QUERY_EXCEPTION_MSG = "DB query error!";
	private static final String DB_INSERT_EXCEPTION_MSG = "DB insert error!";
	private static final String DB_UPDATE_EXCEPTION_MSG = "DB update error!";
	private static final String DB_DELETE_EXCEPTION_MSG = "DB delete error!";
	private static final String USER_NOT_FOUND_MSG = "User not found!";
	private static final String REQUEST_EXCEED_LIMIT_MSG = "Warn: Request exceed limit times!";
	//请添加不在上述之列的服务器内部错误码对应的消息
	
}

