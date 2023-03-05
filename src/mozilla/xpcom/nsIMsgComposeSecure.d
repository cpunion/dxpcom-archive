/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeSecure.idl
 */

module mozilla.xpcom.nsIMsgComposeSecure;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIMsgSendReport;
public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgCompFields; /* forward declaration */

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */


/* starting interface:    nsIMsgComposeSecure */
const char[] NS_IMSGCOMPOSESECURE_IID_STR = "ed899511-b473-4a93-ba02-d8cb90d58e1c";

const nsIID NS_IMSGCOMPOSESECURE_IID= 
  {0xed899511, 0xb473, 0x4a93, 
    [ 0xba, 0x02, 0xd8, 0xcb, 0x90, 0xd5, 0x8e, 0x1c ]};

extern(Windows)
interface nsIMsgComposeSecure : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSESECURE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSESECURE_IID;

  /* boolean requiresCryptoEncapsulation (in nsIMsgIdentity aIdentity, in nsIMsgCompFields aCompFields); */
  nsresult RequiresCryptoEncapsulation(nsIMsgIdentity aIdentity, nsIMsgCompFields aCompFields, PRBool *_retval);

  /* void beginCryptoEncapsulation (in nsOutputFileStream aStream, in string aRecipients, in nsIMsgCompFields aCompFields, in nsIMsgIdentity aIdentity, in nsIMsgSendReport sendReport, in boolean aIsDraft); */
  nsresult BeginCryptoEncapsulation(nsOutputFileStream * aStream, char *aRecipients, nsIMsgCompFields aCompFields, nsIMsgIdentity aIdentity, nsIMsgSendReport sendReport, PRBool aIsDraft);

  /* void finishCryptoEncapsulation (in boolean aAbort, in nsIMsgSendReport sendReport); */
  nsresult FinishCryptoEncapsulation(PRBool aAbort, nsIMsgSendReport sendReport);

  /* void mimeCryptoWriteBlock (in string aBuf, in long aLen); */
  nsresult MimeCryptoWriteBlock(char *aBuf, PRInt32 aLen);

}

