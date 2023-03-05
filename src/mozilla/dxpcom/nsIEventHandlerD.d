/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventHandler.idl
 */

module mozilla.dxpcom.nsIEventHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEventHandler;


public import mozilla.dxpcom.nsIEventHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIEventHandler */
class nsIEventHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IEVENTHANDLER_IID;


  alias nsIEventHandler InnerType;

  this(nsIEventHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIEventHandler opCast() {
    return inner;
  }

  void opAssign(nsIEventHandler value) {
    inner = value;
  }

  /**
   * Handles an event. An nsIEventHandler can also get registered with with
   * nsIPluginManager2::RegisterWindow and will be called whenever an event
   * comes in for that window.
   *
   * Note that for Unix and Mac the nsPluginEvent structure is different
   * from the old NPEvent structure -- it's no longer the native event
   * record, but is instead a struct. This was done for future extensibility,
   * and so that the Mac could receive the window argument too. For Windows
   * and OS2, it's always been a struct, so there's no change for them.
   *
   * (Corresponds to NPP_HandleEvent.)
   *
   * @param aEvent   - the event to be handled
   * @param aHandled - set to PR_TRUE if event was handled
   * @result         - NS_OK if this operation was successful
   */
  /* void handleEvent (in nsPluginEventPtr aEvent, out boolean aHandled); */
  void HandleEvent(nsPluginEvent * aEvent, out PRBool aHandled){
    nsresult __result = inner.HandleEvent(aEvent, &aHandled);
    CheckException(__result);
  }

private:
  nsIEventHandler inner;

}

