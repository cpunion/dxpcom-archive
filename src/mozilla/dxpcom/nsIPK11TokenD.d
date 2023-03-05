/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPK11Token.idl
 */

module mozilla.dxpcom.nsIPK11TokenD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPK11Token;


public import mozilla.dxpcom.nsIPK11TokenD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPK11Token */
class nsIPK11TokenD : public nsISupportsD {

  static const nsIID IID = NS_IPK11TOKEN_IID;


  alias nsIPK11Token InnerType;

  this(nsIPK11Token intr){
    super(intr);
    this.inner = intr;
  }

  nsIPK11Token opCast() {
    return inner;
  }

  void opAssign(nsIPK11Token value) {
    inner = value;
  }

  enum { ASK_EVERY_TIME = -1 }

  enum { ASK_FIRST_TIME = 0 }

  enum { ASK_EXPIRE_TIME = 1 }

  /* readonly attribute wstring tokenName; */
  PRUnichar* TokenName(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring tokenLabel; */
  PRUnichar* TokenLabel(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenLabel(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring tokenManID; */
  PRUnichar* TokenManID(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenManID(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring tokenHWVersion; */
  PRUnichar* TokenHWVersion(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenHWVersion(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring tokenFWVersion; */
  PRUnichar* TokenFWVersion(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenFWVersion(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring tokenSerialNumber; */
  PRUnichar* TokenSerialNumber(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenSerialNumber(&value);
    CheckException(__result);
    return value;
  }

  /* boolean isLoggedIn (); */
  PRBool IsLoggedIn(){
    PRBool _retval;
    nsresult __result = inner.IsLoggedIn(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void login (in boolean force); */
  void Login(PRBool force){
    nsresult __result = inner.Login(force);
    CheckException(__result);
  }

  /* void logoutSimple (); */
  void LogoutSimple(){
    nsresult __result = inner.LogoutSimple();
    CheckException(__result);
  }

  /* void logoutAndDropAuthenticatedResources (); */
  void LogoutAndDropAuthenticatedResources(){
    nsresult __result = inner.LogoutAndDropAuthenticatedResources();
    CheckException(__result);
  }

  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

  /* readonly attribute long minimumPasswordLength; */
  PRInt32 MinimumPasswordLength(){
    PRInt32 value;
    nsresult __result = inner.GetMinimumPasswordLength(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean needsUserInit; */
  PRBool NeedsUserInit(){
    PRBool value;
    nsresult __result = inner.GetNeedsUserInit(&value);
    CheckException(__result);
    return value;
  }

  /* boolean checkPassword (in wstring password); */
  PRBool CheckPassword(PRUnichar*password){
    PRBool _retval;
    nsresult __result = inner.CheckPassword(password, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void initPassword (in wstring initialPassword); */
  void InitPassword(PRUnichar*initialPassword){
    nsresult __result = inner.InitPassword(initialPassword);
    CheckException(__result);
  }

  /* void changePassword (in wstring oldPassword, in wstring newPassword); */
  void ChangePassword(PRUnichar*oldPassword, PRUnichar*newPassword){
    nsresult __result = inner.ChangePassword(oldPassword, newPassword);
    CheckException(__result);
  }

  /* long getAskPasswordTimes (); */
  PRInt32 GetAskPasswordTimes(){
    PRInt32 _retval;
    nsresult __result = inner.GetAskPasswordTimes(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getAskPasswordTimeout (); */
  PRInt32 GetAskPasswordTimeout(){
    PRInt32 _retval;
    nsresult __result = inner.GetAskPasswordTimeout(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setAskPasswordDefaults ([const] in long askTimes, [const] in long timeout); */
  void SetAskPasswordDefaults(PRInt32 askTimes, PRInt32 timeout){
    nsresult __result = inner.SetAskPasswordDefaults(askTimes, timeout);
    CheckException(__result);
  }

  /* boolean isHardwareToken (); */
  PRBool IsHardwareToken(){
    PRBool _retval;
    nsresult __result = inner.IsHardwareToken(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean needsLogin (); */
  PRBool NeedsLogin(){
    PRBool _retval;
    nsresult __result = inner.NeedsLogin(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isFriendly (); */
  PRBool IsFriendly(){
    PRBool _retval;
    nsresult __result = inner.IsFriendly(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPK11Token inner;

}

