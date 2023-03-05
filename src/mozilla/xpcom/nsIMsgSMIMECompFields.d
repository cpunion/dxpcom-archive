/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSMIMECompFields.idl
 */

module mozilla.xpcom.nsIMsgSMIMECompFields;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgSMIMECompFields */
const char[] NS_IMSGSMIMECOMPFIELDS_IID_STR = "338e91f9-5970-4f81-b771-0822a32b1161";

const nsIID NS_IMSGSMIMECOMPFIELDS_IID= 
  {0x338e91f9, 0x5970, 0x4f81, 
    [ 0xb7, 0x71, 0x08, 0x22, 0xa3, 0x2b, 0x11, 0x61 ]};

extern(Windows)
interface nsIMsgSMIMECompFields : nsISupports {
  static const char[] IID_STR = NS_IMSGSMIMECOMPFIELDS_IID_STR;
  static const nsIID IID = NS_IMSGSMIMECOMPFIELDS_IID;

  /* attribute boolean signMessage; */
  nsresult GetSignMessage(PRBool *aSignMessage);
  nsresult SetSignMessage(PRBool aSignMessage);

  /* attribute boolean requireEncryptMessage; */
  nsresult GetRequireEncryptMessage(PRBool *aRequireEncryptMessage);
  nsresult SetRequireEncryptMessage(PRBool aRequireEncryptMessage);

}

