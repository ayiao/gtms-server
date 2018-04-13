package cn.gtms.util;

import java.util.List;

public class StringUtils {
	@SuppressWarnings("rawtypes")
	public static String listToString(List list, char separator) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i)).append(separator);
		}
		if(sb.toString().isEmpty()){
			return "";
		}else{
			return sb.toString().substring(0, sb.toString().length() - 1);
		}
	}
	@SuppressWarnings("rawtypes")
	public static String listToString(List list, String separator) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i)).append(separator);
		}
		if(sb.toString().isEmpty()){
			return "";
		}else{
			return sb.toString().substring(0, sb.toString().length() - separator.length());
		}
	}
}
