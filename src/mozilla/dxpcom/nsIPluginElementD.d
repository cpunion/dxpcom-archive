/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginElement.idl
 */

module mozilla.dxpcom.nsIPluginElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginElement;


public import mozilla.dxpcom.nsIPluginElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPluginElement */
/**
 * Interface which plugin elements (e.g. embed and object) implement
 * (but don't automatically expose to JS) in addition to their dom
 * specific interface.
 */
class nsIPluginElementD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGINELEMENT_IID;


  alias nsIPluginElement InnerType;

  this(nsIPluginElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginElement opCast() {
    return inner;
  }

  void opAssign(nsIPluginElement value) {
    inner = value;
  }

  /**
   * The actual mime type (the one we got back from the network
   * request) for the plugin element.
   */
  /* readonly attribute ACString actualType; */
  char[] ActualType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetActualType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Non-scriptable setter for the actual mime type (the one we got
   * back from the network request).
   */
  /* [noscript] void setActualType (in ACString actualType); */
  void SetActualType(char[] actualType){
    scope auto _actualType = new ACString(actualType);
    nsresult __result = inner.SetActualType(cast(nsACString*)_actualType);
    CheckException(__result);
  }

private:
  nsIPluginElement inner;

}

