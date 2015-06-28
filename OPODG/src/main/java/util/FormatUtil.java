/*
 * Spider Framework
 * 
 * Copyright (c) 2006-2007 ServerSide Corp. All Rights Reserved.
 * 
 * �� �ҽ� �� ���̳ʸ� ���Ͽ� ���� ������ ��� ServerSide �� �ֽ��ϴ�.
 * �����ڿ��� ���� ���� ���� �� ���� ������ ���մϴ�.
 */

package util;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.time.DateFormatUtils;



/*******************************************************************
 * <pre>
 * 1.���� 
 * ���ڿ� Formatting Utility
 * 
 * 2.����
 * 
 * <font color="red">
 * 3.���ǻ���
 * </font>
 *
 * @author $Author: ������ $
 * @version
 *******************************************************************
 * - �����̷� (����/�����Ͻ�/�ۼ���)
 * 
 * $Log: FormatUtil.java,v $
 * Revision 1.7  2013/12/26 08:59:09  ������
 * System.out.println ��ġ
 *
 * Revision 1.6  2013/12/26 05:41:36  ������
 * fortify��ġ(IP�ϵ��ڵ� ����)
 *
 * Revision 1.5  2013/08/22 05:21:28  ������
 * 2013-08-22 serverside source sync
 *
 * Revision 1.10  2013/07/09 01:02:51  brkim
 * 20130709 keb sync
 *
 * Revision 1.4  2012/02/08 06:58:30  ������
 * *** empty log message ***
 *
 * Revision 1.5  2012/02/08 06:59:41  moon
 * ������ƿ lpadding,rpadding ����
 *
 * Revision 1.4  2011/12/22 10:24:16  moon
 * *** empty log message ***
 *
 * Revision 1.3  2011/12/22 10:20:42  moon
 * *** empty log message ***
 *
 * Revision 1.2  2011/12/08 09:31:19  moon
 * *** empty log message ***
 *
 * Revision 1.1  2011/04/26 01:30:08  jglee
 * lastsync
 *
 * Revision 1.2  2011/01/05 01:33:35  ������
 * getGmtToday �߰�
 *
 * Revision 1.1  2009/10/07 06:03:40  �輺��
 * *** empty log message ***
 *
 * Revision 1.5.2.5  2009/04/01 00:22:16  ������
 * parseYYYYMMDD�� ������ ������
 * 1111-11-11�� �ƴ϶� �������� return�ǵ��� ����
 *
 * Revision 1.5.2.4  2009/02/09 09:31:48  yshong
 * trimZero�޼ҵ� ���� �߰�
 *
 * Revision 1.5.2.3  2008/12/16 07:45:26  shkim
 * �ּ� ����
 *
 * Revision 1.5.2.2  2008/09/04 01:31:48  jbkim
 * �ּ� �ϰ�����
 *
 * Revision 1.5.2.1  2008/09/01 06:06:05  shkim
 * SpiderFramework ������Ʈ merge
 *
 * Revision 1.5  2008/08/19 00:59:26  shkim
 * ��ȯ���� CommonAssist ������Ʈ�� ����ȭ
 *
 * Revision 1.2  2007/06/28 02:07:20  �Ȱ��
 * *** empty log message ***
 *
 * Revision 1.1  2007/06/15 04:57:57  �Ȱ��
 * *** empty log message ***
 *
 * Revision 1.24  2006/11/03 01:19:49  ������
 * *** empty log message ***
 *
 * Revision 1.23  2006/11/03 00:53:23  ������
 * *** empty log message ***
 *
 * Revision 1.22  2006/11/02 13:07:15  ������
 * *** empty log message ***
 *
 * Revision 1.21  2006/11/02 12:21:51  ������
 * *** empty log message ***
 *
 * Revision 1.20  2006/11/02 03:40:04  ������
 * *** empty log message ***
 *
 * Revision 1.19  2006/10/30 12:53:40  ������
 * *** empty log message ***
 *
 * Revision 1.18  2006/10/27 06:29:09  ������
 * *** empty log message ***
 *
 * Revision 1.17  2006/10/24 11:27:02  ������
 * *** empty log message ***
 *
 * Revision 1.16  2006/10/20 12:11:00  ������
 * �ڸ����� ū ��쿡 ���� doublePadding���� ����
 *
 * Revision 1.15  2006/10/14 03:55:30  �輺��
 * trim ���� ����
 *
 * Revision 1.14  2006/09/27 03:47:10  ������
 * makeNumeric() �޼ҵ忡�� ��Ʈ������ . �� ����, ���˿��� . �� ������� �߰�.
 *
 * Revision 1.13  2006/09/14 07:35:40  ������
 * *** empty log message ***
 *
 * Revision 1.12  2006/09/14 07:11:23  ������
 * *** empty log message ***
 *
 * Revision 1.11  2006/09/14 07:08:08  ������
 * *** empty log message ***
 *
 * Revision 1.10  2006/09/04 09:11:31  �Ȱ��
 * *** empty log message ***
 *
 * Revision 1.9  2006/08/24 11:54:30  �Ȱ��
 * *** empty log message ***
 *
 * Revision 1.8  2006/08/01 04:12:01  ������
 * *** empty log message ***
 *
 * Revision 1.7  2006/06/17 10:37:45  �輺��
 * *** empty log message ***
 *
 * </pre>
 ******************************************************************/
