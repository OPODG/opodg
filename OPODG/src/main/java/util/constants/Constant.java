package util.constants;

/**
 * 상수 클래스
 * 
 * @version : 1.0
 * @author  : Finger
 *
 */
public class Constant {

//	//XML Mapping..................................................................
//	//업로드서버 업로드패스
//	public static String LOCAL_UPLOAD_ROOT = "AttFile.Upload.LocalImageUploadPath";
//	//업로드서버 라이브러리패스
//	public static String LOCAL_LIB_UPLOAD_ROOT = "AttFile.Upload.LocalLibUploadPath";
//	//이미지서버 업로드패스
//	public static String UPLOAD_ROOT = "AttFile.Upload.ImageUploadPath";
//	//http 다운로드패스
//	public static String DOWNLOAD_URL = "AttFile.Url.ImageUrlPath";
//	//필터패스
//	public static String FILTER_URL = "AttFile.Url.FilterPath";
//	
//	public static String UPLOAD_URL = "AttFile.Url.UploadUrlPath";
//	
//	//초기버전
//	public static String INIT_VER = "AttFile.Init.Ver";
//	
//	//플램폼 : 아이폰
//	public static String PLAT_IPHONE = "AttFile.Platform.Ios";
//	//플램폼 : 안드로이드
//	public static String PLAT_ANDROID = "AttFile.Platform.Android";
//	//XML Mapping..................................................................
//
//	//분류 코드.......................................................................
//	//미선택
//	public static String NOT_SEL = "0";
//	
//	//메뉴 코드
//	//목록 메뉴
//	public static String BOARD_LIST = "1";
//	//신규 메뉴
//	public static String BOARD_NEW = "2";
//	//등록 메뉴
//	public static String BOARD_REG = "3";
//	//수정 메뉴
//	public static String BOARD_MOD = "4";
//	
//	//긴급_여부 : 긴급
//	public static String EMERGENCY_Y = "Y";
//	//긴급_여부 : 공지
//	public static String EMERGENCY_N = "N";
//	
//	//세션_여부 : 세션 OK
//	public static String SESSION_Y = "Y";
//	//세션_여부 : 세션 NG
//	public static String SESSION_N = "N";
//	
//	//삭제_여부 : 삭제
//	public static String DEL_Y = "Y";
//	//삭제_여부 : 비삭제
//	public static String DEL_N = "N";
//	
//	//배포_여부 : 배포 완료
//	public static String UPDATE_Y = "Y";
//	//배포_여부 : 배포 미완
//	public static String UPDATE_N = "N";
//	
//	//관제_여부 : 관제 시작
//	public static String SAFE_Y = "Y";
//	//관제_여부 : 관제 중지
//	public static String SAFE_N = "N";
//	
//	//관제_로그_레벨 : NONE
//	public static String SAFE_LOG_LEVEL_NONE = "none";
//	//관제_로그_레벨 : CHECK
//	public static String SAFE_LOG_LEVEL_CHECK = "check";
//	//관제_로그_레벨 : ALL
//	public static String SAFE_LOG_LEVEL_ALL = "all";
//	
//	//관제_로그_방식 : FAIL
//	public static String SAFE_LOG_METHOD_FAIL = "fail";
//	//관제_로그_방식 : OK
//	public static String SAFE_LOG_METHOD_OK = "ok";
//	//관제_로그_방식 : ALL
//	public static String SAFE_LOG_METHOD_ALL = "all";
//
//	//상태 : 하위 사용자
//	public static String ST_SUBUSER = "0";
//	//상태 : 보통
//	public static String ST_NORMAL = "1";
//	//상태 : 차단
//	public static String ST_STOP = "2";
//	
//	//플랫폼 : 안드로이드
//	public static String ANDROID = "A";
//	public static String ANDROID_FULL = "android";
//	//플랫폼 : 아이폰
//	public static String IOS = "I";
//	public static String IOS_FULL = "iphone";
//	//플랫폼 : KT
//	public static String KT = "K";
//	
//	//구분 : 업데이트 파일
//	public static String KBN_UPDATE = "U";
//	//구분 : 실행 파일
//	public static String KBN_RUN = "R";
//	//구분 : 최신 파일
//	public static String KBN_NEW = "0";
//	
//	//디렉토리명 : 임시
//	public static String PATH_TMP = "temp";
//	//디렉토리명 : 최신파일
//	public static String PATH_NEW = "new";
//	//디렉토리명 : 버전파일
//	public static String PATH_UPD = "update";
//	//디렉토리명 : 엔진파일
//	public static String PATH_ENG = "eng";
//	//디렉토리명 : 모듈파일
//	public static String PATH_MOD = "mod";
//	//디렉토리명 : 안드로이드 실행파일
//	public static String PATH_APK = "apk";
//	//디렉토리명 : 아이폰 실행파일
//	public static String PATH_IPA = "ipa";
//	//디렉토리명 : 이미지
//	public static String PATH_IMAGES = "images";
//	//디렉토리명 : 스타일이미지
//	public static String PATH_IMG = "img";
//	//디렉토리명 : 폰트
//	public static String PATH_FONT = "font";
//	
//	//파일타입 : GIF
//	public static String FILE_GIF = "gif";
//	//파일타입 : PNG
//	public static String FILE_PNG = "png";
//	//파일타입 : JPG
//	public static String FILE_JPG = "jpg";
//	//파일타입 : TTF
//	public static String FILE_TTF = "ttf";
//	
//	//목록타입 : APP 목록
//	public static String LIST_APP = "appViewList";
//	//목록타입 : APP 버전 목록
//	public static String LIST_APPVER = "appVerList";
//	//목록타입 : 도메인 목록
//	public static String LIST_DOMAIN = "domainViewList";
//	//목록타입 : 관리자 유저 목록
//	public static String LIST_ADMUSER = "userList";
//	//목록타입 : 사용자 관리 목록
//	public static String LIST_SAFEUSER = "safeUserList";
//	//목록타입 : 사용자 관리 상세 목록
//	public static String LIST_SAFEDETAILUSER = "safeUserDetail";
//	//목록타입 : 실시간 관제 목록
//	public static String LIST_SAFE = "safeList";
//	//목록타입 : 일자별 관제 목록
//	public static String LIST_SAFEDAY = "safeDayList";
//	//목록타입 : 앱별 관제 목록
//	public static String LIST_SAFEAPP = "safeAppList";
//	//목록타입 : 루팅 목록
//	public static String LIST_ROOTING = "rootingList";
//	//목록타입 : 엔진 목록
//	public static String LIST_ENG = "engViewList";
//	//목록타입 : 모듈 목록
//	public static String LIST_MOD = "modViewList";
//	//목록타입 : 모듈 파일 목록
//	public static String LIST_MODFILE = "modFileViewList";
//
//	//DataBase : Mysql
//	public static String DB_MYSQL = "com.mysql.jdbc.JDBC4Connection";
//	//분류 코드.......................................................................
//	
//	//결과 코드.......................................................................
//	//결과 : 처리성공(버전체크, FTP전송용)
//	public static String RTN_OK = "SUCCESS";
//	//결과 : 처리실패(버전체크, FTP전송용)
//	public static String RTN_NG = "FALSE";
//	//결과 : 처리실패(FTP전송용) 타임아웃
//	public static String RTN_TIMEOUT = "TIMEOUT";
//	//결과 : 처리실패(FTP전송용) 취득0
//	public static String RTN_NOTHING = "NOTHING";
//	//결과 : 동일버전(버전체크)
//	public static String RTN_SAME = "SAME";
//	//결과 : 처리성공(개발 스튜디오 리턴용)
//	public static String RETURN_STR_SUCCESS = "ok";
//	//결과 : 처리실패(개발 스튜디오 리턴용)
//	public static String RETURN_STR_FAIL = "ng";
//	
//	//파라메터 체크
//	//SMART SAFER 에러 코드 : APP 아이디가 존재하지 않습니다.
//	public static String ERR_1001 = "SSE1001";
//	//SMART SAFER 에러 코드 : 업데이트버전명이 존재하지 않습니다.
//	public static String ERR_1002 = "SSE1002";
//	//SMART SAFER 에러 코드 : 구분자가 존재하지 않습니다.(업데이트파일, 실행파일)
//	public static String ERR_1003 = "SSE1003";
//	//SMART SAFER 에러 코드 : 안드로이드 APP 버전명이 존재하지 않습니다.
//	public static String ERR_1004 = "SSE1004";
//	//SMART SAFER 에러 코드 : 아이폰 APP 버전명이 존재하지 않습니다.
//	public static String ERR_1005 = "SSE1005";
//	//SMART SAFER 에러 코드 : 유저 아이디가 존재하지 않습니다.
//	public static String ERR_1101 = "SSE1101";
//	//SMART SAFER 에러 코드 : 유저 비밀번호가 존재하지 않습니다.
//	public static String ERR_1102 = "SSE1102";
//	//SMART SAFER 에러 코드 : APPID 값이 부족합니다.
//	public static String ERR_1201 = "SSE1201";
//	//SMART SAFER 에러 코드 : APPID 값이 틀렸습니다.
//	public static String ERR_1202 = "SSE1202";
//	//SMART SAFER 에러 코드 : PLATFORM 값이 부족합니다.
//	public static String ERR_1203 = "SSE1203";
//	//SMART SAFER 에러 코드 : PLATFORM 값이 틀렸습니다.
//	public static String ERR_1204 = "SSE1204";
//	//SMART SAFER 에러 코드 : VERSION 값이 부족합니다.
//	public static String ERR_1205 = "SSE1205";
//
//	//입력정보 오류
//	//SMART SAFER 에러 코드 : 입력한 안드로이드 버전명이 동일합니다.(업데이트파일의 경우에만)
//	public static String ERR_2001 = "SSE2001";
//	//SMART SAFER 에러 코드 : 입력한 안드로이드 버전명이 등록할 수 없는 버전입니다.(이전버전일 경우)
//	public static String ERR_2002 = "SSE2002";
//	//SMART SAFER 에러 코드 : 입력한 아이폰 버전명이 동일합니다.(업데이트파일의 경우에만)
//	public static String ERR_2003 = "SSE2003";
//	//SMART SAFER 에러 코드 : 입력한 아이폰 버전명이 등록할 수 없는 버전입니다.(이전버전일 경우)
//	public static String ERR_2004 = "SSE2004";
//	//SMART SAFER 에러 코드 : 유저 정보가 존재하지 않습니다.
//	public static String ERR_2101 = "SSE2101";
//	//SMART SAFER 에러 코드 : 비밀번호가 틀렸습니다.
//	public static String ERR_2102 = "SSE2102";
//	//SMART SAFER 에러 코드 : 접근이 차단된 유저입니다.
//	public static String ERR_2103 = "SSE2103";
//	//SMART SAFER 에러 코드 : 삭제된 유저입니다.
//	public static String ERR_2104 = "SSE2104";
//	//SMART SAFER 에러 코드 : APP에 대한 권한이 없습니다.
//	public static String ERR_2105 = "SSE2105";
//	
//	//SMART SAFER 에러 코드 : APP 주소 취득에 실패했습니다.
//	public static String ERR_3001 = "SSE3001";
//
//	//파일 에러
//	//SMART SAFER 에러 코드 : 지정된 경로를 찾을 수 없습니다.
//	public static String ERR_6001 = "SSE6001";
//	//SMART SAFER 에러 코드 : 업로드 파일 사이즈가 0입니다.
//	public static String ERR_6002 = "SSE6002";
//	//SMART SAFER 에러 코드 : 안드로이드 실행 파일이 존재하지 않습니다.
//	public static String ERR_6101 = "SSE6101";
//	//SMART SAFER 에러 코드 : 아이폰 실행 파일이 존재하지 않습니다.
//	public static String ERR_6102 = "SSE6102";
//	//SMART SAFER 에러 코드 : 업로드 파일 용량이 제한을 초과했습니다.
//	public static String ERR_6104 = "SSE6104";
//	//SMART SAFER 에러 코드 : NEW 파일 용량이 제한을 초과했습니다.
//	public static String ERR_6105 = "SSE6105";
//	//SMART SAFER 에러 코드 : 실행파일 업데이트 할 때 파일이 2개여야 합니다.
//	public static String ERR_6106 = "SSE6106";
//
//	//FTP 에러
//	//SMART SAFER 에러 코드 : 업데이트파일 업로드 중 FTP에러가 발생했습니다.
//	public static String ERR_7001 = "SSE7001";
//	//SMART SAFER 에러 코드 : 실행파일 업로드 중 FTP에러가 발생했습니다.
//	public static String ERR_7002 = "SSE7002";
//	//SMART SAFER 에러 코드 : 업데이트파일 다운로드 중 FTP에러가 발생했습니다.
//	public static String ERR_7003 = "SSE7003";
//	//SMART SAFER 에러 코드 : 업데이트파일 다운로드 중 타임아웃이 발생했습니다.
//	public static String ERR_7004 = "SSE7004";
//	//SMART SAFER 에러 코드 : 업데이트파일 다운로드 취득 건수가 0 건입니다.
//	public static String ERR_7005 = "SSE7005";
//
//	//DB 에러
//	//SMART SAFER 에러 코드 : SQL에러가 발생했습니다.
//	public static String ERR_8001 = "SSE8001";
//	//SMART SAFER 에러 코드 : 랜덤키가 존재하지 않습니다.
//	public static String ERR_8002 = "SSE8002";
//	
//	//SMART SAFER 에러 코드 : 업로드로그 생성 중에 에러가 발생했습니다.
//	public static String ERR_9001 = "SSE9001";
//	//SMART SAFER 에러 코드 : 시스템오류가 발생하였습니다. 관리자에게 연락해 주세요.
//	public static String ERR_9999 = "SSE9999";
//	//결과 코드.......................................................................
	
}
