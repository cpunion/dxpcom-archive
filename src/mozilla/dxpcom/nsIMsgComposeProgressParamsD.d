/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeProgressParams.idl
 */

module mozilla.dxpcom.nsIMsgComposeProgressParamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgComposeProgressParams;


public import mozilla.dxpcom.nsIMsgComposeProgressParamsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgCompose;
public import mozilla.dxpcom.nsIMsgComposeD;


/* starting wrapper class:    nsIMsgComposeProgressParams */
class nsIMsgComposeProgressParamsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSEPROGRESSPARAMS_IID;


  alias nsIMsgComposeProgressParams InnerType;

  this(nsIMsgComposeProgressParams intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeProgressParams opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeProgressParams value) {
    inner = value;
  }

  /* attribute wstring subject; */
  PRUnichar* Subject(){
    PRUnichar* value;
    nsresult __result = inner.GetSubject(&value);
    CheckException(__result);
    return value;
  }
  void Subject(PRUnichar* aSubject){
    nsresult __result = inner.SetSubject(aSubject);
    CheckException(__result);
  }

  /* attribute MSG_DeliverMode deliveryMode; */
  MSG_DeliverMode DeliveryMode(){
    MSG_DeliverMode value;
    nsresult __result = inner.GetDeliveryMode(&value);
    CheckException(__result);
    return value;
  }
  void DeliveryMode(MSG_DeliverMode aDeliveryMode){
    MSG_DeliverMode value;
    nsresult __result = inner.SetDeliveryMode(value);
    CheckException(__result);
  }

private:
  nsIMsgComposeProgressParams inner;

}

