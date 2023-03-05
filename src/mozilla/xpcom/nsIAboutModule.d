/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAboutModule.idl
 */

module mozilla.xpcom.nsIAboutModule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */


/* starting interface:    nsIAboutModule */
const char[] NS_IABOUTMODULE_IID_STR = "692303c0-2f83-11d3-8cd0-0060b0fc14a3";

const nsIID NS_IABOUTMODULE_IID= 
  {0x692303c0, 0x2f83, 0x11d3, 
    [ 0x8c, 0xd0, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIAboutModule : nsISupports {
  static const char[] IID_STR = NS_IABOUTMODULE_IID_STR;
  static const nsIID IID = NS_IABOUTMODULE_IID;

  /**
     * Constructs a new channel for the about protocol module. 
     *
     * @param aURI the uri of the new channel
     */
  /* nsIChannel newChannel (in nsIURI aURI); */
  nsresult NewChannel(nsIURI aURI, nsIChannel *_retval);

}

