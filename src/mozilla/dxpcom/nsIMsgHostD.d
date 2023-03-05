/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHost.idl
 */

module mozilla.dxpcom.nsIMsgHostD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgHost;


public import mozilla.dxpcom.nsIMsgHostD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgHost */
class nsIMsgHostD : public nsISupportsD {

  static const nsIID IID = NS_IMSGHOST_IID;


  alias nsIMsgHost InnerType;

  this(nsIMsgHost intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgHost opCast() {
    return inner;
  }

  void opAssign(nsIMsgHost value) {
    inner = value;
  }

  /* attribute string hostname; */
  char* Hostname(){
    char* value;
    nsresult __result = inner.GetHostname(&value);
    CheckException(__result);
    return value;
  }
  void Hostname(char* aHostname){
    nsresult __result = inner.SetHostname(aHostname);
    CheckException(__result);
  }

  /* attribute string uiName; */
  char* UiName(){
    char* value;
    nsresult __result = inner.GetUiName(&value);
    CheckException(__result);
    return value;
  }
  void UiName(char* aUiName){
    nsresult __result = inner.SetUiName(aUiName);
    CheckException(__result);
  }

  /* attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }
  void Port(PRInt32 aPort){
    nsresult __result = inner.SetPort(aPort);
    CheckException(__result);
  }

private:
  nsIMsgHost inner;

}

