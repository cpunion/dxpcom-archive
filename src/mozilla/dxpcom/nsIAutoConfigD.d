/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoConfig.idl
 */

module mozilla.dxpcom.nsIAutoConfigD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoConfig;


public import mozilla.dxpcom.nsIAutoConfigD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAutoConfig */
class nsIAutoConfigD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCONFIG_IID;


  alias nsIAutoConfig InnerType;

  this(nsIAutoConfig intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoConfig opCast() {
    return inner;
  }

  void opAssign(nsIAutoConfig value) {
    inner = value;
  }

  /* attribute string configURL; */
  char* ConfigURL(){
    char* value;
    nsresult __result = inner.GetConfigURL(&value);
    CheckException(__result);
    return value;
  }
  void ConfigURL(char* aConfigURL){
    nsresult __result = inner.SetConfigURL(aConfigURL);
    CheckException(__result);
  }

private:
  nsIAutoConfig inner;

}

