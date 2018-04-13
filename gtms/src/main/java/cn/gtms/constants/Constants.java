package cn.gtms.constants;

public interface Constants {
	interface STATUS {
		String SUCCESS = "0";
		String FAIL = "1";
	}
	
	interface ROLE{
		String teacher="1";
		String student="2";
		String administrators="3";
	}
	
	interface USER_PAPER_STATUS{
		String NOT_CONFIRM="0";
		String PASS="1";
		String NOT_PASS="2";
	}
}
