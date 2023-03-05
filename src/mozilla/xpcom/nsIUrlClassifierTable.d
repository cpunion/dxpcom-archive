/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierTable.idl
 */

module mozilla.xpcom.nsIUrlClassifierTable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListManager;


/* starting interface:    nsIUrlClassifierTable */
const char[] NS_IURLCLASSIFIERTABLE_IID_STR = "fd1f8334-1859-472d-b01f-4ac6b1121ce4";

const nsIID NS_IURLCLASSIFIERTABLE_IID= 
  {0xfd1f8334, 0x1859, 0x472d, 
    [ 0xb0, 0x1f, 0x4a, 0xc6, 0xb1, 0x12, 0x1c, 0xe4 ]};

extern(Windows)
interface nsIUrlClassifierTable : nsISupports {
  static const char[] IID_STR = NS_IURLCLASSIFIERTABLE_IID_STR;
  static const nsIID IID = NS_IURLCLASSIFIERTABLE_IID;

  /**
     * The name used to identify this table
     */
  /* attribute ACString name; */
  nsresult GetName(nsACString * aName);
  nsresult SetName(nsACString * aName);

  /**
     * Set to false if we don't want to update this table.
     */
  /* attribute boolean needsUpdate; */
  nsresult GetNeedsUpdate(PRBool *aNeedsUpdate);
  nsresult SetNeedsUpdate(PRBool aNeedsUpdate);

  /**
     * In the simple case, exists just looks up the string in the
     * table and call the callback after the query returns with true or
     * false.  It's possible that something more complex happens
     * (e.g., canonicalize the url).
     */
  /* void exists (in ACString key, in nsIUrlListManagerCallback cb); */
  nsresult Exists(nsACString * key, nsIUrlListManagerCallback cb);

}

