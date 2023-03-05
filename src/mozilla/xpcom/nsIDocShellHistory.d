/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellHistory.idl
 */

module mozilla.xpcom.nsIDocShellHistory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISHEntry; /* forward declaration */


/* starting interface:    nsIDocShellHistory */
const char[] NS_IDOCSHELLHISTORY_IID_STR = "89caa9f0-8b1c-47fb-b0d3-f0aef0bff749";

const nsIID NS_IDOCSHELLHISTORY_IID= 
  {0x89caa9f0, 0x8b1c, 0x47fb, 
    [ 0xb0, 0xd3, 0xf0, 0xae, 0xf0, 0xbf, 0xf7, 0x49 ]};

extern(Windows)
interface nsIDocShellHistory : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELLHISTORY_IID_STR;
  static const nsIID IID = NS_IDOCSHELLHISTORY_IID;

  /**
   * Get the SHEntry associated with a child docshell
   */
  /* nsISHEntry getChildSHEntry (in long aChildOffset); */
  nsresult GetChildSHEntry(PRInt32 aChildOffset, nsISHEntry *_retval);

  /**
   * Add a Child SHEntry for a frameset page
   */
  /* void addChildSHEntry (in nsISHEntry aCloneReference, in nsISHEntry aHistoryEntry, in long aChildOffset); */
  nsresult AddChildSHEntry(nsISHEntry aCloneReference, nsISHEntry aHistoryEntry, PRInt32 aChildOffset);

  /* attribute boolean useGlobalHistory; */
  nsresult GetUseGlobalHistory(PRBool *aUseGlobalHistory);
  nsresult SetUseGlobalHistory(PRBool aUseGlobalHistory);

}

