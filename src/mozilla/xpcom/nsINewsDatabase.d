/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsDatabase.idl
 */

module mozilla.xpcom.nsINewsDatabase;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINewsDatabase */
const char[] NS_INEWSDATABASE_IID_STR = "f700208a-1dd1-11b2-b947-e4e1e4fdf278";

const nsIID NS_INEWSDATABASE_IID= 
  {0xf700208a, 0x1dd1, 0x11b2, 
    [ 0xb9, 0x47, 0xe4, 0xe1, 0xe4, 0xfd, 0xf2, 0x78 ]};

extern(Windows)
interface nsINewsDatabase : nsISupports {
  static const char[] IID_STR = NS_INEWSDATABASE_IID_STR;
  static const nsIID IID = NS_INEWSDATABASE_IID;

  /* [noscript] attribute nsMsgKeySetPtr readSet; */
  nsresult GetReadSet(nsMsgKeySet * *aReadSet);
  nsresult SetReadSet(nsMsgKeySet * aReadSet);

}

