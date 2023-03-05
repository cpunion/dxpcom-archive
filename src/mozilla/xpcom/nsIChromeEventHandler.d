/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeEventHandler.idl
 */

module mozilla.xpcom.nsIChromeEventHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMEvent; /* forward declaration */


/* starting interface:    nsIChromeEventHandler */
const char[] NS_ICHROMEEVENTHANDLER_IID_STR = "7bc08970-9e6c-11d3-afb2-00a024ffc08c";

const nsIID NS_ICHROMEEVENTHANDLER_IID= 
  {0x7bc08970, 0x9e6c, 0x11d3, 
    [ 0xaf, 0xb2, 0x00, 0xa0, 0x24, 0xff, 0xc0, 0x8c ]};

/**
 * The nsIChromeEventHandler
 */
extern(Windows)
interface nsIChromeEventHandler : nsISupports {
  static const char[] IID_STR = NS_ICHROMEEVENTHANDLER_IID_STR;
  static const nsIID IID = NS_ICHROMEEVENTHANDLER_IID;

  /**
	* Handle a chrome DOM event.
	*/
  /* [noscript] void handleChromeEvent (in nsPresContext aPresContext, in nsEventPtr aEvent, out nsIDOMEvent aDOMEvent, in unsigned long aFlags, inout nsEventStatus aStatus); */
  nsresult HandleChromeEvent(nsPresContext * aPresContext, nsEvent * aEvent, nsIDOMEvent *aDOMEvent, PRUint32 aFlags, nsEventStatus *aStatus);

}

