/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISignatureVerifier.idl
 */

module mozilla.xpcom.nsISignatureVerifier;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPrincipal;


/* starting interface:    nsISignatureVerifier */
const char[] NS_ISIGNATUREVERIFIER_IID_STR = "dea87f65-e91e-4119-aa13-aaa2be80cac2";

const nsIID NS_ISIGNATUREVERIFIER_IID= 
  {0xdea87f65, 0xe91e, 0x4119, 
    [ 0xaa, 0x13, 0xaa, 0xa2, 0xbe, 0x80, 0xca, 0xc2 ]};

extern(Windows)
interface nsISignatureVerifier : nsISupports {
  static const char[] IID_STR = NS_ISIGNATUREVERIFIER_IID_STR;
  static const nsIID IID = NS_ISIGNATUREVERIFIER_IID;

  enum { VERIFY_OK = 0 };

  enum { VERIFY_ERROR_UNKNOWN_CA = -8172 };

  /* nsIPrincipal verifySignature (in string aSignature, in unsigned long aSignatureLen, in string plaintext, in unsigned long plaintextLen, out long errorCode); */
  nsresult VerifySignature(char *aSignature, PRUint32 aSignatureLen, char *plaintext, PRUint32 plaintextLen, PRInt32 *errorCode, nsIPrincipal *_retval);

}

