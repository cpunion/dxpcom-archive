/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionListener.idl
 */

module mozilla.xpcom.nsISelectionListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsISelection; /* forward declaration */


/* starting interface:    nsISelectionListener */
const char[] NS_ISELECTIONLISTENER_IID_STR = "a6cf90e2-15b3-11d2-932e-00805f8add32";

const nsIID NS_ISELECTIONLISTENER_IID= 
  {0xa6cf90e2, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsISelectionListener : nsISupports {
  static const char[] IID_STR = NS_ISELECTIONLISTENER_IID_STR;
  static const nsIID IID = NS_ISELECTIONLISTENER_IID;

  enum { NO_REASON = 0 };

  enum { DRAG_REASON = 1 };

  enum { MOUSEDOWN_REASON = 2 };

  enum { MOUSEUP_REASON = 4 };

  enum { KEYPRESS_REASON = 8 };

  enum { SELECTALL_REASON = 16 };

  /* void notifySelectionChanged (in nsIDOMDocument doc, in nsISelection sel, in short reason); */
  nsresult NotifySelectionChanged(nsIDOMDocument doc, nsISelection sel, PRInt16 reason);

}

