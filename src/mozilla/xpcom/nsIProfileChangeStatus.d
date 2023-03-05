/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileChangeStatus.idl
 */

module mozilla.xpcom.nsIProfileChangeStatus;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProfileChangeStatus */
const char[] NS_IPROFILECHANGESTATUS_IID_STR = "2f977d43-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IPROFILECHANGESTATUS_IID= 
  {0x2f977d43, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

extern(Windows)
interface nsIProfileChangeStatus : nsISupports {
  static const char[] IID_STR = NS_IPROFILECHANGESTATUS_IID_STR;
  static const nsIID IID = NS_IPROFILECHANGESTATUS_IID;

  /* void vetoChange (); */
  nsresult VetoChange();

  /**
    * Called by a profile change observer when a fatal error
    * occurred during the attempt to switch the profile.
    *
    * The profile should be considered in an unsafe condition,
    * and the profile manager should inform the user and
    * exit immediately.
    *
    */
  /* void changeFailed (); */
  nsresult ChangeFailed();

}

