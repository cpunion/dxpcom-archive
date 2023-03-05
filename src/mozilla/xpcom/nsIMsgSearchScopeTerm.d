/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchScopeTerm.idl
 */

module mozilla.xpcom.nsIMsgSearchScopeTerm;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIMsgSearchSession;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsILineInputStream; /* forward declaration */


/* starting interface:    nsIMsgSearchScopeTerm */
const char[] NS_IMSGSEARCHSCOPETERM_IID_STR = "10f5c44f-5a11-44e0-9b6b-4db81ba97963";

const nsIID NS_IMSGSEARCHSCOPETERM_IID= 
  {0x10f5c44f, 0x5a11, 0x44e0, 
    [ 0x9b, 0x6b, 0x4d, 0xb8, 0x1b, 0xa9, 0x79, 0x63 ]};

extern(Windows)
interface nsIMsgSearchScopeTerm : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHSCOPETERM_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHSCOPETERM_IID;

  /* readonly attribute nsILocalFile mailFile; */
  nsresult GetMailFile(nsILocalFile  *aMailFile);

  /* attribute nsIInputStream inputStream; */
  nsresult GetInputStream(nsIInputStream  *aInputStream);
  nsresult SetInputStream(nsIInputStream  aInputStream);

  /* readonly attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);

  /* readonly attribute nsIMsgSearchSession searchSession; */
  nsresult GetSearchSession(nsIMsgSearchSession  *aSearchSession);

}

