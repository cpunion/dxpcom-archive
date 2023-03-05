/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPK11Token.idl
 */

module mozilla.xpcom.nsIPK11Token;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPK11Token */
const char[] NS_IPK11TOKEN_IID_STR = "51191434-1dd2-11b2-a17c-e49c4e99a4e3";

const nsIID NS_IPK11TOKEN_IID= 
  {0x51191434, 0x1dd2, 0x11b2, 
    [ 0xa1, 0x7c, 0xe4, 0x9c, 0x4e, 0x99, 0xa4, 0xe3 ]};

extern(Windows)
interface nsIPK11Token : nsISupports {
  static const char[] IID_STR = NS_IPK11TOKEN_IID_STR;
  static const nsIID IID = NS_IPK11TOKEN_IID;

  enum { ASK_EVERY_TIME = -1 };

  enum { ASK_FIRST_TIME = 0 };

  enum { ASK_EXPIRE_TIME = 1 };

  /* readonly attribute wstring tokenName; */
  nsresult GetTokenName(PRUnichar * *aTokenName);

  /* readonly attribute wstring tokenLabel; */
  nsresult GetTokenLabel(PRUnichar * *aTokenLabel);

  /* readonly attribute wstring tokenManID; */
  nsresult GetTokenManID(PRUnichar * *aTokenManID);

  /* readonly attribute wstring tokenHWVersion; */
  nsresult GetTokenHWVersion(PRUnichar * *aTokenHWVersion);

  /* readonly attribute wstring tokenFWVersion; */
  nsresult GetTokenFWVersion(PRUnichar * *aTokenFWVersion);

  /* readonly attribute wstring tokenSerialNumber; */
  nsresult GetTokenSerialNumber(PRUnichar * *aTokenSerialNumber);

  /* boolean isLoggedIn (); */
  nsresult IsLoggedIn(PRBool *_retval);

  /* void login (in boolean force); */
  nsresult Login(PRBool force);

  /* void logoutSimple (); */
  nsresult LogoutSimple();

  /* void logoutAndDropAuthenticatedResources (); */
  nsresult LogoutAndDropAuthenticatedResources();

  /* void reset (); */
  nsresult Reset();

  /* readonly attribute long minimumPasswordLength; */
  nsresult GetMinimumPasswordLength(PRInt32 *aMinimumPasswordLength);

  /* readonly attribute boolean needsUserInit; */
  nsresult GetNeedsUserInit(PRBool *aNeedsUserInit);

  /* boolean checkPassword (in wstring password); */
  nsresult CheckPassword(PRUnichar *password, PRBool *_retval);

  /* void initPassword (in wstring initialPassword); */
  nsresult InitPassword(PRUnichar *initialPassword);

  /* void changePassword (in wstring oldPassword, in wstring newPassword); */
  nsresult ChangePassword(PRUnichar *oldPassword, PRUnichar *newPassword);

  /* long getAskPasswordTimes (); */
  nsresult GetAskPasswordTimes(PRInt32 *_retval);

  /* long getAskPasswordTimeout (); */
  nsresult GetAskPasswordTimeout(PRInt32 *_retval);

  /* void setAskPasswordDefaults ([const] in long askTimes, [const] in long timeout); */
  nsresult SetAskPasswordDefaults(PRInt32 askTimes, PRInt32 timeout);

  /* boolean isHardwareToken (); */
  nsresult IsHardwareToken(PRBool *_retval);

  /* boolean needsLogin (); */
  nsresult NeedsLogin(PRBool *_retval);

  /* boolean isFriendly (); */
  nsresult IsFriendly(PRBool *_retval);

}

