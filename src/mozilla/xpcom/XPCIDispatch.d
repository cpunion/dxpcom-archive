/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM XPCIDispatch.idl
 */

module mozilla.xpcom.XPCIDispatch;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    IDispatch */
const char[] IDISPATCH_IID_STR = "00020400-0000-0000-c000-000000000046";

const nsIID IDISPATCH_IID= 
  {0x00020400, 0x0000, 0x0000, 
    [ 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46 ]};

/**
 * This interface is not to be used directly, it is to be used internally
 * for XPConnect's IDispatch support
 */
extern(Windows)
interface IDispatch : nsISupports {
  static const char[] IID_STR = IDISPATCH_IID_STR;
  static const nsIID IID = IDISPATCH_IID;

}

