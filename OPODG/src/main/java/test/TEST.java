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
//			                 //�ϱ��ؾ��ϴ� ���� ��
//			    if(str_1[j].compareTo(str_1[i])<0){
//			     String temp = str_1[j];
//			     str_1[j] = str_1[i];
//			     str_1[i] = temp;
//			     System.out.println("   temp:"+temp);
//			    }
//			   }
//		}
//		
//		String[] str_1 = {"���", "�ڹ�", "Love", "love","��"};
//		  
//		  System.out.println(" ***** ���� �� ���ڿ� ***** ");
//		  
//		  for (int i = 0; i < str_1.length; i++) {
//		   System.out.print(str_1[i] + "\t");
//		  }
//		  
//		  System.out.println("\n\n ***** ���� �� ���ڿ� ***** ");
//		  
//		  for (int i = 0; i < str_1.length -1; i++) {
//		   for (int j = i; j < str_1.length; j++) {
//		                 //�ϱ��ؾ��ϴ� ���� ��
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
		  String tmp ="(55)��������";
		  System.out.println(tmp.replace("����","����"));
//		String tmp ="709000165366";
//		  System.out.println(tmp.substring(0,3));
		  String outAcctNo ="709000165583";
          if (outAcctNo.length() != 11 && outAcctNo.length() != 12 && outAcctNo.length() != 13){
              System.out.println("123123");
          }
		  
	}
}
