/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIEditorTransaction.idl
 */

module mozilla.xpcom.nsPIEditorTransaction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsPIEditorTransaction */
const char[] NS_PIEDITORTRANSACTION_IID_STR = "4f18ada2-0ddc-11d5-9d3a-0060b0f8baff";

const nsIID NS_PIEDITORTRANSACTION_IID= 
  {0x4f18ada2, 0x0ddc, 0x11d5, 
    [ 0x9d, 0x3a, 0x00, 0x60, 0xb0, 0xf8, 0xba, 0xff ]};

extern(Windows)
interface nsPIEditorTransaction : nsISupports {
  static const char[] IID_STR = NS_PIEDITORTRANSACTION_IID_STR;
  static const nsIID IID = NS_PIEDITORTRANSACTION_IID;

  /* readonly attribute DOMString txnDescription; */
  nsresult GetTxnDescription(nsAString * aTxnDescription);

}

