/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecretDecoderRing.idl
 */

module mozilla.xpcom.nsISecretDecoderRing;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISecretDecoderRing */
const char[] NS_ISECRETDECODERRING_IID_STR = "0ec80360-075c-11d4-9fd4-00c04f1b83d8";

const nsIID NS_ISECRETDECODERRING_IID= 
  {0x0ec80360, 0x075c, 0x11d4, 
    [ 0x9f, 0xd4, 0x00, 0xc0, 0x4f, 0x1b, 0x83, 0xd8 ]};

extern(Windows)
interface nsISecretDecoderRing : nsISupports {
  static const char[] IID_STR = NS_ISECRETDECODERRING_IID_STR;
  static const nsIID IID = NS_ISECRETDECODERRING_IID;

  /* [noscript] long encrypt (in buffer data, in long dataLen, out buffer result); */
  nsresult Encrypt(char * data, PRInt32 dataLen, char * *result, PRInt32 *_retval);

  /* [noscript] long decrypt (in buffer data, in long dataLen, out buffer result); */
  nsresult Decrypt(char * data, PRInt32 dataLen, char * *result, PRInt32 *_retval);

  /* string encryptString (in string text); */
  nsresult EncryptString(char *text, char **_retval);

  /* string decryptString (in string crypt); */
  nsresult DecryptString(char *crypt, char **_retval);

  /* void changePassword (); */
  nsresult ChangePassword();

  /* void logout (); */
  nsresult Logout();

  /* void logoutAndTeardown (); */
  nsresult LogoutAndTeardown();

}


/* starting interface:    nsISecretDecoderRingConfig */
const char[] NS_ISECRETDECODERRINGCONFIG_IID_STR = "01d8c0f0-0ccc-11d4-9fdd-000064657374";

const nsIID NS_ISECRETDECODERRINGCONFIG_IID= 
  {0x01d8c0f0, 0x0ccc, 0x11d4, 
    [ 0x9f, 0xdd, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISecretDecoderRingConfig : nsISupports {
  static const char[] IID_STR = NS_ISECRETDECODERRINGCONFIG_IID_STR;
  static const nsIID IID = NS_ISECRETDECODERRINGCONFIG_IID;

  /* void setWindow (in nsISupports w); */
  nsresult SetWindow(nsISupports w);

}

