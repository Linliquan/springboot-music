/** 
* 
* @author linliquan 
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.domain;

import java.math.BigDecimal;
import java.util.Date;

public class Test implements java.io.Serializable {
	private Integer testId; // 测试ID
	private String testName; // 测试名称
	private String info; // 测试名称
	private String other; // 测试名称

	public Integer getTestId() {
		return testId;
	}

	public void setTestId(Integer testId) {
		this.testId = testId;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

}
