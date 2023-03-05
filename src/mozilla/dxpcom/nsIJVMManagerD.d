/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMManager.idl
 */

module mozilla.dxpcom.nsIJVMManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJVMManager;


public import mozilla.dxpcom.nsIJVMManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrincipal;

public import mozilla.dxpcom.nsIPrincipalD;


/* starting wrapper class:    nsIJVMManager */
class nsIJVMManagerD : public nsISupportsD {

  static const nsIID IID = NS_IJVMMANAGER_IID;


  alias nsIJVMManager InnerType;

  this(nsIJVMManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIJVMManager opCast() {
    return inner;
  }

  void opAssign(nsIJVMManager value) {
    inner = value;
  }

  /**
     * Creates a proxy JNI with an optional secure environment (which can be NULL).
     * There is a one-to-one correspondence between proxy JNIs and threads, so
     * calling this method multiple times from the same thread will return
     * the same proxy JNI.
     */
  /* [noscript] void createProxyJNI (in nsISecureEnv secureEnv, out JNIEnv outProxyEnv); */
  void CreateProxyJNI(nsISecureEnvD secureEnv, out JNIEnv * outProxyEnv){
    nsresult __result = inner.CreateProxyJNI(secureEnv ? cast(nsISecureEnv)secureEnv : null, &outProxyEnv);
    CheckException(__result);
  }

  /**
	 * Returns the proxy JNI associated with the current thread, or NULL if no
	 * such association exists.
	 */
  /* [noscript] void getProxyJNI (out JNIEnv outProxyEnv); */
  void GetProxyJNI(out JNIEnv * outProxyEnv){
    nsresult __result = inner.GetProxyJNI(&outProxyEnv);
    CheckException(__result);
  }

  /**
	 * Called from Java Console menu item.
	 */
  /* void showJavaConsole (); */
  void ShowJavaConsole(){
    nsresult __result = inner.ShowJavaConsole();
    CheckException(__result);
  }

  /**
	 * isAllPermissionGranted [Deprecated Sep-10-2000]
	 */
  /* boolean isAllPermissionGranted (in string lastFingerprint, in string lastCommonName, in string rootFingerprint, in string rootCommonName); */
  PRBool IsAllPermissionGranted(char*lastFingerprint, char*lastCommonName, char*rootFingerprint, char*rootCommonName){
    PRBool _retval;
    nsresult __result = inner.IsAllPermissionGranted(lastFingerprint, lastCommonName, rootFingerprint, rootCommonName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
	 * isAppletTrusted
	 */
  /* [noscript] nsIPrincipal isAppletTrusted (in string aRSABuf, in PRUint32 aRSABufLen, in string aPlaintext, in PRUint32 aPlaintextLen, out boolean isTrusted); */
  nsIPrincipalD  IsAppletTrusted(char*aRSABuf, PRUint32 aRSABufLen, char*aPlaintext, PRUint32 aPlaintextLen, out PRBool isTrusted){
    nsIPrincipal _retval;
    nsresult __result = inner.IsAppletTrusted(aRSABuf, aRSABufLen, aPlaintext, aPlaintextLen, &isTrusted, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * The JavaEnabled variable to see if Java is Enabled or not
     */
  /* readonly attribute boolean JavaEnabled; */
  PRBool JavaEnabled(){
    PRBool value;
    nsresult __result = inner.GetJavaEnabled(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIJVMManager inner;

}

