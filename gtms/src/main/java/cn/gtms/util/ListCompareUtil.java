package cn.gtms.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListCompareUtil<T> {
	Class<T> clazz;

	public ListCompareUtil(Class<T> clazz) {
		this.clazz = clazz;
	}

	public void compareList(List<T> originalList, List<T> compareList, List<T> newList,
			List<T> deleteList, List<String> keySet, List<String> updateFieldList) {
		Map<String, T> keySetObjectMap = new HashMap<>();
		List<Method> methods = new ArrayList<>();
		List<String> compareListKeyList=new ArrayList<>();
		for (String methodName : keySet) {
			try {
				methods.add(clazz.getDeclaredMethod(methodName));
			} catch (NoSuchMethodException | SecurityException e) {
			}
		}
		for (T t : originalList) {
			String key = "";
			for (Method method : methods) {
				try {
					if(method.invoke(t)!=null){
						key += method.invoke(t).toString();
					}else {
						key += "";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			keySetObjectMap.put(key, t);
		}
		for (T t : compareList) {
			String key = "";
			boolean isNullKey=false;
			for (Method method : methods) {
				try {
					if(method.invoke(t)!=null){
						key += method.invoke(t).toString();
					}else {
						isNullKey=true;
						break;
					}
				} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
					e.printStackTrace();
				}
			}
			if(isNullKey){
				continue;
			}
	        if(!compareListKeyList.contains(key)){
				compareListKeyList.add(key);
	        }
			T obj = keySetObjectMap.get(key);
			if (obj != null) {
				// update
				for (String fieldName : updateFieldList) {
					try {
						Field field = clazz.getField(fieldName);
						String value = field.get(t).toString();
						try {
							Class<?> fieldType = field.getType();
							if ((Integer.TYPE == fieldType) || (Integer.class == fieldType)) {
								field.set(obj, Integer.parseInt(value));
							} else if (String.class == fieldType) {
								field.set(obj, String.valueOf(value));
							} else if ((Long.TYPE == fieldType) || (Long.class == fieldType)) {
								field.set(obj, Long.valueOf(value));
							} else if ((Float.TYPE == fieldType) || (Float.class == fieldType)) {
								field.set(obj, Float.valueOf(value));
							} else if ((Short.TYPE == fieldType) || (Short.class == fieldType)) {
								field.set(obj, Short.valueOf(value));
							} else if ((Double.TYPE == fieldType) || (Double.class == fieldType)) {
								field.set(obj, Double.valueOf(value));
							} else if (Character.TYPE == fieldType) {
								if ((value != null) && (value.length() > 0)) {
									field.set(obj, Character.valueOf(value.charAt(0)));
								}
							} else if (Date.class == fieldType) {
								try {
									if (value == null || value.isEmpty()) {
										field.set(obj, null);
									} else {
										SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
										field.set(obj, sdf.parse(value));
									}
								} catch (Exception e) {
									field.set(obj, null);
								}
							}
						} catch (IllegalArgumentException | IllegalAccessException | SecurityException e) {
							e.printStackTrace();
						}
					} catch (Exception e) {

					}
				}
			} else {
				// new
				newList.add(t);
			}
		}
         
		for(String key:keySetObjectMap.keySet()){
			if(!compareListKeyList.contains(key)){
				deleteList.add(keySetObjectMap.get(key));
			}
		}
	}
}
