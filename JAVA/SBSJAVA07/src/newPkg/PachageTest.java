package newPkg;

import java.util.Date;
import java.text.SimpleDateFormat;
//import java.util.*;  //java 패키지 밑에 util 패키지에 속한 모든 클래스를 불러온다.
public class PachageTest {

	public static void main(String[] args) {
		
//		java.util.Date today = new java.util.Date();
//		java.text.SimpleDateFormat date = new java.text.SimpleDateFormat("yyyy/mm/dd");	
//		java.text.SimpleDateFormat time = new java.text.SimpleDateFormat("hh:mm:ss a");
		Date today = new java.util.Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/mm/dd");	
		SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a"); //import 선언시 
		
		System.out.println("현재 날짜는 "+date.format(today));
		System.out.println("현재 시간는 "+time.format(today));
		

	}

}
