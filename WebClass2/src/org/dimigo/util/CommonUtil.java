/**
 * 
 */
package org.dimigo.util;

import javax.swing.Action;

/**
 * <pre>
 * org.dimigo.util
 *  |_ CommonUtil
 *
 * 1. 개요 : 
 * 2. 작성일 : 2017. 10. 31.
 * </pre>
 *
 * @author      : shinjuyoung
 * @version     : 1.0
 */
public class CommonUtil {
	
	public static boolean isEmpty(String s) {
		return s == null || "".equals(s.trim());
	}
	
	public static void main(String[] args) {
		String uri = "/Webclass/login.do";
		
		String actionName = uri.substring(uri.lastIndexOf("/") + 1); //
		actionName = actionName.substring(0,actionName.indexOf("."));
		System.out.println("actionNaem = " + actionName);
		
	}

}
