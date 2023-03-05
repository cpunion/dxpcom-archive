/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEncryptedSMIMEURIsSrvc.idl
 */

module mozilla.xpcom.nsIEncryptedSMIMEURIsSrvc;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEncryptedSMIMEURIsService */
const char[] NS_IENCRYPTEDSMIMEURISSERVICE_IID_STR = "f86e55c9-530b-483f-91a7-10fb5b852488";

const nsIID NS_IENCRYPTEDSMIMEURISSERVICE_IID= 
  {0xf86e55c9, 0x530b, 0x483f, 
    [ 0x91, 0xa7, 0x10, 0xfb, 0x5b, 0x85, 0x24, 0x88 ]};

extern(Windows)
interface nsIEncryptedSMIMEURIsService : nsISupports {
  static const char[] IID_STR = NS_IENCRYPTEDSMIMEURISSERVICE_IID_STR;
  static const nsIID IID = NS_IENCRYPTEDSMIMEURISSERVICE_IID;

  /* void rememberEncrypted (in AUTF8String uri); */
  nsresult RememberEncrypted(nsACString * uri);

  /* void forgetEncrypted (in AUTF8String uri); */
  nsresult ForgetEncrypted(nsACString * uri);

  /* boolean isEncrypted (in AUTF8String uri); */
  nsresult IsEncrypted(nsACString * uri, PRBool *_retval);

}

