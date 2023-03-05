/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCustomColumnHandler.idl
 */

module mozilla.xpcom.nsIMsgCustomColumnHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsITreeView;

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIMsgCustomColumnHandler */
const char[] NS_IMSGCUSTOMCOLUMNHANDLER_IID_STR = "33ef10af-54fb-42ce-95d0-52d8f6f1e681";

const nsIID NS_IMSGCUSTOMCOLUMNHANDLER_IID= 
  {0x33ef10af, 0x54fb, 0x42ce, 
    [ 0x95, 0xd0, 0x52, 0xd8, 0xf6, 0xf1, 0xe6, 0x81 ]};

extern(Windows)
interface nsIMsgCustomColumnHandler : nsITreeView {
  static const char[] IID_STR = NS_IMSGCUSTOMCOLUMNHANDLER_IID_STR;
  static const nsIID IID = NS_IMSGCUSTOMCOLUMNHANDLER_IID;

  /* AString getSortStringForRow (in nsIMsgDBHdr aHdr); */
  nsresult GetSortStringForRow(nsIMsgDBHdr aHdr, nsAString * _retval);

  /* unsigned long getSortLongForRow (in nsIMsgDBHdr aHdr); */
  nsresult GetSortLongForRow(nsIMsgDBHdr aHdr, PRUint32 *_retval);

  /* boolean isString (); */
  nsresult IsString(PRBool *_retval);

}

