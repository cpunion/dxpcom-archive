/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHistoryInternal.idl
 */

module mozilla.xpcom.nsISHistoryInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFactory;
public import mozilla.xpcom.nsISHEntry;
public import mozilla.xpcom.nsISHTransaction;

public import mozilla.xpcom.nsISHistoryListener; /* forward declaration */

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsISHistoryInternal */
const char[] NS_ISHISTORYINTERNAL_IID_STR = "494fac3c-64f4-41b8-b209-b4ada899613b";

const nsIID NS_ISHISTORYINTERNAL_IID= 
  {0x494fac3c, 0x64f4, 0x41b8, 
    [ 0xb2, 0x09, 0xb4, 0xad, 0xa8, 0x99, 0x61, 0x3b ]};

extern(Windows)
interface nsISHistoryInternal : nsISupports {
  static const char[] IID_STR = NS_ISHISTORYINTERNAL_IID_STR;
  static const nsIID IID = NS_ISHISTORYINTERNAL_IID;

  /**
   * Add a new Entry to the History List
   * @param aEntry - The entry to add
   * @param aPersist - If true this specifies that the entry should persist
   * in the list.  If false, this means that when new entries are added
   * this element will not appear in the session history list.
   */
  /* void addEntry (in nsISHEntry aEntry, in boolean aPersist); */
  nsresult AddEntry(nsISHEntry aEntry, PRBool aPersist);

  /**
   * Get the root transaction
   */
  /* readonly attribute nsISHTransaction rootTransaction; */
  nsresult GetRootTransaction(nsISHTransaction  *aRootTransaction);

  /**
   * The toplevel docshell object to which this SHistory object belongs to.
   */
  /* attribute nsIDocShell rootDocShell; */
  nsresult GetRootDocShell(nsIDocShell  *aRootDocShell);
  nsresult SetRootDocShell(nsIDocShell  aRootDocShell);

  /** 
   * Update the index maintained by sessionHistory
   */
  /* void updateIndex (); */
  nsresult UpdateIndex();

  /**
   * Replace the nsISHEntry at a particular index
   * @param aIndex - The index at which the entry shoud be replaced
   * @param aReplaceEntry - The replacement entry for the index.
   */
  /* void replaceEntry (in long aIndex, in nsISHEntry aReplaceEntry); */
  nsresult ReplaceEntry(PRInt32 aIndex, nsISHEntry aReplaceEntry);

  /** 
   * Get handle to the history listener
   */
  /* readonly attribute nsISHistoryListener listener; */
  nsresult GetListener(nsISHistoryListener  *aListener);

  /**
   * Evict content viewers until the number of content viewers per tab
   * is no more than gHistoryMaxViewers.  Also, count
   * total number of content viewers globally and evict one if we are over
   * our total max.  This is always called in Show(), after we destroy
   * the previous viewer.
   */
  /* void evictContentViewers (in long previousIndex, in long index); */
  nsresult EvictContentViewers(PRInt32 previousIndex, PRInt32 index);

  /**
    * Max number of total cached content viewers.  If the pref
    * browser.sessionhistory.max_total_viewers is negative, then
    * this value is calculated based on the total amount of memory.
    * Otherwise, it comes straight from the pref.
    */
  /* readonly attribute long historyMaxTotalViewers; */
  nsresult GetHistoryMaxTotalViewers(PRInt32 *aHistoryMaxTotalViewers);

}

