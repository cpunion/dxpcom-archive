/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimerInternal.idl
 */

module mozilla.xpcom.nsITimerInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITimerInternal */
const char[] NS_ITIMERINTERNAL_IID_STR = "6dd8f185-ceb8-4878-8e38-2d13edc2d079";

const nsIID NS_ITIMERINTERNAL_IID= 
  {0x6dd8f185, 0xceb8, 0x4878, 
    [ 0x8e, 0x38, 0x2d, 0x13, 0xed, 0xc2, 0xd0, 0x79 ]};

extern(Windows)
interface nsITimerInternal : nsISupports {
  static const char[] IID_STR = NS_ITIMERINTERNAL_IID_STR;
  static const nsIID IID = NS_ITIMERINTERNAL_IID;

  /* attribute boolean idle; */
  nsresult GetIdle(PRBool *aIdle);
  nsresult SetIdle(PRBool aIdle);

}