public class FormatUtil {

//    /**
//    * ���� ���ڸ� 8�ڸ�(�����:yyyyMMdd)�� ���ڿ��� �����ش�. <BR><BR>
//    *
//    * ��뿹) getToday()<BR>
//    * �� �� ) 20020930<BR><BR>
//    *
//    * @return String
//    */
//    public static String getToday()
//    {
//        return getToday( "yyyyMMdd" );
//    }
//    /**
//    * ���� ���ڸ� ������ Format�� ��¥ ǥ���������� �����ش�. <BR><BR>
//    *
//    * ��뿹) getToday("yyyy/MM/dd hh:mm a")<BR>
//    * �� �� ) 2002/09/30 10:10 ����<BR><BR>
//    *
//    * Format�� J2SE�� SimpleDateFormat�� Documentation�� �����Ѵ�.
//    *
//    * @param pOutformat String
//    * @return String
//    */
//    public static String getToday( String pOutformat )
//    {	
//    	//ksh ����
//        /*SimpleDateFormat pOutformatter =  new SimpleDateFormat ( pOutformat, java.util.Locale.KOREA );
//
//        String rDateString = null;
//        Date vDate = new Date();
//
//        try
//        {
//            rDateString = pOutformatter.format( vDate );
//
//        }
//        catch( Exception e ) {}
//
//        return rDateString;*/
//        
//        return DateFormatUtils.format(System.currentTimeMillis(), pOutformat, java.util.Locale.KOREA);
//    }
//
//    /**
//     * ���� �Ͻø� GMT�ð����� �����ش�.
//     * @param pOutformat
//     * @param gmt
//     * @return
//     */
//    public static String getGmtToday(String pOutformat, int gmt)
//    {	
//    	int t = -9;
//    	int re = gmt + t;
//    	
//        return DateFormatUtils.format(System.currentTimeMillis()+1000*60*60*re, pOutformat, java.util.Locale.KOREA);
//    }
//
//	/**
//	* ���ڸ� ������ Format�� ��¥ ǥ���������� �����ش�. <BR><BR>
//	*
//	* ��뿹) getFormattedDate(new Date(),"yyyy/MM/dd hh:mm a")<BR>
//	* �� �� ) 2002/09/30 10:10 ����<BR><BR>
//	*
//	* Format�� J2SE�� SimpleDateFormat�� Documentation�� �����Ѵ�.
//	*
//	* @param pOutformat String
//	* @return String
//	*/
//	public static String getFormattedDate( Date vDate,String pOutformat )
//	{
//		//ksh ����
//		return DateFormatUtils.format(vDate, pOutformat, java.util.Locale.KOREA);
//		/*SimpleDateFormat pOutformatter =  new SimpleDateFormat ( pOutformat, java.util.Locale.KOREA );
//
//		String rDateString = null;
//		
//		try
//		{
//			rDateString = pOutformatter.format( vDate );
//
//		}
//		catch( Exception e ) {}
//
//		return rDateString;*/
//	}
//	
//	/**
//	* ���ڸ� ������ Format�� ��¥ ǥ���������� �����ش�. <BR><BR>
//	*
//	* ��뿹) getFormattedDate(System.currentTimeMillis(),"yyyy/MM/dd hh:mm a")<BR>
//	* �� �� ) 2002/09/30 10:10 ����<BR><BR>
//	*
//	* Format�� J2SE�� SimpleDateFormat�� Documentation�� �����Ѵ�.
//	*
//	* @param pOutformat String
//	* @return String
//	*/
//	public static String getFormattedDate( long time ,String pOutformat )
//	{
//		//ksh ����
//		return DateFormatUtils.format(time, pOutformat, java.util.Locale.KOREA);
//		/*SimpleDateFormat pOutformatter =  new SimpleDateFormat ( pOutformat, java.util.Locale.KOREA );
//
//		String rDateString = null;
//		Date vDate = new Date(time);
//		try
//		{
//			rDateString = pOutformatter.format( vDate );
//
//		}
//		catch( Exception e ) {}
//
//		return rDateString;*/
//	}
//    /**
//     * �Էµ� Format�� ���ڿ��� ������ Format�� ��¥ ǥ���������� �����ش�. <BR><BR>
//     *
//     * ��뿹) getFormattedDate("200102042345","yyyyMMddhhmm","yyyy/MM/dd hh:mm a")<BR>
//     * �� �� ) 2002/09/30 11:45 ����<BR><BR>
//     *
//     * Format�� J2SE�� SimpleDateFormat�� Documentation�� �����Ѵ�.
//     *
//     * @param pIndate String
//     * @param pInformat String
//     * @param pOutformat String
//     * @return String
//     */
//    public static String getFormattedDate( String pIndate, String pInformat, String pOutformat )
//    {
//            
//    	if("00000000".equals(pIndate)) return "";
//    	
//    		//ksh ���� ::DateFormatUtils�̿�
//    	
//    		SimpleDateFormat pInformatter =  new SimpleDateFormat ( pInformat, java.util.Locale.KOREA );
//            //SimpleDateFormat pOutformatter =  new SimpleDateFormat ( pOutformat, java.util.Locale.KOREA );
//
//            String rDateString = "";
//            Date vDate = null;
//
//            try
//            {
//                    vDate = pInformatter.parse( pIndate );
//                    //rDateString = pOutformatter.format( vDate );
//                    rDateString = DateFormatUtils.format(vDate, pOutformat, java.util.Locale.KOREA );
//            }
//            catch( Exception e )
//            {
//                    rDateString = pIndate;
//            }
//
//            return rDateString;
//    }
//
//    /**
//    * ���� ���� �������� diff��ŭ ����(��) �ϸ� ������ Format�� ��¥ ǥ���������� �����ش�. <BR><BR>
//    *
//    * ��뿹) getEvalDate( "20021001", -1 )<BR>
//    * �� �� ) 2002/09/30<BR><BR>
//    *
//    * Format�� J2SE�� SimpleDateFormat�� Documentation�� �����Ѵ�.
//    *
//    * @param date String
//    * @param diff int
//    * @return String
//    */
//    public static String getEvalDate( String date, int diff )
//    {
//        //String evalDate = null;
//
//        //SimpleDateFormat formatter = new SimpleDateFormat( "yyyyMMdd" );
//        Calendar today = Calendar.getInstance();
//
//        today.set( Integer.parseInt( date.substring( 0, 4 ) ), Integer.parseInt( date.substring( 4, 6 ) ) - 1, Integer.parseInt( date.substring( 6 ) ) );
//        today.add( Calendar.DATE, diff );
//        
//        //ksh ����
//        //evalDate = formatter.format( today.getTime() );
//        //return evalDate;
//        return DateFormatUtils.format(today.getTime(), "yyyyMMdd");
//    }
//
//    /**
//     * ���޹��� ���ڿ��� ������������ �����ش�.
//     * ���ڰ� �ƴ� ���� ������ �Է°��� �״�� �����ش�.<BR><BR>
//     *
//     * ��뿹) getFormattedMoney("200102042345")<BR>
//     * �� �� ) 200,102,042,345<BR><BR>
//     *
//     * @param pInstr String
//     * @return String
//     */
//    public static String getFormattedMoney( String pInstr )
//    {
//        if(pInstr ==null || pInstr.equals("") || pInstr.equals("null")){
//            return null;
//        }   	
//    		pInstr = parseSignedAmount(pInstr)+"";
//            String rStr = getFormattedMoney( Long.parseLong( pInstr ) );
//
//            return rStr;
//    }
//    
//    /**
//     * ���ڿ��� �ι�° ���ڸ�ŭ �ڿ��� �Ҽ������� ó���ؼ� �Ǽ����� ���������� ����
//     * �� ���ڸ��� ��ȣ�� - �� ��� -����. ����� ������ ���� ���ڿ��� �Ҽ����� �������� ���
//     * ��뿹) 
//     * getIndexFloatMoney("1234000,2) ��� : 12,340
//     * getIndexFloatMoney("+1234010,2) ��� : 12,340.1
//     * getIndexFloatMoney("-1234078,2) ��� : -12,340.78
//     * 
//     * @param str : String
//     * @param len : Stirng �� �� ���ڸ����� �Ҽ����̴�.
//     * @return String
//     */
//    public static String getIndexFloatMoney(String str, int len){
//    	String ret = new String();
//    	str = str.trim();
//    	if(str == null || str.length()==0) return null;
//    	if(str.length() < len) return str;
//    	
//    	String high = str.substring(0,str.length()-len);
//    	String low = str.substring(str.length()-len);
// 
//    	high = getFormattedMoney(high);
//    	low = trimRZero(low);
//
//    	if(low.length() != 0) 
//    	{
//    		ret = high+"."+low; 
//    	}else {
//    		ret = high;
//    	}
//    	return ret;
//    }
//    
//	/**
//	 * ���ڿ��� 2��ŭ �ڿ��� �Ҽ������� ó���ؼ� �Ǽ����� ���������� ����
//	 * �� ���ڸ��� ��ȣ�� - �� ��� -����. ����� ������ ���� ���ڿ��� �Ҽ����� �������� ���
//	 * ��뿹) 
//	 * getIndexFloatMoney("1234000) ��� : 12,340.00
//	 * getIndexFloatMoney("+1234010) ��� : 12,340.10
//	 * getIndexFloatMoney("-1234078) ��� : -12,340.78
//	 * 
//	 * @param str : String
//	 * @return String
//	 */
//	public static String getFormattedIndextMoney(String str){
//		return getFormattedIndextMoney(str, 2);
//	}
//	
//	/**
//	 * ���ڿ��� �ι�° ���ڸ�ŭ �ڿ��� �Ҽ������� ó���ؼ� �Ǽ����� ���������� ����
//	 * �� ���ڸ��� ��ȣ�� - �� ��� -����. ����� ������ ���� ���ڿ��� �Ҽ����� �������� ���
//	 * ��뿹) 
//	 * getIndexFloatMoney("1234000,2) ��� : 12,340.00
//	 * getIndexFloatMoney("+1234010,2) ��� : 12,340.10
//	 * getIndexFloatMoney("-1234078,2) ��� : -12,340.78
//	 * 
//	 * @param str : String
//	 * @param len : Stirng �� �� ���ڸ����� �Ҽ����̴�.
//	 * @return String
//	 */
//	public static String getFormattedIndextMoney(String str, int len){
//		str = str.trim();
//		if(str == null || str.length()==0) return null;
//		if(str.length() < len) return str;
//
//		int index = str.indexOf('.');
//		if(index != -1){
//			str = getFormattedMoney(str);
//		}else{
//			String high = str.substring(0,str.length()-len);
//			String low = str.substring(str.length()-len);
//			high = getFormattedMoney(high);
//
//			str = high+"."+low; 
//		}
//		return str;
//	}	    
//    
//    /**
//     * ������ Format���� ���� ���� ���ڿ��� �����ش�. �Է¹��� ���� ���� ���ڿ��� �����϶� �ش�ȴ�.
//     * ���ڰ� �ƴ� ���� ������ �Է°��� �״�� �����ش�.<BR><BR>
//     *
//     * ��뿹) getFormattedNumber("200102042345","'$'####,####0")<BR>
//     * �� �� ) $20,01020,42345<BR><BR>
//     *
//     * Format�� J2SE�� MessageFormat�� Documentation�� �����Ѵ�.
//     *
//     * @param pInstr String
//     * @param pInformat String
//     * @return String
//     */
//    public static String getFormattedNumber( String pInstr, String pInformat )
//    {
//            String rStr = pInstr;
//
//            try
//            {
//                    Object[] testArgs = {new Long( pInstr )};
//                    MessageFormat form = new MessageFormat( "{0,number,"+pInformat+"}" );
//                    rStr =  form.format( testArgs );
//            } catch ( Exception e ) {}
//
//            return rStr;
//    }
//
//    /**
//     * ������ Format���� ���� ���� ���ڿ��� �����ش�. <BR><BR>
//     *
//     * �״�� ����� ���ڴ� '#'���� ǥ���ȴ�. �� ���� ���ڿ��� �ƹ���ȣ�� �������.
//     * �׷��Ƿ� '#'��ü�� ����� �Ұ����ϴ�.
//     * ��ȣȭ ó�� �Ǿ� �� ���ڴ� *�� ǥ���Ѵ�( ex)******-#######)
//     * �Է¹��� ���ڰ� Format���� ��ٸ� Format���� ������ ���ڿ��� �߸��� �ȴ�.
//     * Format�� �Է¹��� ���ڿ����� ��ٸ� ���ڿ���ŭ�� ��µȴ�.
//     *
//     * @param pInstr ������ �� ����String
//     * @param pInformat ��������String(######-######} ��
//     * @return String
//     */
//    public static String getFormattedText( String pInstr, String pInformat )
//    {
//            StringBuffer rStr = new StringBuffer();
//
//            try {
//                    for ( int i = 0, j = 0 ; pInstr != null && !pInstr.equals("") && i < pInformat.length() ; i ++ ) {
//                            if ( pInformat.charAt(i) == '#' ) {
//                                    rStr.append( pInstr.charAt( j ) );
//                                    j++;
//                            } else if ( pInformat.charAt(i) == '*' ) {
//                                    rStr.append( pInformat.charAt( i ) );
//                                    j++;
//                            }
//                            else {
//                                    rStr.append( pInformat.charAt( i ) );
//                            }
//                    }
//            }
//            catch ( Exception e ) {};
//
//            return rStr.toString().trim();
//    }
//
//    /**
//    * ���޹��� ���ڿ��� ������������ �����ش�.
//    * ���ڰ� �ƴ� ���� ������ �Է°��� �״�� �����ش�.<BR><BR>
//    *
//    * ��뿹) getFormattedMoney(200102042345)<BR>
//    * �� �� ) 200,102,042,345<BR><BR>
//    *
//    * @param pInstr long
//    * @return String
//    */
//    public static String getFormattedMoney( long pInstr )
//    {
//        String rStr = "" + pInstr;
//
//         try
//         {
//             Object[] testArgs = {new Long( rStr )};
//             MessageFormat form = new MessageFormat( "{0,number,###,###,###,##0}" );
//             rStr = form.format( testArgs );
//         }
//         catch ( Exception e ) {}
//
//         return rStr;
//        }
//
//    /**
//    * ���޹��� ���ڸ� ������ ���·� ����Ѵ�.
//    * ���ڰ� �ƴ� ���� ������ �Է°��� �״�� �����ش�.<BR><BR>
//    *
//    * ��뿹) getFormattedNumber(1, "00000")<BR>
//    * �� �� ) "00001"<BR><BR>
//    *
//    * @param pInstr long
//    * @return String
//    */
//    public static String getFormmatedNumber( long num, String format ) {
//        StringBuffer formattedNum = new StringBuffer();
//        String strNum = "" + num;
//
//        try {
//            for ( int i=0 ; i < format.length()-strNum.length(); i++ ) {
//                formattedNum.append(format.charAt(i));
//            }
//            formattedNum.append(strNum);
//        } catch ( Exception e ) {};
//
//        return formattedNum.toString();
//    }
//
//    /**
//     * ���޹��� ���ڿ��� ������������ �����ش�.
//     * ���ڰ� �ƴ� ���� ������ �Է°��� �״�� �����ش�.<BR><BR>
//     *
//     * ��뿹) getFormattedMoney(200102042345)<BR>
//     * �� �� ) 200,102,042,345<BR><BR>
//     *
//     * @param pInstr double
//     * @return String
//     */
//    public static String getFormattedMoney(double pInstr)
//    {
//        String rStr = "" + pInstr;
//
//        try
//        {
//            Object[] testArgs = {new Double( rStr )};
//            MessageFormat form = new MessageFormat( "{0,number,###,###,###,##0}" );
//            rStr = form.format( testArgs );
//        }
//        catch ( Exception e ) {}
//
//        return rStr;
//    }
//
//    /**
//     * Ư�� ��Ʈ������ ������ pattern subString�� replace ���ڿ���
//     *	��ġ�Ѵ�.
//     *
//     * ��뿹) replace("2002-02-10", "-", "/")<BR>
//     * �� �� ) "2002/02/10"<BR><BR>
//     *
//     * @return String
//     */
//    public static String replace(String str, String pattern, String replace) {
//        int s = 0, e = 0;
//        StringBuffer result = new StringBuffer();
//
//        while ((e = str.indexOf(pattern, s)) >= 0) {
//            result.append(str.substring(s, e));
//            result.append(replace);
//            s = e+pattern.length();
//        }
//
//        result.append(str.substring(s));
//        return result.toString();
//    }
//    
//
//
//
//        /**
//        * �ش繮�ڿ��� ltrim, rtrim �Ѵ�. <BR><BR>
//        *
//        * ��뿹) trim("  spaces  " )<BR>
//        * �� �� ) "spaces"<BR><BR>
//        *
//        * @param pInstr String
//        * @return String trim�� ���ڿ�
//        */
//       /*
//    public static String trim(String pInstr) {
//        int st = 0;
//        char[] val = pInstr.toCharArray();
//        int count = val.length;
//        int len = count;
//
//        while ((st < len) && ((val[st] <= ' ') || (val[st] == '��') ) ){
//            st++;
//        }
//        while ((st < len) && ((val[len - 1] <= ' ') || (val[len-1] == '��'))){
//            len--;
//        }
//
//        return ((st > 0) || (len < count)) ? pInstr.substring(st, len) : pInstr ;
//
//    }
//*/
//    /**
//    * LT Type�� BIC Type�� ��ȯ�Ѵ�. <BR><BR>
//    *
//    * ��뿹) makeLt2Bic("KOEXKRS0X" )<BR>
//    * �� �� ) "KOEXKRS0"<BR><BR>
//    *
//    * @param pInstr String
//    * @return String trim�� ���ڿ�
//    */
//    public static String makeLt2Bic(String input){
//      String ret = input;
//      if(input.length()>11) {
//        ret = input.substring(0,8) + input.substring(9,12);
//      }
//      return ret;
//    }
//
//    /**
//     * BIC Type�� LT Type�� ��ȯ�Ѵ�. <BR><BR>
//     *
//     * ��뿹) makeBic2Lt("KOEXKRS0X", "A" )<BR>
//     * �� �� ) "KOEXKRS0A"<BR><BR>
//     *
//     * @param pInstr String
//     * @return String trim�� ���ڿ�
//     */
//    public static String makeBic2Lt(String input, String terminalCode){
//
//      String ret = input;
//
//      if( input==null )
//           return "";
//
//       if( input.length()==8 ){
//           ret = input +terminalCode+"XXX";
//       }else if(input.length()==11) {
//           ret = input.substring(0,8) + terminalCode + input.substring(8);
//       }else{
//           ret = input.substring(0,8) + terminalCode + "XXX";
//       }
//
//       return ret;
//
//    }
//
//    /**
//     * ������ ���ڿ��� �־��� ũ�� ��ŭ�� ���̸� ���� ���ڿ���
//     * �ʱ�ȭ �� ���ڿ��� �����մϴ�.<BR><BR>
//     *
//     * ��뿹) makeTemplateString(5, 'A')<BR>
//     * �� �� ) "AAAAA"<BR><BR>
//     *
//     * @param size int ������ �ʱ�ȭ �� ���ڿ��� ����
//     * @param initialChar �ʱ�ȭ�� ��� �� ����
//     * @return ������ ���ڿ��� �־��� ũ�⸸ŭ �ʱ�ȭ �� ���ڿ�
//     */
//    public static String makeTemplateString(int size, char initialChar) {
//        StringBuffer buffer = new StringBuffer();
//        for (int i = 0; i < size; i++) {
//            buffer.append(initialChar);
//        }//end for
//        return buffer.toString();
//    }//end of makeTemplateString()
//
//    /**
//     * �־��� ���ڿ��� ����(getBytes() ��� ����)��
//     * �־��� ũ�⺸�� ������ padding char �� ������ ���̸�ŭ ���ʿ� �߰��մϴ�.<BR>
//     * ��, �־��� ���ڿ��� ���̰� �־��� ũ�⺸�� Ŭ ���,
//     * ���ڿ��� �� �� �κк��� �־��� ���̸�ŭ�� �߷��� ���ڿ��� ���ϵ˴ϴ�.<BR><BR>
//     *
//     * ��뿹) lPadding("A", 3, '0')<BR>
//     * �� �� ) "00A"<BR><BR>
//     * ��뿹) lPadding("ABCD", 3, '0')<BR>
//     * �� �� ) "ABC"<BR><BR>
//     *
//     * @param src padding �ϱ� ���� ���ڿ�
//     * @param size padding �ϱ� ���� ����
//     * @param paddingChar padding �� ����
//     * @return padding �� �Ϸ�� ���ڿ�
//     */
//	public static String lPadding(String src, int size, char paddingChar) {
//
//		// ���� ������ ���Ͽ�, �Ʒ��� ���� ���� ȣ��� ���õ� �κ���,
//		// �����ϰ� �����Ͽ���.
//
//		int srcLength = 0;
//		byte [] srcBytes;
//		if (src == null) {
//			StringBuffer result = new StringBuffer();
//			for (int i = 0; i < size; i++) {
//				result.append(paddingChar);
//			}//end for
//			return result.toString();
//		} else {
//            srcBytes = src.getBytes();
//			srcLength = srcBytes.length;
//		}//end if else
//		if (size == srcLength) {
//			return src;
//		} else if (size < srcLength) {
//			//return new String(srcBytes, 0, size) ;
//			
//			// >>> * 2011-12-07 ��ö�� : ���� ���ڿ����� padding ���̰� ������� �������ڰ� ? �� ǥ�õǴ� ������ �־� ������.
//			boolean isFront = isFront2ByteString(srcBytes, size);	// ����(2byte����)�� ��� ����ġ�� ������ �պκ����� �ƴ����� �Ǵ�
//			if(isFront) return paddingChar + new String(srcBytes, 0, size-1);	// �������ھպκ��̸� ������, SPACEó��
//			else 		return new String(srcBytes, 0, size);
//			// <<< * ���� ��. 
//		}//end if else
//		int paddingCount = size - srcLength;
//		StringBuffer result = new StringBuffer();
//		for (int i = 0; i < paddingCount; i++) {
//			result.append(paddingChar);
//		}//end for
//		result.append(src);
//		return result.toString();
//	}//end of lPadding()
//
//	
//	/**
//	 * 2byte������ ��� index�� ��ġ�� ���������� ��/�ڸ� �Ǵ�
//	 * @param str
//	 * @param size
//	 * @return
//	 */
//	private static boolean isFront2ByteString(byte[] srcBytes, int index) {
//		boolean isFront = false;
//		for (int i = 0; i < index; i++) {
//			byte now = srcBytes[i];
//			if(((int)now & 0x80) != 0) {	// 0x80!=0   -> 2byte���� �Ǵ�(ascii��� 0�� ����)
//				isFront = isFront ? false : true;
//				//if(isFront) System.out.print("��");//else 		  System.out.print("��");
//			}
//		}
//		return isFront;
//	}
//	
//    /**
//     * �־��� ���ڿ��� ����(getBytes() ��� ����)��
//     * �־��� ũ�⺸�� ������ padding char �� ������ ���̸�ŭ �����ʿ� �߰��մϴ�.<BR><BR>
//     *
//     * ��뿹) lPadding("A", 3, '0')<BR>
//     * �� �� ) "A00"<BR><BR>
//     * ��뿹) lPadding("ABCD", 3, '0')<BR>
//     * �� �� ) "ABC"<BR><BR>
//     *
//     * @param src padding �ϱ� ���� ���ڿ�
//     * @param size padding �ϱ� ���� ����
//     * @param paddingChar padding �� ����
//     * @return padding �� �Ϸ�� ���ڿ�
//     */
//	public static String rPadding(String src, int size, char paddingChar) {
//
//		// ���� ������ ���Ͽ�, �Ʒ��� ���� ���� ȣ��� ���õ� �κ���,
//		// �����ϰ� �����Ͽ���.
//		int srcLength = 0;
//		byte [] srcBytes;
//		if (src == null) {
//			StringBuffer result = new StringBuffer();
//			for (int i = 0; i < size; i++) {
//				result.append(paddingChar);
//			}//end for
//			return result.toString();
//		} else {
//            srcBytes = src.getBytes();
//			srcLength = srcBytes.length;
//		}//end if else
//		
//		if (size == srcLength) {
//			return src;
//		}
//		
//		// >>> * 2011-12-07 ��ö�� : ���� ���ڿ����� padding ���̰� ������� �������ڰ� ? �� ǥ�õǴ� ������ �־� ������.
//		else if (size < srcLength) {
//			//return new String(srcBytes, 0, size)   + paddingChar;
//			boolean isFront = isFront2ByteString(srcBytes, size);	// ����(2byte����)�� ��� ����ġ�� ������ �պκ����� �ƴ����� �Ǵ�
//			if(isFront) return new String(srcBytes, 0, size-1) + paddingChar;	// �������ھպκ��̸� ������, SPACEó��
//			else 		return new String(srcBytes, 0, size);
//		}
//		// <<< * ���� ��. 
//		
//		int paddingCount = size - srcLength;
//		StringBuffer result = new StringBuffer();
//		result.append(src);
//		for (int i = 0; i < paddingCount; i++) {
//			result.append(paddingChar);
//		}//end for
//		return result.toString();
//	}//end of rPadding()
//	
//	
//	/**
//	 * padding ó��
//	 * @param src padding�� ���ڿ�
//	 * @param size ���ڿ��� �ѱ���
//	 * @param paddingChar Padding�� ����
//	 * @param rightOrLeft "left" : left Padding , "Right" : right Padding.
//	 * @return padding ó���� ���ڿ�
//	 */
//	public static String padding(String src, int size, char paddingChar,String rightOrLeft){
//		if("left".equals(rightOrLeft)){
//			return lPadding(src, size, paddingChar);
//		}else{
//			return rPadding(src, size, paddingChar);
//		}
//	}
//	
//	/**
//	 * space padding ó��
//	 * @param src padding�� ���ڿ�
//	 * @param size ���ڿ��� �ѱ���
//	 * @param rightOrLeft "left" : left Padding , "Right" : right Padding.
//	 * @return padding ó���� ���ڿ�
//	 */
//	public static String padding(String src, int size, String rightOrLeft){
//		char paddingChar=' ';
//		if("left".equals(rightOrLeft)){
//			return lPadding(src, size, paddingChar);
//		}else{
//			return rPadding(src, size, paddingChar);
//		}
//	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��
//	 * @param src
//	 * @return
//	 */
//	public static String numberPadding(String src, int size){
//		char paddingChar='0';
//		return lPadding(src, size, paddingChar);		
//	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��
//	 * @param src
//	 * @return
//	 */
//	public static String longPadding(long num, int size){
//		String src = Long.toString(num);
//		char paddingChar='0';
//		return lPadding(src, size, paddingChar);
//		
//	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��. 
//	 * <font color=red>�Ҽ����� ���� �ʴ´�.</font>
//	 * @param src
//	 * @param size ��ü �ڸ��� 
//	 * @param sosuSize �Ҽ��� ���� �ڸ��� 
//	 * @return
//	 */
////	public static String doublePadding(double num, int size,int sosuSize){
////		return doublePadding(num,size,sosuSize,'0');
////	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��. 
//	 * <font color=red>�Ҽ����� ���� �ʴ´�.</font>
//	 * @param src
//	 * @param size ��ü �ڸ��� 
//	 * @param sosuSize �Ҽ��� ���� �ڸ��� 
//	 * @return
//	 */
////	public static String doublePadding(double num, int size,int sosuSize,char paddingChar){
////		String src = new BigDecimal(num).toString();
////		String[] splited = StringUtil.splitDouble(src);
////		if(splited[0].length() > size-sosuSize){
////			throw new SysException("�����ο� �ش��ϴ� ������ ǥ������ �ڸ����� ������ �ȵ˴ϴ�.");
////		}
////		String longPart = lPadding(splited[0],size-sosuSize,paddingChar);
////		String sosuPart = rPadding(splited[1],sosuSize,paddingChar);		
////		return longPart+sosuPart;
////	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��. 
//	 * <font color=red>�Ҽ����� ��� ����.</font>
//	 * @param src
//	 * @param size ��ü �ڸ��� 
//	 * @param sosuSize �Ҽ��� ���� �ڸ��� 
//	 * @return
//	 */
////	public static String doubleDotPadding(double num, int size,int sosuSize){
////		return doubleDotPadding( num,  size, sosuSize, '0');
////	}
//	
//	/**
//	 * default�� left�� '0'�� padding ó��. 
//	 * <font color=red>�Ҽ����� ��� ����.</font>
//	 * @param src
//	 * @param size ��ü �ڸ��� 
//	 * @param sosuSize �Ҽ��� ���� �ڸ��� 
//	 * @return
//	 */
////	public static String doubleDotPadding(double num, int size,int sosuSize,char paddingChar){
////        String src = new BigDecimal(num).toString();
////		String[] splited = StringUtil.splitDouble(src);
////		if(splited[0].length() > size-sosuSize-1){
////			throw new SysException("�����ο� �ش��ϴ� ������ ǥ������ �ڸ����� ������ �ȵ˴ϴ�.");
////		}
////		String longPart = lPadding(splited[0],size-sosuSize-1,paddingChar);
////		String sosuPart = rPadding(splited[1],sosuSize,paddingChar);		
////		return longPart+"."+sosuPart;
////	}
//	
//	/**
//	 * �־��� ���ڿ��� 0x1F(US:UNIT SEPARATOR) �� �� �ڿ� ���ؼ� �����մϴ�.
//	 * 
//	 * @param src ��� ���ڿ�
//	 * @return �� �ڿ� 0x1F �� �߰��� ���ڿ�
//	 */
//	public static String append0x1f(String src) {
//	    return new String(append0x1f(src.getBytes()));
//	}//end of append0x1f()
//	
//	/**
//	 * �־��� byte [] �� 0x1F(US:UNIT SEPARATOR) �� �� �ڿ� ���ؼ� �����մϴ�.
//	 * 
//	 * ����) String Ŭ������ trim() �� ����ص� control character �� ���� �����ϳ�,
//	 * ���� �����Ϸ��� control character0x1F(US:UNIT SEPARATOR) �� �ƴ� �ٸ� ����� ���� �� �� �����Ƿ�,
//	 * ������ �޼ҵ带 ������.
//	 * 
//	 * @param src ��� byte []
//	 * @return �� �ڿ� 0x1F �� �߰��� byte []
//	 */
//	public static byte [] append0x1f(byte [] src) {
//	    byte [] result = new byte[src.length + 1];
//	    
//	    System.arraycopy(src, 0, result, 0, src.length);
//	    result[src.length] = 0x1f;
//	    
//	    return result;
//	}//end of append0x1f()
//	
//	/**
//	 * �־��� ���ڿ��� �� �ڿ� �ִ� 0x1F(US:UNIT SEPARATOR) �� �����ؼ� �����մϴ�.
//	 * 
//	 * @param src ��� ���ڿ�
//	 * @return �� �ڿ� 0x1F �� ���ŵ� ���ڿ�
//	 */
//	public static String removeTail0x1f(String src) {
//	    return new String(removeTail0x1f(src.getBytes()));
//	}//end of removeTail0x1f()
//	
//	/**
//	 * �־��� byte [] �� �� �ڿ� �ִ� 0x1F(US:UNIT SEPARATOR) �� �����ؼ� �����մϴ�.
//	 * 
//	 * @param src ��� byte []
//	 * @return �� �ڿ� 0x1F �� ���ŵ� byte []
//	 */
//	public static byte [] removeTail0x1f(byte [] src) {
//	    if (src[src.length - 1] != 0x1f) {
//	        return src;
//	    }//end if
//	    
//	    byte [] result = new byte[src.length - 1];	    
//	    System.arraycopy(src, 0, result, 0, src.length - 1);	    
//	    return result;
//	}//end of removeTail0x1f()
//
//	/**
//	 * �����ʸ� trim�մϴ�.
//	 * @param str String �Է� ���ڿ�
//	 * @return String �����ʸ� trim�� ���ϰ�
//	 */
//	public static String TRIM( String str ){
//	    String tmpStr="";
//	
//	    if( str == null ) return "";
//	
//	    tmpStr = str.trim();
//	
//	    return tmpStr;
//	}
//	
//	/**
//	 * ������̳� ����Ͻú����� ��¥ ���ڿ��� �޾Ƽ� long�� �ð����� ��ȯ�Ͽ� �����Ѵ�. 
//	 * 
//	 * @param dateArg ��¥ ��Ʈ�� 
//	 * @param dateFormat ��¥ ��Ʈ���� ���� ���� (��) yyyy-MM-dd HH:mm:ss
//	 * @return
//	 */
//	public static long getTimeInMillis(String dateArg, String dateFormat){
//	    
//	    Calendar cal = Calendar.getInstance();
//	    String dateStr = getFormattedDate(dateArg, dateFormat, "yyyyMMddHHmmssSSS");
//	    
//	    int year 	= Integer.parseInt(dateStr.substring(0,4));
//	    int month 	= Integer.parseInt(dateStr.substring(4,6))-1;
//	    int date 	= Integer.parseInt(dateStr.substring(6,8));
//	    int hour 	= Integer.parseInt(dateStr.substring(8,10));
//        int minute 	= Integer.parseInt(dateStr.substring(10,12));
//        int second 	= Integer.parseInt(dateStr.substring(12,14));
//        int milliSecond 	= Integer.parseInt(dateStr.substring(14));
//	    
//	    cal.set(Calendar.YEAR, year);
//	    cal.set(Calendar.MONTH, month);
//	    cal.set(Calendar.DATE, date);
//	    cal.set(Calendar.HOUR_OF_DAY, hour);
//	    cal.set(Calendar.MINUTE, minute);
//	    cal.set(Calendar.SECOND, second);
//	    cal.set(Calendar.MILLISECOND, milliSecond);
//	    
//	    return cal.getTimeInMillis(); 
//	    
//	}
//	
//	/**
//	 * ������̳� ����Ͻú����� ��¥ ���ڿ��� �޾Ƽ� long�� �ð����� ��ȯ�Ͽ� �����Ѵ�. 
//	 * 
//	 * @param dateArg ��¥ ��Ʈ�� 
//	 * @return
//	 */
//	public static long getTimeInMillis(String dateArg){
//	    int len = dateArg.length();
//	    if (len == 8) {
//	        
//	        return getTimeInMillis(dateArg, "yyyyMMdd");
//	    } else if (len == 14){
//	        return getTimeInMillis(dateArg, "yyyyMMddHHmmss");
//	    } else {
//	        throw new IllegalArgumentException("��¥ ������ 'yyyyMMdd', 'yyyyMMddHHmmss' �� ������ �����մϴ�.");
//	    }//end if else	    
//	}//end of getTimeInMillis()
//	
//	
//	/**
//	 * ��¥�� ��Ÿ���� ���ڿ��� ���ڷ� �޾Ƽ� java.sql.Date ��ü�� ��ȯ�Ͽ� �����Ѵ�.
//	 * 
//	 * @param dateArg : yyyyMMdd �Ǵ� yyyyMMddHHmmss ������ ��¥�� ��Ÿ���� ���ڿ� 
//	 * @return java.sql.Date ��ü
//	 */
//	public static Timestamp getDate(String dateArg){
//	    return new Timestamp(getTimeInMillis(dateArg));
//	}
//
//	public final static int SIZE_OVER = 100;
//	public final static int TYPE_MISMATCH = 99;
//	public final static int DATE_INCORRECT = 98;
//	public final static int SPACE_INPUT = 97;
//	public final static int OK = 0;
//	public final static int FAIL = -1;
//
//
//	/**
//	 * �� ���� �� �� 
//	 */
//	private static int maxdd[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
//    
//
//
//
//
//	/**
//	 * double���� long������ �ٲپ� �ش�.�ݿø��� ���� ��´�.
//	 *
//	 * @param d double
//	 * @return long
//	 */
//	public static long dtol(double d){
//		double dtmp = Math.rint(d);
//		return (long)dtmp;
//	} // End of dtol
//
//
//	/**
//	 * double���� long������ �ٲپ� �ش�. 
//	 * ���� ó��.
//	 * @param d double
//	 * @return long
//	 */
//
//	public static long dtoltrim(double d){
//		double dtmp = Math.floor(d);
//		return (long)dtmp;
//	} // End of dtol
//    
//	/**
//	 * double���� long������ �ٲپ� �ش�. 
//	 * �ݿø� ó��.
//	 * @param d double
//	 * @return long
//	 */
//	public static long dtoltrim_round(double d){
//		double dtmp = Math.round(d);
//		return (long)dtmp;
//	} // End of dtol
//
//
//	/**
//	 * �־��� ���ڸ�ŭ�� �������� ä���� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param count int
//	 * @return String
//	 * @see #getZero
//	 */ 
//	public static String getString(int count) {
//
//		StringBuffer str = new StringBuffer("") ;
//		for(int i=0 ; i<count ; i++) {
//			str.append(" ") ;
//		}
//
//		return str.toString();
//	} // End of String
//
//
//
//	/**
//	 * �־��� ���ڿ��� �־��� ���̸� ���� ������ ���� ������ �ǵ���
//	 * ���ڿ� �տ� ���鹮���� �����Ѵ�.
//	 * CICS COMMAREA���� ������ ���ĵ� ���ڿ� �ʵ带 ������� ����Ѵ�.
//	 *
//	 * @param str String ������ ������ ���ڿ�
//	 * @param count int  ���ϴ� ���ڿ��� ����
//	 * @return String    ���鹮�� ���Կ� ���� ���ĵ� ���ڿ�
//	 * @see #getZero
//	 */ 
//	public static  String getString(String str,int count) {
//		if(str != null ){
//			for(int i=0 ; i<count ; i++) {
//				if(str.length() == count)break;
//	//          if(str.length() < count)str=" "+str;
//				if(str.length() < count)str=str+" ";
//				if(str.length() > count)str=str.substring(0,count);
//			}
//		}
//		else str = getString(count);
//
//		return str;
//
//	} // End of getString
//
//
//	/**
//	 * �־��� ���Ĺ��⿡ �°� �־��� ���ڿ� ũ�Ⱑ �ǵ��� ���鹮�ڸ� �����Ѵ�.
//	 * CICS COMMAREA���� ���ĵ� ���ڿ� �ʵ带 ������� ����Ѵ�.
//	 *
//	 * @param str String    ������ ���ڿ�
//	 * @param count int     ���ϴ� ���ڿ��� ũ��
//	 * @param align String  ���� ����
//	 *                      ������ "LEFT", �׿ܴ� ������ ����
//	 * @return String       ���ĵ� ���ڿ�
//	 * @see #getZero
//	 */ 
//	public static String getString(String str,int count, String align) {
//		if(str != null ){
//			for(int i=0 ; i<count ; i++) {
//				if(str.length() == count)break;
//				if (align.equals("LEFT")) //���� 
//					if(str.length() < count)str=str+" ";
//				else           //������ 
//					if(str.length() < count)str=" "+str;
//				if(str.length() > count)str=str.substring(0,count);
//			}
//		}
//		else str = getString(count);
//
//		return str;
//
//	} // End of getString
//
//
//	/**
//	 * �־��� ũ�⸸ŭ '0'���� ä���� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param count int ���ڿ��� ũ��
//	 * @return String   �־��� ũ�⸸ŭ '0'���� ä���� ���ڿ�
//	 * @see #getString
//	 */ 
//	public static String getZero(int count) {
//
//		StringBuffer str = new StringBuffer() ;
//		for(int i=0 ; i<count ; i++) {
//			str.append("0") ;
//		}
//
//		return str.toString();
//
//	} // End of getZero
//
//
//
//	/**
//	 * �־��� ���ڿ��� ������ �����ϱ� ���Ͽ�
//	 * �־��� ���ڿ� ũ�Ⱑ �ǵ��� ���ڿ� �տ� '0'�� �����Ѵ�.
//	 * CICS COMMAREA���� ������ ���ĵ� ���� �ʵ带 ��� ���� ����Ѵ�.
//	 *
//	 * @param str String
//	 * @param count int
//	 * @return String
//	 * @see #getString
//	 */ 
//	public static String getZero(String str,int count) {
//		if(str != null ){
//			for(int i=0 ; i<count ; i++) {
//				if(str.length() == count)break;
//				if(str.length() < count)str="0"+str;
//				if(str.length() > count)str=str.substring(0,count);
//			}
//		}
//		else str = getZero(count);
//
//		return str;
//	} // End of getZero
//
//
//	/**
//	 * �־��� ���ڿ����� �־��� ���ڿ� ������ �����Ͽ� �ش�.
//	 *
//	 * @param target String �ҽ� ���ڿ�
//	 * @param del String    ������ ���ڿ� ����
//	 * @return String       ���ڿ� ������ ���ŵ� ���ڿ�
//	 */
//	public static String delString(String target,String del) {
//		String retval = new String();
//		int strlen ;
//		int idx = 0;
//		int i = 0;
//
//		if(target == null)
//			return target;
//
//		try{
//			strlen = target.length();
//			if(strlen == 0 )
//				return target;
//			while( idx < strlen ){
//				idx = target.indexOf(del, i);
//				if(idx < 0){
//					idx = strlen;
//				}
//				if(idx > strlen){
//					idx = strlen;
//				}
//				retval += target.substring(i, idx);
//				i = idx+del.length();
//			}
//		}catch(java.lang.StringIndexOutOfBoundsException e){
//			e.printStackTrace();
//		}catch(java.lang.Exception e){
//			e.printStackTrace();
//		}
//
//		return retval;
//	} // End of delString
//
//
//	/**
//	 * �ݾ� �ʵ�� ���� ���ڿ��� õ���� ǥ��(,)�� �ִ� ���
//	 * �ݾ��� ���ڷ� ó���ϱ� ���ؼ� ���ڿ����� ��ǥ(,)�� ���ŵǾ�� �Ѵ�.
//	 * �̷� ��쿡 �ݾ� �ʵ�� ó���� ���ڿ��� �Ű������� �Ͽ� 
//	 * ����(,)�� ���ŵ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target String õ���� ǥ�ð� ���Ե� ���ڿ�
//	 * @return String       õ���� ǥ�ð� ���ŵ� ���ڿ�
//	 * @see #getComma
//	 */ 
//	public static String delString(String target) {
//
//		return delString(target,","); 
//
//	} // End of delString
//    
//
//	/**
//	 * �־��� ������ �������� ���θ� �Ǵ��Ѵ�.
//	 *
//	 * @param year int  �⵵
//	 * @return boolean  �������� �ƴ��� ����
//	 */ 
//	public static  boolean isLeapYear( int year) {
//		if( (year % 4 == 0) && ( year % 100 != 0 ) || ( year % 400 == 0) ){
//			return true;
//		}else {
//			return false;
//		}
//	} // End of isLeapYear
//
//	
//	/**
//	 * �־��� ���ڿ��� �޺κп� �ִ� '0'���ڸ� �����Ѵ�.
//	 * ȣ��Ʈ�κ��� ���޹��� �Ǽ��� ������ �Ҽ��� �ڸ��� �� �������� 0�� ��� �����ϴµ� ����Ѵ�.
//	 *
//	 * @param str String    �ڿ� 0�� ä���� �Ǽ��� ���ڿ�
//	 * @return String       �ڿ� ä���� '0'�� ���ŵ� ���ڿ�
//	 */ 
//	public static String trimRZero(String str) {
//		String retval = new String();
//
//		try{
//			retval = str.trim();
//			if (retval == null || retval.equals("") || retval.length() == 0){
//				return "";
//			}
//			
//			if( retval.substring(retval.length()-1).equals("0")){
//				for(int i= retval.length(); i > 0 ; i--){
//					if(retval.substring(retval.length()-1).equals("0") ){
//						retval = retval.substring(0,retval.length()-1);
//					}else{
//						break;
//					}
//				}
//			}
//
//		}catch(Exception e){
//			System.err.println("error :trimRZero() in UtilFmt : "+e.toString());
//		}
//		return retval;  
//	} 
//	
//	
//	/**
//	 * �־��� ���ڿ��� �պκп� �ִ� '0'���ڸ� �����Ѵ�.
//	 * ȣ��Ʈ�κ��� ���޹��� CICS COMMAREA�� ���� �ʵ��� ��쿡 �պκп� ä���� '0'�� �����ϱ����� ���� �� �ִ�.
//	 *
//	 * @param str String    �տ� 0�� ä���� (������ ���ĵ�) ���ڿ�
//	 * @return String       �տ� ä���� '0'�� ���ŵ� ���ڿ�
//	 */ 
//	public static String trimZero(String str) {
//		String retval = new String();
//
//		try{
//			retval = str.trim();
//			if (retval == null || retval.equals("") || retval.length() == 0){
//				return "";
//			}
//			if( retval.substring(0,1).equals("0")){
//				int cnt = retval.length();
//				for(int i= 0; i< cnt ; i++){
//					if(retval.substring(0,1).equals("0") ){
//						retval = retval.substring(1);
//					}else{
//						break;
//					}
//				}
//			}
//
//		}catch(Exception e){
//			System.err.println("error :trimZero() in UtilFmt : "+e.toString());
//		}
//
//		return retval;  
//
//	} // End of trimZero
//	
//	/**
//	 * �־��� ���ڿ��� �պκп� �ִ� '0'���ڸ� �����Ѵ�.
//	 * ȣ��Ʈ�κ��� ���޹��� CICS COMMAREA�� ���� �ʵ��� ��쿡 �պκп� ä���� '0'�� �����ϱ����� ���� �� �ִ�.
//	 * '0'�� ������ ���ڿ��� ''�� ��쿡 default���� �Ѱ��ش�
//	 *
//	 * @param str String    �տ� 0�� ä���� (������ ���ĵ�) ���ڿ�
//	 * @param deflt         default ��
//	 * @return String       �տ� ä���� '0'�� ���ŵ� ���ڿ� '0'�� ������ ���ڿ��� ''�� ��쿡 default���� �Ѱ��ش�
//	 */ 
////	public static String trimZero(String str, String deflt) {
////		String retval = new String();
////
////		try{
////			retval = str.trim();
////			if (retval == null || retval.equals("") || retval.length() == 0){
////				return "";
////			}
////			if( retval.substring(0,1).equals("0")){
////				int cnt = retval.length();
////				for(int i= 0; i< cnt ; i++){
////					if(retval.substring(0,1).equals("0") ){
////						retval = retval.substring(1);
////					}else{
////						break;
////					}
////				}
////			}
////
////		}catch(Exception e){
////			System.err.println("error :trimZero() in UtilFmt : "+e.toString());
////		}
////
////		if(StringUtil.isNull(retval)){
////			retval = deflt;
////		}
////		
////		return retval;  
////
////	} // End of trimZero
//
//
//	/**
//	 * �־��� ���ڿ��� �޺κ� 2�ڸ��� �Ҽ��� ���Ϸ� ó���ϱ� ���� 
//	 * ���ڿ��� �޺κ� 2�ڸ� �ٷ� �տ� �Ҽ���(.)�� �����Ѵ�.
//	 *
//	 * @param target String ������ �Ҽ��� �������� ���� ���ڿ�
//	 * @return String       �Ҽ����� ���Ե� ���ڿ�
//	 */
//	public static String makeRate(String target) {
//		target = trimZero(target.trim());
//		int len = target.length();
//		if(len == 0 || target.equals("") || target == null){
//			return "";
//		}
//		if(len <=2 ){
//			return "0." +target;
//		}else{
//			return target.substring(0,len-2) + "." + target.substring(len-2);
//		}
//
//	} // End of makeRate
//
//	// �Ҽ��� ���о��� ���ڷ� �� ������ ����....
//	// �� float_length�ڸ���ŭ�� �Ҽ��� ���Ϸ� ó���ϰ� '.'�� ������...
//	public static String makeRate(String target,int float_length) {
//		target = trimZero(target.trim());
//		int len = target.length();
//		if(len == 0 || target.equals("") || target == null){
//			return "";
//		}
//		if(len <= float_length ){
//			return "0." +target;
//		}else{
//			return ( target.substring(0,len-float_length) + "."
//					 + target.substring(len-float_length) );
//		}             
//	}
//
//	/**
//	 * ���� ���ڿ��� ������ ���̸�ŭ ���� �� �־��� �������� ����ȭ�Ͽ� ��ȯ�Ѵ�.
//	 * ���� : ���ڿ��� �Ҽ����� �ԷµǸ� �ȵ�.
//	 * @param target String �ҽ� ���ڿ�
//	 * @param fmt String    ���ڿ� ����
//	 * @param cutLength int ���ڿ� �ں��� ������ ����
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String subStrMakeFormat(String target, String fmt,int cutLength){
//		
//		if(target == null || target.length() == 0) 
//			return "";
//		
//		if(cutLength < 0 ) 
//			return target;
//		
//		String ret = "";
//		if(target.length() > cutLength ) {
//			ret = target.substring(0,target.length()-cutLength);
//		} else {
//			ret = target;
//		}
//		
//		ret = makeFormat(ret,fmt);
//		return ret;
//	}
//	
//	/**
//	 * ���� ���ڿ��� �־��� �������� ����ȭ�Ͽ� ��ȯ�Ѵ�.
//	 *
//	 * @param target String �ҽ� ���ڿ�
//	 * @param fmt String    ���ڿ� ����
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(String target, String fmt) {
//		String retval = new String();
//		String sign = "";
//
//		try{
//			fmt = trimZero(fmt.trim());
//			char first = fmt.charAt(0);
//
//			if( first == 'd' || first == 'D') {
//				if(target.length() != 6){
//					throw new java.lang.Exception("Date Incorrect");
//				}
//				retval = makeDate(target);
//			}else{
//				switch(first){
//					case 'S' :
//					case 's' :
//						 sign = "S";
//					case '9' :
//						if(!"0".equals(target))
//							target = trimZero(target.trim());
//						
//						if (target == null || target.equals("") || target.length() == 0){
//							return "0";
//						}
////						if (target.length() > 0 || target.indexOf('-') > 0 ){
////							return "-1";
////						}
//						retval = makeNumeric(target, fmt, sign);
//						break;
//					default : 
//						retval = "";
//				}
//			}
//		}catch(java.lang.Exception e){
//			e.printStackTrace();
//		//  log.printLog(e.toString());
//		}
//
//		return retval;
//
//	} // End of makeFormat
//
//
//
//	/**
//	 * float���� �־��� �������� ����ȭ�Ͽ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target float  ����ȭ�� float
//	 * @param fmt String    ���ڿ� ����
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(float target, String fmt){
//		return makeFormat( String.valueOf(target), fmt);
//	}
//
//
//	/**
//	 * float���� "9.99"�������� ����ȭ�Ͽ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target float  ����ȭ�� float
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(float target){
//		return makeFormat( String.valueOf(target), "9.99");
//	}
//
//
//	/**
//	 * double���� �־��� �������� ����ȭ�Ͽ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target double ����ȭ�� double
//	 * @param fmt String    ���ڿ� ����
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(double target, String fmt){
//		return makeFormat( Double.toString(target), fmt);
//	}
//
//	/**
//	 * double���� "9.99"�������� ����ȭ�Ͽ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target double ����ȭ�� double
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static  String makeFormat(double target){
//		return makeFormat( String.valueOf(target), "9.99");
//	}
//
//
//	/**
//	 * double���� "9" �������� ����ȭ�Ͽ� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param target double ����ȭ�� double
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(long target){
//		return makeFormat( String.valueOf(target), "9");
//	}
//
//	/**
//	 * ���� ���ڿ��� �Ҽ����� ������ "9.99" ��������, ������ "9" �������� ����ȭ�Ͽ� ��ȯ�Ѵ�.
//	 *
//	 * @param target String �ҽ� ���ڿ�
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(String target){
//		if(target.indexOf('.') > -1 ){
//			return makeFormat( target, "9.99");
//		}else{
//			return makeFormat( target, "9");
//		}
//	}
//
//    
//	/**
//	 * ���� ���ڿ��� �־��� �������� ����ȭ�Ͽ� ��ȯ�Ѵ�.
//	 *
//	 * @param target String �ҽ� ���ڿ�
//	 * @param code int      ���ڿ� ����
//	 *                      "9" ������ �� 1
//	 *                      "9.99" ������ �� 2
//	 * @return String       ����ȭ�� ���ڿ�
//	 */ 
//	public static String makeFormat(String target, int code){
//		if (code == 1) {
//			return makeFormat( target,"9") ;
//		} else if( code == 2) {
//			return makeFormat( target,"9.99");
//		} else {
//			return "unknown code";
//		}
//	}
//
//    
//
//	/**
//	 * �־��� ������(Delimiter)�� ���Ե� ��¥������ ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param date String   ��¥ ������ ���ڿ�
//	 *                      �����ڰ� ���ԵǾ��ų� ���Ե��� �ʾҰų� �������.
//	 * @param fmt String    ������(Delimiter)
//	 * @return String       �־��� ������(Delimiter)�� ���Ե� ��¥ ������ ���ڿ�
//	 */
//	public static String makeDate(String date, String fmt) {
//
//		String yy = new String();
//		String mm = new String();
//		String dd = new String();
//		String retval = date;
//		if(retval.indexOf(fmt) == -1)
//		{
//			try{
//				if(date.length() == 6){
//					yy = date.substring(0,2);
//					mm = date.substring(2,4);
//					dd =  date.substring(4,6);
//					retval = yy + fmt + mm + fmt + dd;
//				}else if(date.length() == 8){
//					yy = date.substring(0,4);
//					mm = date.substring(4,6);
//					dd =  date.substring(6,8);
//					retval = yy + fmt + mm + fmt + dd;
//				}
//			}catch(java.lang.StringIndexOutOfBoundsException e){
//				e.printStackTrace();
//			}
//		}   
//		return retval;
//
//	} // End of makeDate
//
//
//	/**
//	 * ������ (/)�� ������(Delimiter)�� ���Ե� ��¥������ ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param date String   ��¥ ������ ���ڿ�
//	 *                      �����ڰ� ���ԵǾ��ų� ���Ե��� �ʾҰų� �������.
//	 * @return String       ������(/)�� ���Ե� ��¥ ������ ���ڿ�
//	 */
//	public static String makeDate(String date){
//		return makeDate(date,"/");
//	}
//
//
//	/**
//	 * �־��� ���ڿ��� ������ ���Ŀ� �´� ���������� Ȯ���Ѵ�.
//	 * CGI�� ������ ���ָ� ���� ���� �޼ҵ��̴�.
//	 *
//	 * @param src String ���Ŀ� �´��� Ȯ���� ���ڿ�
//	 * @param fmt String ������ ����
//	 * @return int  0(OK) �̸� ���Ŀ� �´� ������,
//	 *              �׷��� ������ ���Ŀ� ���� �ʴ� �������̴�. 
//	 *              ���� �ڵ�� ������ ����.
//	 *              ������ ũ�⸦ �ʰ��� ���: SIZE_OVER
//	 *              ���� ����ġ: TYPE_MISMATCH
//	 *              ��¥ ���� ����ġ: DATE_INCORRECT
//	 *              �־��� ������ �� �� ����: FAIL
//	 * @deprecated  CGI���� ȣȯ�� ���� ����
//	 */
//	public static int chkDataFormat(String src, String fmt) {
//		char sign = ' ';
//		int yy, mm, dd;
//		try{    
//		switch(fmt.charAt(0)){
//			case 'x' : // ���ڿ�
//			case 'X' :
//				if( src.length() > fmt.length() ){
//				for( int i= 0; i< src.length() ; i++){
//					if(src.charAt(i) < ' '){
//						return TYPE_MISMATCH ;
//					}
//				}
//				}
//				break;
//			case 's' : // ��ȣ�� �ִ� ���� ���ڿ�
//			case 'S' :
//				sign = 'S';
//			case '9' : // ���� ���ڿ�
//				if( src.length() > fmt.length() ){
//					return SIZE_OVER ;
//				}
//				for( int i= 0; i< src.length() ; i++){
//					switch(src.charAt(i) ){
//						case '-' :
//						case '+' :
//							if( sign != 'S'){
//								return TYPE_MISMATCH;
//							}
//							break;
//						case ',' :
//						case '.' :
//							break;
//						default :
//							if( !Character.isDigit(src.charAt(i)) ){
//								return TYPE_MISMATCH;
//							}
//							break;
//					}
//				}
//				break;
//			case 'd' : // ��¥
//			case 'D' :
//				if( src.length() !=6 ){
//					return DATE_INCORRECT;
//				}
//				yy = Integer.valueOf(src.substring(0,2)).intValue();
//				mm = Integer.valueOf(src.substring(2,4)).intValue();
//				dd = Integer.valueOf(src.substring(4,6)).intValue();
//
//				if(yy < 10 ){
//					yy += 100;
//				}               
//				if( isLeapYear(1900 + yy) ) {
//					maxdd[1] +=1;
//				}
//				if( yy < 0 || yy > 199 || mm <= 0 || mm > 12 ||
//					dd <= 0 || dd > maxdd[mm-1] ){
//						return DATE_INCORRECT;
//				}
//				break;
//			default : // ��Ÿ
//				return FAIL;
//		}
//		}catch(Exception e){
//			e.printStackTrace();
//			return FAIL;
//		}
//		return OK;
//	} // End of chkDataFormat
//
//
//	/**
//	 * �ʿ�� ��ȣ ó���� �ϰ���
//	 * �־��� �������Ŀ� �´� ���ڿ��� �Ҽ��� ó���� �Ŀ�
//	 * õ���� ǥ��(,)�� �����Ѵ�.
//	 *
//	 * @param target String ��� ���ڿ�
//	 * @param fmt String    ���� ���ڿ�
//	 * @param sign String   ��ȣ�ִ� ���ڹ��ڿ����� ����
//	 * @return String       �ݾ� �ʵ� ������ ���ڿ�
//	 */
//	private static String makeNumeric(String target, String fmt, String sign) {
//	//Log log = new Log("/db2/nwww/src/test/nf.log");
//		String fract = "";
//		String retval = "";
//		String tmp = "";
//
////log.printLog("target >> " + target);
//
//  try {
//		// COMMAREA ���� ������ ������ ��쿡�� ....Ȱ���...
//		// �Ϲ������� ���ĺ��� ���ڷ� �ٲٴ� ��쿡�� �ȵ�..����...
//		// HOST���� ������ ���ڰ� ������ ������...
//		/*************************************************
//		J => -1  } => -0   ��) 12J => -121
//		K => -2
//		L => -3
//		M => -4
//		N => -5
//		O => -6
//		P => -7
//		Q => -8
//		R => -9
//		*************************************************/
//		int target_size = target.length();
//		String last_char = target.substring(target_size - 1, target_size);
//		if ( last_char.equals("J")) {
//			target = "-" + target.substring(0,target_size -1)+"1";
//		} else if ( last_char.equals("K")) {
//			target = "-" + target.substring(0,target_size -1)+"2";
//		} else if ( last_char.equals("L")) {
//			target = "-" + target.substring(0,target_size -1)+"3";
//		} else if ( last_char.equals("M")) {
//			target = "-" + target.substring(0,target_size -1)+"4";
//		} else if ( last_char.equals("N")) {
//			target = "-" + target.substring(0,target_size -1)+"5";
//		} else if ( last_char.equals("O")) {
//			target = "-" + target.substring(0,target_size -1)+"6";
//		} else if ( last_char.equals("P")) {
//			target = "-" + target.substring(0,target_size -1)+"7";
//		} else if ( last_char.equals("Q")) {
//			target = "-" + target.substring(0,target_size -1)+"8";
//		} else if ( last_char.equals("R")) {
//			target = "-" + target.substring(0,target_size -1)+"9";
//		} else if ( last_char.equals("}")) {
//			target = "-" + target.substring(0,target_size -1)+"0";
//		}       
//
//		// ������ ���Ӱ� �߰��� �κ�....
//
//		// sign ��� ���� ����
//		float target_value = 0;
//		try { 
//		  target_value = Float.valueOf(target).floatValue(); 
//		} catch(Exception float_error) {
//		  target_value = 0;  
//		} 
//		if( target_value < 0 ){
//				sign = "-";
//				target = target.substring(1);
//		}else if( sign == "S") {
//				sign = "+";
//		}else{
//				sign = ""; // no sign
//		}
//
//		//�Ҽ��� ���� ó�� ����
//		int pidx = target.indexOf('.');
//		int fpidx = fmt.indexOf('.');
//
//		if( pidx >= 0 && fpidx >= 0) {
//			if(pidx == 0){  
//				tmp = "0";
//			}else{
//				tmp = target.substring(0, pidx);//�Ҽ��� �̻�
//			}
//			if(pidx+1 > target.length()){
//				pidx = pidx-1;
//			}
//			if(fpidx+1 > fmt.length()){
//				fpidx = fpidx-1;
//			}
//			fract = "." + makeFract(target.substring(pidx+1), fmt.substring(fpidx+1) );
//
////log.printLog("74 : fract " + fract);
//		}else if( pidx >=0 && fpidx < 0){ //�Ҽ��� ���� ����
//			tmp = target.substring(0,pidx);
//
//		}else if( pidx < 0 && fpidx >= 0){ //�Ҽ��� ���� ����
////			int len = (fmt.length()-1) - fpidx;
//			tmp = target;
//			fract = "." + makeFract("", fmt.substring(fpidx+1) );
//		}else{
//			tmp = target;
//		}
//
//		retval = getComma(tmp);
////log.printLog("returned retval >> " + retval);
//	}catch(Exception e){
//		//log.printLog(e.toString());
//		e.printStackTrace();
//	}
//		return sign + retval + fract;
//
//	} // End of makeNumeric
//            
//
//	/**
//	 * �־��� ���ڿ��� õ���� ǥ��(,)�� �����Ѵ�. 
//	 *
//	 * @param target String ���� ���ڿ�
//	 * @return String       õ���� ǥ��(,)�� ���Ե� ���ڿ�
//	 * @see #delString
//	 */
//	public static String getComma(String target){
//	//  Log log = new Log("/db2/nwww/src/test/nf.log");
//		if(target == null){
//			return "";
//		}
//		StringBuffer tmp = new StringBuffer(target);
//		int len = tmp.length();
//		int cnt = len/3;
//
//	//','�� �ʿ���� ������
//		if( len <=3){
//			return target;
//		}
//
//		try{
//			for(int i=1; i<= cnt ; i++){
//				int offset = len -i*3;
//				if( offset !=0){
//					tmp.insert(offset,','); 
//				}
//			}   
//		}catch(Exception e){
//			//log.printLog(e.toString());
//			e.printStackTrace();
//		}
//
////	log.printLog("getComma() : retval >> " + tmp.toString());
//
//		return  tmp.toString();
//
//	} // End of getComma
//    
//
//	/**
//	 * �־��� ���ڿ����� �־��� ���� �ڸ��� ��ŭ �Ҽ������� ���� ��´�.
//	 *
//	 * @param pnum String   ���� ���ڿ�
//	 * @param fnum String   �ڸ��� ����
//	 * @return String       �Ҽ��� ���Ͽ� �ش��ϴ� ���ڿ�
//	 */
//	private static String makeFract(String pnum, String fnum){
//	//  Log log = new Log("/db2/nwww/src/test/nf.log");
//		int plen= pnum.length();
//		int flen = fnum.length();
//		try{
//			if(plen == flen) {
//				return pnum;
//			}else if(plen < flen){
//				String retval = pnum;
//				for(int i=plen ; i<flen ; i++){
//					retval = retval +"0";
//				}
//				return retval;
//			}else{
//				return pnum.substring(0,flen);
//			}       
//		}catch(Exception e){
//			e.printStackTrace();
//			//log.printLog(e.toString());
//		}
//		return "";
//
//	} // End of makeFract
//
//
//	/**
//	 * �־��� ���� ��û���� ���ϴ� �̸��� �Ű������� ã�� �� ���� ��ȯ�Ѵ�.
//	 * �� ��, �ش� �Ű������� ���ų� �� ���ڿ��̸�, �⺻���� ��ȯ�Ѵ�.
//	 *
//	 * @param req javax.servlet.http.HttpServletRequest ���� ��û
//	 * @param name String   �Ű������� �̸� 
//	 * @param init String   �Ű������� �⺻�� 
//	 * @see javax.servlet.http.HttpServletRequest.getParameter
//	 */
//	public static String getParameter(javax.servlet.http.HttpServletRequest req,
//								String name, String init)
//	{
//		String value = req.getParameter(name);
//
//		if( value != null){
//			if( value.equals(""))   
//				return init;
//			else
//				return value;
//		}else {
//			return init;
//		}
//
//	} // End of getParameter
//
//
//
//	/**
//	 * �־��� ���� ��û���� ���ϴ� �̸��� �Ű������� ã�� ���� ���ĵ�(�պκп� ������ ä����) ���� ��ȯ�Ѵ�.
//	 * �� ��, �ش� �Ű������� ���ų� �� ���ڿ��̸�,
//	 * �־��� ���̸�ŭ ���鹮�ڷ� ä�� ���ڿ��� ��ȯ�Ѵ�.
//	 *
//	 * @param req javax.servlet.http.HttpServletRequest ���� ��û
//	 * @param name String   �Ű������� �̸� 
//	 * @param init String   �Ű������� �⺻�� 
//	 * @see javax.servlet.http.HttpServletRequest.getParameter
//	 */
//	public static String getParameter(javax.servlet.http.HttpServletRequest req, String name, int len) {
//
//		String value = "";
//
//		value = req.getParameter(name);
//		if( value == null )
//			value = getString(len);
//		else if ( value.length() != len )
//			value = getString(value, len);
//
//		return value;
//	} // End of getParameter
//
//
//	/**
//	 * �־��� ��¥ ������ ���ڿ����� "yyyy-MM-dd" ������ ���ڿ��� ��ȯ�Ѵ�.
//	 * �־��� ���ڿ��� ��¥ ������ �ƴ� ��� ���ܸ� �߻��Ѵ�.
//	 *
//	 * @param strText String ��¥ ������ ���ڿ�
//	 * @return String        "yyyy-MM-dd" ������ ���ڿ�
//	 * @exception IllegalArgumentException �־��� ���ڿ��� ��¥ ������ �ƴ� ���
//	 */
//	public static String parseYYYYMMDD (String strText)
//					throws IllegalArgumentException
//	{
//		String strReturn = new String();
//
//		try {
//
//			SimpleDateFormat dateChecker = new SimpleDateFormat("yyyy-MM-dd");
//
//			if ( strText.length() == 10 ) {
//
//				if ( strText.charAt(4) == strText.charAt(7) ) {
//					strReturn = strText.substring(0, 4)
//						+ "-" + strText.substring(5, 7)
//						+ "-" + strText.substring(8, 10);
//
//				} else {
//					throw new IllegalArgumentException();
//				}
//
//			} else if (strText.length() == 8) {
//
//				strReturn = strText.substring(0, 4)
//					+ "-" + strText.substring(4, 6)
//					+ "-" + strText.substring(6, 8);
//
//			} else if ( strText.length() == 0 ) {
//
//				//strReturn = "1111-11-11";
//				strReturn = "";
//
//			} else {
//				throw new IllegalArgumentException();
//			} // End of if-else
//
//			dateChecker.parse(strReturn, new ParsePosition (0) );
//
//		} catch (java.lang.Exception ex) {
//
//			throw new IllegalArgumentException(ex.toString());
//
//		} // End of try-catch
//
//
//		return strReturn;
//
//	} // End of parseYYYYMMDD
//
//
//
//	/**
//	 * �־��� ���¹�ȣ�� ������(-)�� �ִ� ���, �뽬�� �����ϰ�
//	 * ���ڰ� �ƴ� ���ڰ� ����(������ ����)�� ��� ���ܸ� �߻��Ѵ�.
//	 *
//	 * @param strText String ���¹�ȣ
//	 * @return String        ������(-)�� ���ŵ� ���¹�ȣ
//	 * @exception IllegalArgumentException ���ڰ� �ƴ� ����(������ ����)�� ���Ե� ���
//	 */
//	public static String parseGjNo (String strText)
//					throws IllegalArgumentException
//	{
//		String strReturn = new String();
//
//		try {
//
//			if ( strText.indexOf("-") >= 0 ) {
//				strReturn = delString(strText, "-");
//			} else {
//				strReturn = strText;
//			}
//
//			for (int nDash = 0; nDash < strReturn.length(); nDash++) {
//
//				if ( (strReturn.charAt(nDash) < '0')
//					|| (strReturn.charAt(nDash) > '9') )
//				{
//					throw new IllegalArgumentException();
//				} // End of if
//
//			} // End of for
//
//		} catch (java.lang.Exception ex) {
//
//			throw new IllegalArgumentException(ex.toString());
//
//		} // End of try-catch
//
//		return strReturn;
//
//	} // End of parseGjNo
//
//	/**
//	 * �־��� ���ڹ迭�� ��/�ݰ� ���ο� ������� �� ���� ���鹮�ڸ� �����Ѵ�.<br>
//	 * String Ŭ������ trim �޼ҵ�� ���� ���鹮�ڸ� trim���� ���Ѵ�.<br>
//	 * '��'(�������� �����̽�)�� - String Ŭ������ trim �޼ҵ忡��ó�� -
//	 * ' '(�����̽�)���� �۰ų� ���� ������ ��� ���鹮�ڷ� �����Ͽ� trim�Ѵ�.
//	 *
//	 * @param szTxt String      �ҽ� ���ڹ迭
//	 * @return java.lang.String trim�� ���ڿ�
//	 */
//	public static String trim(String strTxt) {
//        if(strTxt==null) return "";
//		char [] szTxt = strTxt.toCharArray();
//		int len = szTxt.length;
//		int st = 0;
//		while ( (st < len) && 
//				((szTxt[st] <= ' ') || (szTxt[st] == '��')) ) {
//			st++;
//		}
//		while ( (st < len) && 
//				((szTxt[len - 1] == '��') || (szTxt[len - 1] <= ' ')) ) {
//			len--;
//		}
//        
//		if ((st > 0) || (len < szTxt.length)) {
//			if (st == len)
//				return new String("");
//			else            
//				return new String(szTxt, st, (len-st));
//		} else {
//			return new String(szTxt);
//		}
//	} // End of trim
//
//
//	/**
//	 * �־��� ���ڹ迭�� ��/�ݰ� �����̽��� �����Ѵ�.<br>
//	 * ��, ���ڿ����� ��� ����/�ݰ� �����̽��� ���ŵ�
//	 * ���ο� ���ڿ��� String�� ��ȯ�Ѵ�..
//	 *
//	 * @param szTxt String      �ҽ� ���ڹ迭
//	 * @return java.lang.String trim�� ���ڿ�
//	 */
//	public static String deleteAllSpace(String strTxt) {
//		if (strTxt == null) {
//			strTxt = "";
//		}  
//		int origin_length = strTxt.length();
//        
//		if ( origin_length == 0 ) {
//			return new String("");
//		} else {
//			char source[] = strTxt.toCharArray();
//			int  source_length = source.length;
//			StringBuffer target = new StringBuffer();
//			for (int i=0; i< source_length;i++) {
//				if ((source[i] != ' ') &&
//					(source[i] != ' ')) {
//					target = target.append(source,i,1);
//				}
//			}
//			String newString = target.toString();
//			if (newString == null ) {
//			   newString = "";
//			}          
//   
//			return newString;
//		}
//	}
//
//	/**
//	 * �־��� ���� ��û���� ���ϴ� �̸��� �Ű������� ã�� �� ���� ��ȯ�Ѵ�.
//	 * �� ��, �ش� �Ű������� ���ų� �� ���ڿ��̸�, �⺻���� ��ȯ�Ѵ�.
//	 *
//	 * @param name String   �Ű������� �̸� 
//	 * @param init String   �Ű������� �⺻�� 
//	 */
//	public static String chkNull(String strVal, String init)
//	{
//
//		if( strVal != null){
//			if( strVal.equals(""))  
//				return init;
//			else
//				return strVal;
//		}else {
//			return init;
//		}
//
//	} // End of chkNull  ���濭 ����...2001�� 12�� 26��
//
//	
//	/**
//	 * �׽�Ʈ �ڵ带 �����ϴ� main() �޼ҵ�
//	 * @param args ���࿡ �ʿ��� ���� ����Ʈ
//	 * @throws Exception main() �޼ҵ� ���� �� �߻��ϴ� Exception
//	 */
//	public static void main(String [] args) throws Exception {
//		
//		
//		
////		System.out.println(rPadding("��", 4, '0'));
////		System.out.println(rPadding("��", 3, '0'));
////		System.out.println(lPadding("����", 1, '0'));
////		System.out.println(lPadding("����", 6, '0'));
////		System.out.println(getToday("HHmmss"));
////		System.out.println(getToday("HHmmss"));
////		System.out.println(getToday("HHmmss"));
////		System.out.println(getToday("HHmmss"));
////		System.out.println(getToday("yyyyMMddHHmmss"));
////		System.out.println("["+doublePadding(123.45678,16,2)+"]"); //[012345]
////		System.out.println("["+doubleDotPadding(123.45678,16,2)+"]"); //[123.45]
////		
////		System.out.println("["+doubleDotPadding(123.45678,10,2,' ')+"]"); //[    123.45]
////		
////		System.out.println(new Timestamp(getTimeInMillis("20050420181010", "yyyyMMddHHmmss")));
////		System.out.println("["+trim(new String("   123   456  "))+"]");
////        System.out.println("["+trim(null)+"]");
//////	    String today = FormatUtil.getToday();
//////	    System.out.println("######### " + getDate(today));
//////	    
//////	    System.out.println(new Timestamp(getTimeInMillis("20041010", "yyyyMMdd")));
//////	    
//////	    
//////	    
//////	    System.out.println(getTimeInMillis("2004-01", "yyyy-MM")); 
//////	    
//////	    String testString = "AAA";
//////	    String sString = FormatUtil.append0x1f(testString);
//////	    System.out.println("source String : " + StringUtil.printFormattedToHexString(testString) + " -> appendedString : " + StringUtil.printFormattedToHexString(sString));
//////	    System.out.println("appendedString String : " + StringUtil.printFormattedToHexString(sString) + " -> remove appendedString : " + StringUtil.printFormattedToHexString(sString.trim()));
//////	    System.out.println("appendedString String : " + StringUtil.printFormattedToHexString(sString) + " -> remove appendedString : " + StringUtil.printFormattedToHexString(FormatUtil.removeTail0x1f(sString)));
//////	    
//////	    System.out.println("FormatUtil.lPadding(testString, 10, '0') : [" + FormatUtil.lPadding(testString, 10, '0'));
//////	    System.out.println("FormatUtil.rPadding(testString, 10, '0') : [" + FormatUtil.rPadding(testString, 10, '0'));
//////        
//////        testString = "�ߺ��� �ŷ�������ȣ�Դϴ�.|BIC�ڵ�:NACFKRS0XXX|�ŷ�������ȣ:FS04ZZ090702";
//////        System.out.println(FormatUtil.rPadding(testString, 60, ' '));
////	
////        System.out.println(doublePadding(123456789012345.012,17,2));
////        System.out.println(doubleDotPadding(12345678901234.012,17,2));
//    }//end of main()
//	/**
//	 * +- ��ȣ�� �ִ� �ݾ��� parsing�Ѵ� 
//	 * @param amount �ݾ�
//	 * @return
//	 */
//	public static long parseSignedAmount(String amount) {
//		char sign = amount.charAt(0);
//		if (sign == '-' || sign == '+') {
//			String value = amount.substring(1);
//			long retValue = Long.parseLong(value);
//			if (sign == '-')
//				retValue = - retValue;
//			
//			return retValue;
//		}
//		return Long.parseLong(amount);
//	}
}
