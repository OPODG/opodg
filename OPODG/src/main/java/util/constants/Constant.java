package util.constants;

/**
 * ��� Ŭ����
 * 
 * @version : 1.0
 * @author  : Finger
 *
 */
public class Constant {

//	//XML Mapping..................................................................
//	//���ε弭�� ���ε��н�
//	public static String LOCAL_UPLOAD_ROOT = "AttFile.Upload.LocalImageUploadPath";
//	//���ε弭�� ���̺귯���н�
//	public static String LOCAL_LIB_UPLOAD_ROOT = "AttFile.Upload.LocalLibUploadPath";
//	//�̹������� ���ε��н�
//	public static String UPLOAD_ROOT = "AttFile.Upload.ImageUploadPath";
//	//http �ٿ�ε��н�
//	public static String DOWNLOAD_URL = "AttFile.Url.ImageUrlPath";
//	//�����н�
//	public static String FILTER_URL = "AttFile.Url.FilterPath";
//	
//	public static String UPLOAD_URL = "AttFile.Url.UploadUrlPath";
//	
//	//�ʱ����
//	public static String INIT_VER = "AttFile.Init.Ver";
//	
//	//�÷��� : ������
//	public static String PLAT_IPHONE = "AttFile.Platform.Ios";
//	//�÷��� : �ȵ���̵�
//	public static String PLAT_ANDROID = "AttFile.Platform.Android";
//	//XML Mapping..................................................................
//
//	//�з� �ڵ�.......................................................................
//	//�̼���
//	public static String NOT_SEL = "0";
//	
//	//�޴� �ڵ�
//	//��� �޴�
//	public static String BOARD_LIST = "1";
//	//�ű� �޴�
//	public static String BOARD_NEW = "2";
//	//��� �޴�
//	public static String BOARD_REG = "3";
//	//���� �޴�
//	public static String BOARD_MOD = "4";
//	
//	//���_���� : ���
//	public static String EMERGENCY_Y = "Y";
//	//���_���� : ����
//	public static String EMERGENCY_N = "N";
//	
//	//����_���� : ���� OK
//	public static String SESSION_Y = "Y";
//	//����_���� : ���� NG
//	public static String SESSION_N = "N";
//	
//	//����_���� : ����
//	public static String DEL_Y = "Y";
//	//����_���� : �����
//	public static String DEL_N = "N";
//	
//	//����_���� : ���� �Ϸ�
//	public static String UPDATE_Y = "Y";
//	//����_���� : ���� �̿�
//	public static String UPDATE_N = "N";
//	
//	//����_���� : ���� ����
//	public static String SAFE_Y = "Y";
//	//����_���� : ���� ����
//	public static String SAFE_N = "N";
//	
//	//����_�α�_���� : NONE
//	public static String SAFE_LOG_LEVEL_NONE = "none";
//	//����_�α�_���� : CHECK
//	public static String SAFE_LOG_LEVEL_CHECK = "check";
//	//����_�α�_���� : ALL
//	public static String SAFE_LOG_LEVEL_ALL = "all";
//	
//	//����_�α�_��� : FAIL
//	public static String SAFE_LOG_METHOD_FAIL = "fail";
//	//����_�α�_��� : OK
//	public static String SAFE_LOG_METHOD_OK = "ok";
//	//����_�α�_��� : ALL
//	public static String SAFE_LOG_METHOD_ALL = "all";
//
//	//���� : ���� �����
//	public static String ST_SUBUSER = "0";
//	//���� : ����
//	public static String ST_NORMAL = "1";
//	//���� : ����
//	public static String ST_STOP = "2";
//	
//	//�÷��� : �ȵ���̵�
//	public static String ANDROID = "A";
//	public static String ANDROID_FULL = "android";
//	//�÷��� : ������
//	public static String IOS = "I";
//	public static String IOS_FULL = "iphone";
//	//�÷��� : KT
//	public static String KT = "K";
//	
//	//���� : ������Ʈ ����
//	public static String KBN_UPDATE = "U";
//	//���� : ���� ����
//	public static String KBN_RUN = "R";
//	//���� : �ֽ� ����
//	public static String KBN_NEW = "0";
//	
//	//���丮�� : �ӽ�
//	public static String PATH_TMP = "temp";
//	//���丮�� : �ֽ�����
//	public static String PATH_NEW = "new";
//	//���丮�� : ��������
//	public static String PATH_UPD = "update";
//	//���丮�� : ��������
//	public static String PATH_ENG = "eng";
//	//���丮�� : �������
//	public static String PATH_MOD = "mod";
//	//���丮�� : �ȵ���̵� ��������
//	public static String PATH_APK = "apk";
//	//���丮�� : ������ ��������
//	public static String PATH_IPA = "ipa";
//	//���丮�� : �̹���
//	public static String PATH_IMAGES = "images";
//	//���丮�� : ��Ÿ���̹���
//	public static String PATH_IMG = "img";
//	//���丮�� : ��Ʈ
//	public static String PATH_FONT = "font";
//	
//	//����Ÿ�� : GIF
//	public static String FILE_GIF = "gif";
//	//����Ÿ�� : PNG
//	public static String FILE_PNG = "png";
//	//����Ÿ�� : JPG
//	public static String FILE_JPG = "jpg";
//	//����Ÿ�� : TTF
//	public static String FILE_TTF = "ttf";
//	
//	//���Ÿ�� : APP ���
//	public static String LIST_APP = "appViewList";
//	//���Ÿ�� : APP ���� ���
//	public static String LIST_APPVER = "appVerList";
//	//���Ÿ�� : ������ ���
//	public static String LIST_DOMAIN = "domainViewList";
//	//���Ÿ�� : ������ ���� ���
//	public static String LIST_ADMUSER = "userList";
//	//���Ÿ�� : ����� ���� ���
//	public static String LIST_SAFEUSER = "safeUserList";
//	//���Ÿ�� : ����� ���� �� ���
//	public static String LIST_SAFEDETAILUSER = "safeUserDetail";
//	//���Ÿ�� : �ǽð� ���� ���
//	public static String LIST_SAFE = "safeList";
//	//���Ÿ�� : ���ں� ���� ���
//	public static String LIST_SAFEDAY = "safeDayList";
//	//���Ÿ�� : �ۺ� ���� ���
//	public static String LIST_SAFEAPP = "safeAppList";
//	//���Ÿ�� : ���� ���
//	public static String LIST_ROOTING = "rootingList";
//	//���Ÿ�� : ���� ���
//	public static String LIST_ENG = "engViewList";
//	//���Ÿ�� : ��� ���
//	public static String LIST_MOD = "modViewList";
//	//���Ÿ�� : ��� ���� ���
//	public static String LIST_MODFILE = "modFileViewList";
//
//	//DataBase : Mysql
//	public static String DB_MYSQL = "com.mysql.jdbc.JDBC4Connection";
//	//�з� �ڵ�.......................................................................
//	
//	//��� �ڵ�.......................................................................
//	//��� : ó������(����üũ, FTP���ۿ�)
//	public static String RTN_OK = "SUCCESS";
//	//��� : ó������(����üũ, FTP���ۿ�)
//	public static String RTN_NG = "FALSE";
//	//��� : ó������(FTP���ۿ�) Ÿ�Ӿƿ�
//	public static String RTN_TIMEOUT = "TIMEOUT";
//	//��� : ó������(FTP���ۿ�) ���0
//	public static String RTN_NOTHING = "NOTHING";
//	//��� : ���Ϲ���(����üũ)
//	public static String RTN_SAME = "SAME";
//	//��� : ó������(���� ��Ʃ��� ���Ͽ�)
//	public static String RETURN_STR_SUCCESS = "ok";
//	//��� : ó������(���� ��Ʃ��� ���Ͽ�)
//	public static String RETURN_STR_FAIL = "ng";
//	
//	//�Ķ���� üũ
//	//SMART SAFER ���� �ڵ� : APP ���̵� �������� �ʽ��ϴ�.
//	public static String ERR_1001 = "SSE1001";
//	//SMART SAFER ���� �ڵ� : ������Ʈ�������� �������� �ʽ��ϴ�.
//	public static String ERR_1002 = "SSE1002";
//	//SMART SAFER ���� �ڵ� : �����ڰ� �������� �ʽ��ϴ�.(������Ʈ����, ��������)
//	public static String ERR_1003 = "SSE1003";
//	//SMART SAFER ���� �ڵ� : �ȵ���̵� APP �������� �������� �ʽ��ϴ�.
//	public static String ERR_1004 = "SSE1004";
//	//SMART SAFER ���� �ڵ� : ������ APP �������� �������� �ʽ��ϴ�.
//	public static String ERR_1005 = "SSE1005";
//	//SMART SAFER ���� �ڵ� : ���� ���̵� �������� �ʽ��ϴ�.
//	public static String ERR_1101 = "SSE1101";
//	//SMART SAFER ���� �ڵ� : ���� ��й�ȣ�� �������� �ʽ��ϴ�.
//	public static String ERR_1102 = "SSE1102";
//	//SMART SAFER ���� �ڵ� : APPID ���� �����մϴ�.
//	public static String ERR_1201 = "SSE1201";
//	//SMART SAFER ���� �ڵ� : APPID ���� Ʋ�Ƚ��ϴ�.
//	public static String ERR_1202 = "SSE1202";
//	//SMART SAFER ���� �ڵ� : PLATFORM ���� �����մϴ�.
//	public static String ERR_1203 = "SSE1203";
//	//SMART SAFER ���� �ڵ� : PLATFORM ���� Ʋ�Ƚ��ϴ�.
//	public static String ERR_1204 = "SSE1204";
//	//SMART SAFER ���� �ڵ� : VERSION ���� �����մϴ�.
//	public static String ERR_1205 = "SSE1205";
//
//	//�Է����� ����
//	//SMART SAFER ���� �ڵ� : �Է��� �ȵ���̵� �������� �����մϴ�.(������Ʈ������ ��쿡��)
//	public static String ERR_2001 = "SSE2001";
//	//SMART SAFER ���� �ڵ� : �Է��� �ȵ���̵� �������� ����� �� ���� �����Դϴ�.(���������� ���)
//	public static String ERR_2002 = "SSE2002";
//	//SMART SAFER ���� �ڵ� : �Է��� ������ �������� �����մϴ�.(������Ʈ������ ��쿡��)
//	public static String ERR_2003 = "SSE2003";
//	//SMART SAFER ���� �ڵ� : �Է��� ������ �������� ����� �� ���� �����Դϴ�.(���������� ���)
//	public static String ERR_2004 = "SSE2004";
//	//SMART SAFER ���� �ڵ� : ���� ������ �������� �ʽ��ϴ�.
//	public static String ERR_2101 = "SSE2101";
//	//SMART SAFER ���� �ڵ� : ��й�ȣ�� Ʋ�Ƚ��ϴ�.
//	public static String ERR_2102 = "SSE2102";
//	//SMART SAFER ���� �ڵ� : ������ ���ܵ� �����Դϴ�.
//	public static String ERR_2103 = "SSE2103";
//	//SMART SAFER ���� �ڵ� : ������ �����Դϴ�.
//	public static String ERR_2104 = "SSE2104";
//	//SMART SAFER ���� �ڵ� : APP�� ���� ������ �����ϴ�.
//	public static String ERR_2105 = "SSE2105";
//	
//	//SMART SAFER ���� �ڵ� : APP �ּ� ��濡 �����߽��ϴ�.
//	public static String ERR_3001 = "SSE3001";
//
//	//���� ����
//	//SMART SAFER ���� �ڵ� : ������ ��θ� ã�� �� �����ϴ�.
//	public static String ERR_6001 = "SSE6001";
//	//SMART SAFER ���� �ڵ� : ���ε� ���� ����� 0�Դϴ�.
//	public static String ERR_6002 = "SSE6002";
//	//SMART SAFER ���� �ڵ� : �ȵ���̵� ���� ������ �������� �ʽ��ϴ�.
//	public static String ERR_6101 = "SSE6101";
//	//SMART SAFER ���� �ڵ� : ������ ���� ������ �������� �ʽ��ϴ�.
//	public static String ERR_6102 = "SSE6102";
//	//SMART SAFER ���� �ڵ� : ���ε� ���� �뷮�� ������ �ʰ��߽��ϴ�.
//	public static String ERR_6104 = "SSE6104";
//	//SMART SAFER ���� �ڵ� : NEW ���� �뷮�� ������ �ʰ��߽��ϴ�.
//	public static String ERR_6105 = "SSE6105";
//	//SMART SAFER ���� �ڵ� : �������� ������Ʈ �� �� ������ 2������ �մϴ�.
//	public static String ERR_6106 = "SSE6106";
//
//	//FTP ����
//	//SMART SAFER ���� �ڵ� : ������Ʈ���� ���ε� �� FTP������ �߻��߽��ϴ�.
//	public static String ERR_7001 = "SSE7001";
//	//SMART SAFER ���� �ڵ� : �������� ���ε� �� FTP������ �߻��߽��ϴ�.
//	public static String ERR_7002 = "SSE7002";
//	//SMART SAFER ���� �ڵ� : ������Ʈ���� �ٿ�ε� �� FTP������ �߻��߽��ϴ�.
//	public static String ERR_7003 = "SSE7003";
//	//SMART SAFER ���� �ڵ� : ������Ʈ���� �ٿ�ε� �� Ÿ�Ӿƿ��� �߻��߽��ϴ�.
//	public static String ERR_7004 = "SSE7004";
//	//SMART SAFER ���� �ڵ� : ������Ʈ���� �ٿ�ε� ��� �Ǽ��� 0 ���Դϴ�.
//	public static String ERR_7005 = "SSE7005";
//
//	//DB ����
//	//SMART SAFER ���� �ڵ� : SQL������ �߻��߽��ϴ�.
//	public static String ERR_8001 = "SSE8001";
//	//SMART SAFER ���� �ڵ� : ����Ű�� �������� �ʽ��ϴ�.
//	public static String ERR_8002 = "SSE8002";
//	
//	//SMART SAFER ���� �ڵ� : ���ε�α� ���� �߿� ������ �߻��߽��ϴ�.
//	public static String ERR_9001 = "SSE9001";
//	//SMART SAFER ���� �ڵ� : �ý��ۿ����� �߻��Ͽ����ϴ�. �����ڿ��� ������ �ּ���.
//	public static String ERR_9999 = "SSE9999";
//	//��� �ڵ�.......................................................................
	
}
