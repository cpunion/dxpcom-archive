/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSMIMECompFields.idl
 */

module mozilla.dxpcom.nsIMsgSMIMECompFieldsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSMIMECompFields;


public import mozilla.dxpcom.nsIMsgSMIMECompFieldsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgSMIMECompFields */
class nsIMsgSMIMECompFieldsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSMIMECOMPFIELDS_IID;


  alias nsIMsgSMIMECompFields InnerType;

  this(nsIMsgSMIMECompFields intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSMIMECompFields opCast() {
    return inner;
  }

  void opAssign(nsIMsgSMIMECompFields value) {
    inner = value;
  }

  /* attribute boolean signMessage; */
  PRBool SignMessage(){
    PRBool value;
    nsresult __result = inner.GetSignMessage(&value);
    CheckException(__result);
    return value;
  }
  void SignMessage(PRBool aSignMessage){
    nsresult __result = inner.SetSignMessage(aSignMessage);
    CheckException(__result);
  }

  /* attribute boolean requireEncryptMessage; */
  PRBool RequireEncryptMessage(){
    PRBool value;
    nsresult __result = inner.GetRequireEncryptMessage(&value);
    CheckException(__result);
    return value;
  }
  void RequireEncryptMessage(PRBool aRequireEncryptMessage){
    nsresult __result = inner.SetRequireEncryptMessage(aRequireEncryptMessage);
    CheckException(__result);
  }

private:
  nsIMsgSMIMECompFields inner;

}

