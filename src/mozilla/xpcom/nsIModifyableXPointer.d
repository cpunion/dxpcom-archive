/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIModifyableXPointer.idl
 */

module mozilla.xpcom.nsIModifyableXPointer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXPointer;

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */


/* starting interface:    nsIModifyableXPointerResult */
const char[] NS_IMODIFYABLEXPOINTERRESULT_IID_STR = "2dc3be2e-642d-4d7e-b3c5-f3dac51afbee";

const nsIID NS_IMODIFYABLEXPOINTERRESULT_IID= 
  {0x2dc3be2e, 0x642d, 0x4d7e, 
    [ 0xb3, 0xc5, 0xf3, 0xda, 0xc5, 0x1a, 0xfb, 0xee ]};

/**
 * Helper interface that can assist in creating an nsIXPointerResult.
 */
extern(Windows)
interface nsIModifyableXPointerResult : nsIXPointerResult {
  static const char[] IID_STR = NS_IMODIFYABLEXPOINTERRESULT_IID_STR;
  static const nsIID IID = NS_IMODIFYABLEXPOINTERRESULT_IID;

  /* void appendRange (in nsIDOMRange aRange); */
  nsresult AppendRange(nsIDOMRange aRange);

}

