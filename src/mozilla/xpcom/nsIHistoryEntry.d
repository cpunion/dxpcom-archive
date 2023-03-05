/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHistoryEntry.idl
 */

module mozilla.xpcom.nsIHistoryEntry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIHistoryEntry */
const char[] NS_IHISTORYENTRY_IID_STR = "a41661d4-1417-11d5-9882-00c04fa02f40";

const nsIID NS_IHISTORYENTRY_IID= 
  {0xa41661d4, 0x1417, 0x11d5, 
    [ 0x98, 0x82, 0x00, 0xc0, 0x4f, 0xa0, 0x2f, 0x40 ]};

extern(Windows)
interface nsIHistoryEntry : nsISupports {
  static const char[] IID_STR = NS_IHISTORYENTRY_IID_STR;
  static const nsIID IID = NS_IHISTORYENTRY_IID;

  /** 
     * A readonly property that returns the URI
     * of the current entry. The object returned is
     * of type nsIURI
     */
  /* readonly attribute nsIURI URI; */
  nsresult GetURI(nsIURI  *aURI);

  /** 
     * A readonly property that returns the title
     * of the current entry.  The object returned
     * is a encoded string
     */
  /* readonly attribute wstring title; */
  nsresult GetTitle(PRUnichar * *aTitle);

  /** 
     * A readonly property that returns a boolean
     * flag which indicates if the entry was created as a 
     * result of a subframe navigation. This flag will be
     * 'false' when a frameset page is visited for
     * the first time. This flag will be 'true' for all
     * history entries created as a result of a subframe
     * navigation.
     */
  /* readonly attribute boolean isSubFrame; */
  nsresult GetIsSubFrame(PRBool *aIsSubFrame);

}

