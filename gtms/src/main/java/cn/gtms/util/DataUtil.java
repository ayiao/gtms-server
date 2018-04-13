package cn.gtms.util;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.linkgoo.common.util.CacheUtils;
import com.linkgoo.framework.authc.Subject;
import com.linkgoo.framework.util.StringUtils2;

public class DataUtil {
	private DataUtil() {

	}

	private static SimpleDateFormat simpleDateFormat1=new SimpleDateFormat("yyyy-MM-dd");
	private static SimpleDateFormat simpleDateFormat2=new SimpleDateFormat("yyyyMMdd");
	
	public static double formatDoubleValue(double value) {
		try {
			return BigDecimal.valueOf(value).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
		} catch (NumberFormatException e) {
			return 0D;
		}
	}
	
	public static double doubleDataFormat(double value,int scale){
		try {
			return BigDecimal.valueOf(value).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
		} catch (NumberFormatException e) {
			return 0D;
		}
	}

	public static String formatQtyValue(String value) {
		if (value != null) {
			return value.replaceAll(",", "");
		} else {
			return value;
		}
	}

	public static String toUpperCase(String data) {
		if ("".equals(data) || data == null) {
			return data;
		} else {
			return data.toUpperCase();
		}
	}

	public static String handleNumber(String data) {
		String str = "";
		if (isNullOrEmpty(data)) {
			str = "0";
		} else {
			str = data;
		}
		return str;
	}

	public static String toLowerCase(String data) {
		if ("".equals(data) || data == null) {
			return data;
		} else {
			return data.toLowerCase();
		}
	}

	public static String excelColIndexToStr(int columnIndex) {
		if (columnIndex <= 0) {
			return null;
		}
		String columnStr = "";
		columnIndex--;
		do {
			if (columnStr.length() > 0) {
				columnIndex--;
			}
			columnStr = ((char) (columnIndex % 26 + (int) 'A')) + columnStr;
			columnIndex = (int) ((columnIndex - columnIndex % 26) / 26);
		} while (columnIndex > 0);
		return columnStr;
	}

	public static int excelColStrToNum(String colStr, int length) {
		int num = 0;
		int result = 0;
		for (int i = 0; i < length; i++) {
			char ch = colStr.charAt(length - i - 1);
			num = (int) (ch - 'A' + 1);
			num *= Math.pow(26, i);
			result += num;
		}
		return result;
	}

	public static boolean isNullOrEmpty(String checkData) {
		return checkData == null || checkData.isEmpty();
	}

	public static boolean isNullOrEmpty(JSONArray jsonArray) {
		return jsonArray == null || jsonArray.isEmpty();
	}

	public static String getUserName() {
		Subject subject = CacheUtils.subject();
		return subject == null ? "" : subject.getUsername();
	}

	public static boolean isNumeric(String str) {
		for (int i = str.length(); --i >= 0;) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}
	
	public static int stringToInt(String value){
		return Double.valueOf(value).intValue();
	}
	
	public static double stringToDouble(String value){
		return Double.valueOf(value);
	}
	
	public static String replaceNullString(String str){
		if(DataUtil.isNullOrEmpty(str)){
			return "";
		}else{
			return str;
		}
	}
	public static boolean isOdd(int a){   
	    if(a%2 == 1){   //是奇数   
	        return true;   
	    }   
	    return false;   
	}  
	

	public static boolean isNullOrEmtryOrNullString(String checkString){
		return DataUtil.isNullOrEmpty(checkString)||"null".equals(checkString);
	}
	
	public static double checkDouble(Double v){
		return v==null?0D:v;
	}
	
	public static void setFieldValue(Field field,String value,Object entity) throws Exception{
		try {
			Class<?> fieldType=field.getType();
			if ((Integer.TYPE == fieldType) || (Integer.class == fieldType)) {
                field.set(entity,Integer.valueOf(value) );
            } else if (String.class == fieldType) {
                field.set(entity, value);
            } else if ((Long.TYPE == fieldType) || (Long.class == fieldType)) {
                field.set(entity, Long.valueOf(value));
            } else if ((Float.TYPE == fieldType) || (Float.class == fieldType)) {
                field.set(entity, Float.valueOf(value));
            } else if ((Short.TYPE == fieldType) || (Short.class == fieldType)) {
                field.set(entity, Short.valueOf(value));
            } else if ((Double.TYPE == fieldType) || (Double.class == fieldType)) {
                field.set(entity, Double.valueOf(value));
            }  else if (Date.class == fieldType) {
            	if(!DataUtil.isNullOrEmpty(value) ){
            		try{
                    	field.set(entity, simpleDateFormat1.parse(value));
            		}catch (Exception e) {
            			field.set(entity, simpleDateFormat2.parse(value));
					}
            	}
            }
		} catch (IllegalArgumentException | IllegalAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	public static boolean isIntegerForDouble(double obj) {
		double eps = 1e-10;  // 精度范围
		return obj-Math.floor(obj) < eps;
	}
	
	
	public static Object mapToObject(Map<String, Object> map, Class<?> beanClass) throws Exception {    
        if (map == null)  
            return null;  
  
        Object obj = beanClass.newInstance();  
  
        org.apache.commons.beanutils.BeanUtils.populate(obj, map);  
  
        return obj;  
    }
	

	public static void doChangeParameter(Map<String, Object> param) {
		if (null != param && !param.isEmpty()) {
			String key;
			for (Map.Entry<String, Object> entry : param.entrySet()) {
				key = entry.getKey();
				if (key.startsWith("like_")) {
					param.put(key, "%" + entry.getValue() + "%");
				}
				if (key.startsWith("in_")) {
					if (entry.getValue() != null) {
						List<String> ids = StringUtils2.strToList((String) entry.getValue(), ",");
						param.put(key, ids);
					}
				}
			}
		}
	}
}
