/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeSecure.idl
 */

module mozilla.dxpcom.nsIMsgComposeSecureD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgComposeSecure;


public import mozilla.dxpcom.nsIMsgComposeSecureD;

public import mozilla.xpcom.nsIMsgSendReport;
public import mozilla.dxpcom.nsIMsgSendReportD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgCompFields;

public import mozilla.dxpcom.nsIMsgCompFieldsD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;


/* starting wrapper class:    nsIMsgComposeSecure */
class nsIMsgComposeSecureD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSESECURE_IID;


  alias nsIMsgComposeSecure InnerType;

  this(nsIMsgComposeSecure intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeSecure opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeSecure value) {
    inner = value;
  }

  /* boolean requiresCryptoEncapsulation (in nsIMsgIdentity aIdentity, in nsIMsgCompFields aCompFields); */
  PRBool RequiresCryptoEncapsulation(nsIMsgIdentityD aIdentity, nsIMsgCompFieldsD aCompFields){
    PRBool _retval;
    nsresult __result = inner.RequiresCryptoEncapsulation(aIdentity ? cast(nsIMsgIdentity)aIdentity : null, aCompFields ? cast(nsIMsgCompFields)aCompFields : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void beginCryptoEncapsulation (in nsOutputFileStream aStream, in string aRecipients, in nsIMsgCompFields aCompFields, in nsIMsgIdentity aIdentity, in nsIMsgSendReport sendReport, in boolean aIsDraft); */
  void BeginCryptoEncapsulation(nsOutputFileStream * aStream, char*aRecipients, nsIMsgCompFieldsD aCompFields, nsIMsgIdentityD aIdentity, nsIMsgSendReportD sendReport, PRBool aIsDraft){
    nsresult __result = inner.BeginCryptoEncapsulation(aStream, aRecipients, aCompFields ? cast(nsIMsgCompFields)aCompFields : null, aIdentity ? cast(nsIMsgIdentity)aIdentity : null, sendReport ? cast(nsIMsgSendReport)sendReport : null, aIsDraft);
    CheckException(__result);
  }

  /* void finishCryptoEncapsulation (in boolean aAbort, in nsIMsgSendReport sendReport); */
  void FinishCryptoEncapsulation(PRBool aAbort, nsIMsgSendReportD sendReport){
    nsresult __result = inner.FinishCryptoEncapsulation(aAbort, sendReport ? cast(nsIMsgSendReport)sendReport : null);
    CheckException(__result);
  }

  /* void mimeCryptoWriteBlock (in string aBuf, in long aLen); */
  void MimeCryptoWriteBlock(char*aBuf, PRInt32 aLen){
    nsresult __result = inner.MimeCryptoWriteBlock(aBuf, aLen);
    CheckException(__result);
  }

private:
  nsIMsgComposeSecure inner;

}

