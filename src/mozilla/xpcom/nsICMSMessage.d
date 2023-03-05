/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessage.idl
 */

module mozilla.xpcom.nsICMSMessage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsIArray; /* forward declaration */


/* starting interface:    nsICMSMessage */
const char[] NS_ICMSMESSAGE_IID_STR = "a4557478-ae16-11d5-ba4b-00108303b117";

const nsIID NS_ICMSMESSAGE_IID= 
  {0xa4557478, 0xae16, 0x11d5, 
    [ 0xba, 0x4b, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

/**
 * nsICMSMessage
 *  Interface to a CMS Message
 */
extern(Windows)
interface nsICMSMessage : nsISupports {
  static const char[] IID_STR = NS_ICMSMESSAGE_IID_STR;
  static const nsIID IID = NS_ICMSMESSAGE_IID;

  /* void contentIsSigned (out boolean aSigned); */
  nsresult ContentIsSigned(PRBool *aSigned);

  /* void contentIsEncrypted (out boolean aEncrypted); */
  nsresult ContentIsEncrypted(PRBool *aEncrypted);

  /* void getSignerCommonName (out string aName); */
  nsresult GetSignerCommonName(char **aName);

  /* void getSignerEmailAddress (out string aEmail); */
  nsresult GetSignerEmailAddress(char **aEmail);

  /* void getSignerCert (out nsIX509Cert scert); */
  nsresult GetSignerCert(nsIX509Cert *scert);

  /* void getEncryptionCert (out nsIX509Cert ecert); */
  nsresult GetEncryptionCert(nsIX509Cert *ecert);

  /* void verifySignature (); */
  nsresult VerifySignature();

  /* void verifyDetachedSignature (in UnsignedCharPtr aDigestData, in unsigned long aDigestDataLen); */
  nsresult VerifyDetachedSignature(char * aDigestData, PRUint32 aDigestDataLen);

  /* void CreateEncrypted (in nsIArray aRecipientCerts); */
  nsresult CreateEncrypted(nsIArray aRecipientCerts);

  /* void CreateSigned (in nsIX509Cert scert, in nsIX509Cert ecert, in UnsignedCharPtr aDigestData, in unsigned long aDigestDataLen); */
  nsresult CreateSigned(nsIX509Cert scert, nsIX509Cert ecert, char * aDigestData, PRUint32 aDigestDataLen);

}

