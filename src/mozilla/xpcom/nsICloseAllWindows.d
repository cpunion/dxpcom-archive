/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICloseAllWindows.idl
 */

module mozilla.xpcom.nsICloseAllWindows;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICloseAllWindows */
const char[] NS_ICLOSEALLWINDOWS_IID_STR = "2f977d49-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_ICLOSEALLWINDOWS_IID= 
  {0x2f977d49, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

extern(Windows)
interface nsICloseAllWindows : nsISupports {
  static const char[] IID_STR = NS_ICLOSEALLWINDOWS_IID_STR;
  static const nsIID IID = NS_ICLOSEALLWINDOWS_IID;

  /**
	 * Closes all open windows, optionally asking to confirm changes if any.
	 * @return TRUE if the user does not cancel from any confirmation dialog.
     */
  /* boolean closeAll (in boolean askSave); */
  nsresult CloseAll(PRBool askSave, PRBool *_retval);

}

