/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3URL.idl
 */

module mozilla.dxpcom.nsIPop3URLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPop3URL;


public import mozilla.dxpcom.nsIPop3URLD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPop3Sink;
public import mozilla.dxpcom.nsIPop3SinkD;


/* starting wrapper class:    nsIPop3URL */
class nsIPop3URLD : public nsISupportsD {

  static const nsIID IID = NS_IPOP3URL_IID;


  alias nsIPop3URL InnerType;

  this(nsIPop3URL intr){
    super(intr);
    this.inner = intr;
  }

  nsIPop3URL opCast() {
    return inner;
  }

  void opAssign(nsIPop3URL value) {
    inner = value;
  }

  /* attribute nsIPop3Sink pop3Sink; */
  nsIPop3SinkD  Pop3Sink(){
    nsIPop3Sink value;
    nsresult __result = inner.GetPop3Sink(&value);
    CheckException(__result);
    return new nsIPop3SinkD(value);
  }
  void Pop3Sink(nsIPop3SinkD  aPop3Sink){
    nsIPop3Sink value;
    nsresult __result = inner.SetPop3Sink(value);
    CheckException(__result);
  }

  /* attribute string messageUri; */
  char* MessageUri(){
    char* value;
    nsresult __result = inner.GetMessageUri(&value);
    CheckException(__result);
    return value;
  }
  void MessageUri(char* aMessageUri){
    nsresult __result = inner.SetMessageUri(aMessageUri);
    CheckException(__result);
  }

private:
  nsIPop3URL inner;

}

