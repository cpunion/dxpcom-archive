/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValidityManager.idl
 */

module mozilla.xpcom.nsIMsgSearchValidityManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgSearchValidityTable;

alias PRInt32 nsMsgSearchValidityScope;


/* starting interface:    nsIMsgSearchValidityManager */
const char[] NS_IMSGSEARCHVALIDITYMANAGER_IID_STR = "98651499-6820-42e4-a2d7-e75277e01f7d";

const nsIID NS_IMSGSEARCHVALIDITYMANAGER_IID= 
  {0x98651499, 0x6820, 0x42e4, 
    [ 0xa2, 0xd7, 0xe7, 0x52, 0x77, 0xe0, 0x1f, 0x7d ]};

extern(Windows)
interface nsIMsgSearchValidityManager : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHVALIDITYMANAGER_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHVALIDITYMANAGER_IID;

  /* nsIMsgSearchValidityTable getTable (in nsMsgSearchValidityScope scope); */
  nsresult GetTable(nsMsgSearchValidityScope scope_, nsIMsgSearchValidityTable *_retval);

}

