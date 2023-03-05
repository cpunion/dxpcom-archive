/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbMDBCard.idl
 */

module mozilla.xpcom.nsIAbMDBCard;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAddrDatabase; /* forward declaration */


/* starting interface:    nsIAbMDBCard */
const char[] NS_IABMDBCARD_IID_STR = "5f414a80-1dd2-11b2-aad0-aa4a15d5a1e8";

const nsIID NS_IABMDBCARD_IID= 
  {0x5f414a80, 0x1dd2, 0x11b2, 
    [ 0xaa, 0xd0, 0xaa, 0x4a, 0x15, 0xd5, 0xa1, 0xe8 ]};

extern(Windows)
interface nsIAbMDBCard : nsISupports {
  static const char[] IID_STR = NS_IABMDBCARD_IID_STR;
  static const nsIID IID = NS_IABMDBCARD_IID;

  /* attribute unsigned long key; */
  nsresult GetKey(PRUint32 *aKey);
  nsresult SetKey(PRUint32 aKey);

  /* attribute unsigned long dbTableID; */
  nsresult GetDbTableID(PRUint32 *aDbTableID);
  nsresult SetDbTableID(PRUint32 aDbTableID);

  /* attribute unsigned long dbRowID; */
  nsresult GetDbRowID(PRUint32 *aDbRowID);
  nsresult SetDbRowID(PRUint32 aDbRowID);

  /* void setAbDatabase (in nsIAddrDatabase database); */
  nsresult SetAbDatabase(nsIAddrDatabase database);

  /* void copyCard (in nsIAbMDBCard srcCardDB); */
  nsresult CopyCard(nsIAbMDBCard srcCardDB);

  /* wstring getStringAttribute (in string name); */
  nsresult GetStringAttribute(char *name, PRUnichar **_retval);

  /* void setStringAttribute (in string name, in wstring value); */
  nsresult SetStringAttribute(char *name, PRUnichar *value);

}

