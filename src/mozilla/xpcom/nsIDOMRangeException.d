/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMRangeException.idl
 */

module mozilla.xpcom.nsIDOMRangeException;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDOMRangeException */
const char[] NS_IDOMRANGEEXCEPTION_IID_STR = "0f807301-39d2-11d6-a7f2-8f504ff870dc";

const nsIID NS_IDOMRANGEEXCEPTION_IID= 
  {0x0f807301, 0x39d2, 0x11d6, 
    [ 0xa7, 0xf2, 0x8f, 0x50, 0x4f, 0xf8, 0x70, 0xdc ]};

extern(Windows)
interface nsIDOMRangeException : nsISupports {
  static const char[] IID_STR = NS_IDOMRANGEEXCEPTION_IID_STR;
  static const nsIID IID = NS_IDOMRANGEEXCEPTION_IID;

  enum { BAD_BOUNDARYPOINTS_ERR = 1U };

  enum { INVALID_NODE_TYPE_ERR = 2U };

  /* readonly attribute unsigned short code; */
  nsresult GetCode(PRUint16 *aCode);

}

