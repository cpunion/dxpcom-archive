/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventHandler.idl
 */

module mozilla.xpcom.nsIEventHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIEventHandler */
const char[] NS_IEVENTHANDLER_IID_STR = "a447ddf0-1a99-11d2-815f-006008119d7a";

const nsIID NS_IEVENTHANDLER_IID= 
  {0xa447ddf0, 0x1a99, 0x11d2, 
    [ 0x81, 0x5f, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

extern(Windows)
interface nsIEventHandler : nsISupports {
  static const char[] IID_STR = NS_IEVENTHANDLER_IID_STR;
  static const nsIID IID = NS_IEVENTHANDLER_IID;

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
  nsresult HandleEvent(nsPluginEvent * aEvent, PRBool *aHandled);

}

