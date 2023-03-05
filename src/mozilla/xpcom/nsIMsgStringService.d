/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgStringService.idl
 */

module mozilla.xpcom.nsIMsgStringService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIStringBundle;


/* starting interface:    nsIMsgStringService */
const char[] NS_IMSGSTRINGSERVICE_IID_STR = "6ac107b1-d558-11d3-98b1-001083010e9b";

const nsIID NS_IMSGSTRINGSERVICE_IID= 
  {0x6ac107b1, 0xd558, 0x11d3, 
    [ 0x98, 0xb1, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMsgStringService : nsISupports {
  static const char[] IID_STR = NS_IMSGSTRINGSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGSTRINGSERVICE_IID;

  /* wstring getStringByID (in long aStringID); */
  nsresult GetStringByID(PRInt32 aStringID, PRUnichar **_retval);

  /* readonly attribute nsIStringBundle bundle; */
  nsresult GetBundle(nsIStringBundle  *aBundle);

}

