/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSPInterfaceInfoService.idl
 */

module mozilla.dxpcom.nsIWSPInterfaceInfoServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWSPInterfaceInfoService;


public import mozilla.dxpcom.nsIWSPInterfaceInfoServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.dxpcom.nsIInterfaceInfoD;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.dxpcom.nsIInterfaceInfoManagerD;
public import mozilla.xpcom.nsIWSDL;
public import mozilla.dxpcom.nsIWSDLD;


/* starting wrapper class:    nsIWSPInterfaceInfoService */
class nsIWSPInterfaceInfoServiceD : public nsISupportsD {

  static const nsIID IID = NS_IWSPINTERFACEINFOSERVICE_IID;


  alias nsIWSPInterfaceInfoService InnerType;

  this(nsIWSPInterfaceInfoService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSPInterfaceInfoService opCast() {
    return inner;
  }

  void opAssign(nsIWSPInterfaceInfoService value) {
    inner = value;
  }

  /* [noscript] nsIInterfaceInfo infoForPort (in nsIWSDLPort aPort, in AString aPortURL, in AString aQualifier, in PRBool aIsAsync, out nsIInterfaceInfoManager aSet); */
  nsIInterfaceInfoD  InfoForPort(nsIWSDLPortD aPort, wchar[] aPortURL, wchar[] aQualifier, PRBool aIsAsync, out nsIInterfaceInfoManagerD aSet){
    scope auto _aPortURL = new AString(aPortURL);
    scope auto _aQualifier = new AString(aQualifier);
    nsIInterfaceInfoManager _aSet;
    nsIInterfaceInfo _retval;
    nsresult __result = inner.InfoForPort(aPort ? cast(nsIWSDLPort)aPort : null, cast(nsAString*)_aPortURL, cast(nsAString*)_aQualifier, aIsAsync, &_aSet, &_retval);
    CheckException(__result);
    aSet = _aSet ? new nsIInterfaceInfoManagerD(_aSet) : null;
    return new nsIInterfaceInfoD(_retval);
  }

private:
  nsIWSPInterfaceInfoService inner;

}

