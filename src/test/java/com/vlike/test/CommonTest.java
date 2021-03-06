package com.vlike.test;

import org.apache.commons.codec.binary.Base64;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.util.StringUtils;
	
public class CommonTest {

	public static void main(String[] args) {
		String base64String = "Dear Menghua, However, I love you forever!";
		byte[] result = Base64.encodeBase64(base64String.getBytes());
		String target = new String(result);
		System.out.println(target);
		System.out.println(new String(Base64.decodeBase64(target)));
		String[] arrs = StringUtils.tokenizeToStringArray("tianpc;peng,cheng;dream", ConfigurableApplicationContext.CONFIG_LOCATION_DELIMITERS);
		for(String arr : arrs) {
			System.out.println(arr);
		}
	}

}
