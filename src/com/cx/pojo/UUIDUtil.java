package com.cx.pojo;

import java.util.UUID;


public final class UUIDUtil {
	/**
	 * <p>�������UUID�ַ���</p>
	 * @return	UUID�ַ���
	 */
	public static final String randomUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
