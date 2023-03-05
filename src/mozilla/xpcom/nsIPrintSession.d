/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSession.idl
 */

module mozilla.xpcom.nsIPrintSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPrintSession */
const char[] NS_IPRINTSESSION_IID_STR = "2f977d52-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IPRINTSESSION_IID= 
  {0x2f977d52, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

/**
 * nsIPrintSession
 *
 * Stores data pertaining only to a single print job. This
 * differs from nsIPrintSettings, which stores data which may
 * be valid across a number of jobs.
 *
 * This interface is currently empty since, at this point, only
 * platform-specific derived interfaces offer any functionality.
 * It is here as a placeholder for when the printing session has
 * XP functionality.
 *
 * The creation of a component which implements this interface
 * will begin the session. Likewise, destruction of that object
 * will end the session.
 * 
 * @status
 */
extern(Windows)
interface nsIPrintSession : nsISupports {
  static const char[] IID_STR = NS_IPRINTSESSION_IID_STR;
  static const nsIID IID = NS_IPRINTSESSION_IID;

}

