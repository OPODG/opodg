package test;

public class TEST {
	
	public static void main(String[] args){
//		String str_1[] = {"0","1","2","3","4"};
//		for (int i = 0; i < str_1.length -1; i++) {
//			System.out.println("i:"+i);
//			   for (int j = i; j < str_1.length; j++) {
//				   System.out.println(" j:"+j);
//				   System.out.println("  str_1[j]:"+str_1[j]);
//				   System.out.println("  str_1[i]:"+str_1[i]);
//				   System.out.println("  compareTo:"+str_1[j].compareTo(str_1[i]));
//			                 //암기해야하는 정렬 식
//			    if(str_1[j].compareTo(str_1[i])<0){
//			     String temp = str_1[j];
//			     str_1[j] = str_1[i];
//			     str_1[i] = temp;
//			     System.out.println("   temp:"+temp);
//			    }
//			   }
//		}
//		
//		String[] str_1 = {"사랑", "자바", "Love", "love","愛"};
//		  
//		  System.out.println(" ***** 정렬 전 문자열 ***** ");
//		  
//		  for (int i = 0; i < str_1.length; i++) {
//		   System.out.print(str_1[i] + "\t");
//		  }
//		  
//		  System.out.println("\n\n ***** 정렬 후 문자열 ***** ");
//		  
//		  for (int i = 0; i < str_1.length -1; i++) {
//		   for (int j = i; j < str_1.length; j++) {
//		                 //암기해야하는 정렬 식
//			   System.out.println("str_1[j].compareTo(str_1[i]):"+str_1[j].compareTo(str_1[i]));
//		    if(str_1[j].compareTo(str_1[i])<0){
//		     
//		     String temp = str_1[j];
//		     str_1[j] = str_1[i];
//		     str_1[i] = temp;
//		     
//		    }
//		   }
//		  }
//		  for (int i = 0; i < str_1.length; i++) {
//		   System.out.print(str_1[i] + "\t");
//		  }
//		  
		  String tmp ="(55)퇴직연금";
		  System.out.println(tmp.replace("ㅋㅋ","적립"));
//		String tmp ="709000165366";
//		  System.out.println(tmp.substring(0,3));
		  String outAcctNo ="709000165583";
          if (outAcctNo.length() != 11 && outAcctNo.length() != 12 && outAcctNo.length() != 13){
              System.out.println("123123");
          }
		  
	}
}
