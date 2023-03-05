/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompUtils.idl
 */

module mozilla.dxpcom.nsIMsgCompUtilsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCompUtils;


public import mozilla.dxpcom.nsIMsgCompUtilsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;


/* starting wrapper class:    nsIMsgCompUtils */
class nsIMsgCompUtilsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPUTILS_IID;


  alias nsIMsgCompUtils InnerType;

  this(nsIMsgCompUtils intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCompUtils opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompUtils value) {
    inner = value;
  }

  /* string mimeMakeSeparator (in string prefix); */
  char* MimeMakeSeparator(char*prefix){
    char* _retval;
    nsresult __result = inner.MimeMakeSeparator(prefix, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string msgGenerateMessageId (in nsIMsgIdentity identity); */
  char* MsgGenerateMessageId(nsIMsgIdentityD identity){
    char* _retval;
    nsresult __result = inner.MsgGenerateMessageId(identity ? cast(nsIMsgIdentity)identity : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean msgMimeConformToStandard; */
  PRBool MsgMimeConformToStandard(){
    PRBool value;
    nsresult __result = inner.GetMsgMimeConformToStandard(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgCompUtils inner;

}

