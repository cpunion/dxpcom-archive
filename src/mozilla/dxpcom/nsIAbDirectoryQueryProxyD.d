/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectoryQueryProxy.idl
 */

module mozilla.dxpcom.nsIAbDirectoryQueryProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirectoryQueryProxy;


public import mozilla.dxpcom.nsIAbDirectoryQueryProxyD;

public import mozilla.xpcom.nsIAbDirectoryQuery;
public import mozilla.dxpcom.nsIAbDirectoryQueryD;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.dxpcom.nsIAbDirectoryD;


/* starting wrapper class:    nsIAbDirectoryQueryProxy */
class nsIAbDirectoryQueryProxyD : public nsIAbDirectoryQueryD {

  static const nsIID IID = NS_IABDIRECTORYQUERYPROXY_IID;


  alias nsIAbDirectoryQueryProxy InnerType;

  this(nsIAbDirectoryQueryProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQueryProxy opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQueryProxy value) {
    inner = value;
  }

  /* void initiate (in nsIAbDirectory directory); */
  void Initiate(nsIAbDirectoryD directory){
    nsresult __result = inner.Initiate(directory ? cast(nsIAbDirectory)directory : null);
    CheckException(__result);
  }

private:
  nsIAbDirectoryQueryProxy inner;

}

