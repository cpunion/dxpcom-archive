/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSMIMEHeaderSink.idl
 */

module mozilla.xpcom.nsIMsgSMIMEHeaderSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsIMsgSMIMEHeaderSink */
const char[] NS_IMSGSMIMEHEADERSINK_IID_STR = "25380fa1-e70c-4e82-b0bc-f31c2f41c470";

const nsIID NS_IMSGSMIMEHEADERSINK_IID= 
  {0x25380fa1, 0xe70c, 0x4e82, 
    [ 0xb0, 0xbc, 0xf3, 0x1c, 0x2f, 0x41, 0xc4, 0x70 ]};

extern(Windows)
interface nsIMsgSMIMEHeaderSink : nsISupports {
  static const char[] IID_STR = NS_IMSGSMIMEHEADERSINK_IID_STR;
  static const nsIID IID = NS_IMSGSMIMEHEADERSINK_IID;

  /* void signedStatus (in long aNestingLevel, in long aSignatureStatus, in nsIX509Cert aSignerCert); */
  nsresult SignedStatus(PRInt32 aNestingLevel, PRInt32 aSignatureStatus, nsIX509Cert aSignerCert);

  /* void encryptionStatus (in long aNestingLevel, in long aEncryptionStatus, in nsIX509Cert aReceipientCert); */
  nsresult EncryptionStatus(PRInt32 aNestingLevel, PRInt32 aEncryptionStatus, nsIX509Cert aReceipientCert);

  /* long maxWantedNesting (); */
  nsresult MaxWantedNesting(PRInt32 *_retval);

}

