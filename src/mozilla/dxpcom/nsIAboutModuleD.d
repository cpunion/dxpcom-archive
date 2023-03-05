/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAboutModule.idl
 */

module mozilla.dxpcom.nsIAboutModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAboutModule;


public import mozilla.dxpcom.nsIAboutModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;


/* starting wrapper class:    nsIAboutModule */
class nsIAboutModuleD : public nsISupportsD {

  static const nsIID IID = NS_IABOUTMODULE_IID;


  alias nsIAboutModule InnerType;

  this(nsIAboutModule intr){
    super(intr);
    this.inner = intr;
  }

  nsIAboutModule opCast() {
    return inner;
  }

  void opAssign(nsIAboutModule value) {
    inner = value;
  }

  /**
     * Constructs a new channel for the about protocol module. 
     *
     * @param aURI the uri of the new channel
     */
  /* nsIChannel newChannel (in nsIURI aURI); */
  nsIChannelD  NewChannel(nsIURID aURI){
    nsIChannel _retval;
    nsresult __result = inner.NewChannel(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIChannelD(_retval);
  }

private:
  nsIAboutModule inner;

}

