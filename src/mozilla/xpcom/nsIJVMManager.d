/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMManager.idl
 */

module mozilla.xpcom.nsIJVMManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPrincipal; /* forward declaration */


/* starting interface:    nsIJVMManager */
const char[] NS_IJVMMANAGER_IID_STR = "a1e5ed50-aa4a-11d1-85b2-00805f0e4dfe";

const nsIID NS_IJVMMANAGER_IID= 
  {0xa1e5ed50, 0xaa4a, 0x11d1, 
    [ 0x85, 0xb2, 0x00, 0x80, 0x5f, 0x0e, 0x4d, 0xfe ]};

extern(Windows)
interface nsIJVMManager : nsISupports {
  static const char[] IID_STR = NS_IJVMMANAGER_IID_STR;
  static const nsIID IID = NS_IJVMMANAGER_IID;

  /**
     * Creates a proxy JNI with an optional secure environment (which can be NULL).
     * There is a one-to-one correspondence between proxy JNIs and threads, so
     * calling this method multiple times from the same thread will return
     * the same proxy JNI.
     */
  /* [noscript] void createProxyJNI (in nsISecureEnv secureEnv, out JNIEnv outProxyEnv); */
  nsresult CreateProxyJNI(nsISecureEnv secureEnv, JNIEnv * *outProxyEnv);

  /**
	 * Returns the proxy JNI associated with the current thread, or NULL if no
	 * such association exists.
	 */
  /* [noscript] void getProxyJNI (out JNIEnv outProxyEnv); */
  nsresult GetProxyJNI(JNIEnv * *outProxyEnv);

  /**
	 * Called from Java Console menu item.
	 */
  /* void showJavaConsole (); */
  nsresult ShowJavaConsole();

  /**
	 * isAllPermissionGranted [Deprecated Sep-10-2000]
	 */
  /* boolean isAllPermissionGranted (in string lastFingerprint, in string lastCommonName, in string rootFingerprint, in string rootCommonName); */
  nsresult IsAllPermissionGranted(char *lastFingerprint, char *lastCommonName, char *rootFingerprint, char *rootCommonName, PRBool *_retval);

  /**
	 * isAppletTrusted
	 */
  /* [noscript] nsIPrincipal isAppletTrusted (in string aRSABuf, in PRUint32 aRSABufLen, in string aPlaintext, in PRUint32 aPlaintextLen, out boolean isTrusted); */
  nsresult IsAppletTrusted(char *aRSABuf, PRUint32 aRSABufLen, char *aPlaintext, PRUint32 aPlaintextLen, PRBool *isTrusted, nsIPrincipal *_retval);

  /**
     * The JavaEnabled variable to see if Java is Enabled or not
     */
  /* readonly attribute boolean JavaEnabled; */
  nsresult GetJavaEnabled(PRBool *aJavaEnabled);

}

