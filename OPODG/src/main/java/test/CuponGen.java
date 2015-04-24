package test;

import java.awt.AWTException;
import java.awt.Robot;
import java.util.Calendar;
import java.util.HashMap;

public class CuponGen {
	static Object dummy = new Object();
	public static CuponGen instance = null;
	HashMap hm = null;
	HashMap hm2 = null;
	String regex = "[0-9]+";
	String regex1 = "[R,B,H,A,M,J,L,U,S,O,N,D]+";
	String regex2 = "[A,B,C,D,E]+";

	public static CuponGen getInstance() {
		if (instance == null) {
			synchronized (dummy) {
				instance = new CuponGen();
				instance.init();
			}
		}
		return instance;
	}

	public void init() {
		hm = new HashMap();
		hm.put("1", "R");
		hm.put("2", "B");
		hm.put("3", "H");
		hm.put("4", "A");
		hm.put("5", "M");
		hm.put("6", "J");
		hm.put("7", "L");
		hm.put("8", "U");
		hm.put("9", "S");
		hm.put("10", "O");
		hm.put("11", "N");
		hm.put("12", "D");
		hm2 = new HashMap();
		hm2.put("1", "A");
		hm2.put("2", "B");
		hm2.put("3", "C");
		hm2.put("4", "D");
		hm2.put("5", "E");
	}
	/* 쿠폰 번호 생성
	 * ex) 월코드+주코드+(System.currentTimeMillis뒤에서 9자리/1000)
	 */
	public String getCouponNumber() {
		Calendar cal = Calendar.getInstance();
		// 현재 년도, 월, 일
		int year = cal.get(cal.YEAR);
		int month = cal.get(cal.MONTH)+1;
		double date = cal.get(cal.DATE);
		double dateLong = date / 7;
		int dateInt = (int) Math.ceil(dateLong);
		String monthStr = (String) hm.get(Integer.toString(month));
		String weekStr = (String) hm2.get(Integer.toString(dateInt));
		String time = Long.toString(System.currentTimeMillis());
		time = Long.toString(Long.parseLong(time.substring(time.length() - 9)) / 1000);
		//ex) currentTimeMillis가 XXXXXXX037785 인경우 lpadding 으로 첫자리에 0붙인다.
		if(time.length()!=6){
			time = lPadding(time,6,'0');
		}

		return monthStr + weekStr + time;
	}

	public boolean validation(String cNo) {
		// 길이체크
		if (cNo!=null && cNo.length() == 8) {
			// 문자열 체크1
			if (!cNo.substring(0, 1).matches(regex1)) 
				return false;
			// 문자열 체크2
			if (!cNo.substring(1, 2).matches(regex2)) 
				return false;
			// 일련번호 체크3(only number type)
			if (!cNo.substring(2, cNo.length()).matches(regex)) 
				return false;
		} else {
			return false;
		}
		return true;
	}
	public String lPadding(String src, int size, char paddingChar) {
		int srcLength = 0;
		byte [] srcBytes;
		if (src == null) {
			StringBuffer result = new StringBuffer();
			for (int i = 0; i < size; i++) {
				result.append(paddingChar);
			}//end for
			return result.toString();
		} else {
            srcBytes = src.getBytes();
			srcLength = srcBytes.length;
		}//end if else
		if (size == srcLength) {
			return src;
		} else if (size < srcLength) {
			src = src.substring(srcLength-size,size);
			return src;
		}//end if else
		int paddingCount = size - srcLength;
		StringBuffer result = new StringBuffer();
		for (int i = 0; i < paddingCount; i++) {
			result.append(paddingChar);
		}//end for
		result.append(src);
		return result.toString();
	}//end of lPadding()
	
	
	public static void main(String[] args) {
		int nDelayTime;
		int nTimer = 1;
		nDelayTime = nTimer * 1000; 

		Robot tRobot = null;
		try {
			tRobot = new Robot();
		} catch (AWTException e) {
			e.printStackTrace();
		}

		CuponGen ts = CuponGen.getInstance();
		String cNo = "";
		for (int i = 0; i < 100; i++) {
			System.out.println(ts.getCouponNumber());
			cNo = ts.getCouponNumber();
			System.out.println(ts.validation(cNo));
			tRobot.delay(nDelayTime); 
		}

	}
}
