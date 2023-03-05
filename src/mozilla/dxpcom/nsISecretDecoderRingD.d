/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecretDecoderRing.idl
 */

module mozilla.dxpcom.nsISecretDecoderRingD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecretDecoderRing;


public import mozilla.dxpcom.nsISecretDecoderRingD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISecretDecoderRing */
class nsISecretDecoderRingD : public nsISupportsD {

  static const nsIID IID = NS_ISECRETDECODERRING_IID;


  alias nsISecretDecoderRing InnerType;

  this(nsISecretDecoderRing intr){
    super(intr);
    this.inner = intr;
  }

  nsISecretDecoderRing opCast() {
    return inner;
  }

  void opAssign(nsISecretDecoderRing value) {
    inner = value;
  }

  /* [noscript] long encrypt (in buffer data, in long dataLen, out buffer result); */
  PRInt32 Encrypt(char * data, PRInt32 dataLen, out char * result){
    PRInt32 _retval;
    nsresult __result = inner.Encrypt(data, dataLen, &result, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] long decrypt (in buffer data, in long dataLen, out buffer result); */
  PRInt32 Decrypt(char * data, PRInt32 dataLen, out char * result){
    PRInt32 _retval;
    nsresult __result = inner.Decrypt(data, dataLen, &result, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string encryptString (in string text); */
  char* EncryptString(char*text){
    char* _retval;
    nsresult __result = inner.EncryptString(text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string decryptString (in string crypt); */
  char* DecryptString(char*crypt){
    char* _retval;
    nsresult __result = inner.DecryptString(crypt, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void changePassword (); */
  void ChangePassword(){
    nsresult __result = inner.ChangePassword();
    CheckException(__result);
  }

  /* void logout (); */
  void Logout(){
    nsresult __result = inner.Logout();
    CheckException(__result);
  }

  /* void logoutAndTeardown (); */
  void LogoutAndTeardown(){
    nsresult __result = inner.LogoutAndTeardown();
    CheckException(__result);
  }

private:
  nsISecretDecoderRing inner;

}


/* starting wrapper class:    nsISecretDecoderRingConfig */
class nsISecretDecoderRingConfigD : public nsISupportsD {

  static const nsIID IID = NS_ISECRETDECODERRINGCONFIG_IID;


  alias nsISecretDecoderRingConfig InnerType;

  this(nsISecretDecoderRingConfig intr){
    super(intr);
    this.inner = intr;
  }

  nsISecretDecoderRingConfig opCast() {
    return inner;
  }

  void opAssign(nsISecretDecoderRingConfig value) {
    inner = value;
  }

  /* void setWindow (in nsISupports w); */
  void SetWindow(nsISupportsD w){
    nsresult __result = inner.SetWindow(w ? cast(nsISupports)w : null);
    CheckException(__result);
  }

private:
  nsISecretDecoderRingConfig inner;

}

