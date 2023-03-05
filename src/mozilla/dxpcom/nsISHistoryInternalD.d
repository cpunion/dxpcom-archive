/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHistoryInternal.idl
 */

module mozilla.dxpcom.nsISHistoryInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISHistoryInternal;


public import mozilla.dxpcom.nsISHistoryInternalD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;
public import mozilla.xpcom.nsISHEntry;
public import mozilla.dxpcom.nsISHEntryD;
public import mozilla.xpcom.nsISHTransaction;
public import mozilla.dxpcom.nsISHTransactionD;

public import mozilla.xpcom.nsISHistoryListener;

public import mozilla.dxpcom.nsISHistoryListenerD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;


/* starting wrapper class:    nsISHistoryInternal */
class nsISHistoryInternalD : public nsISupportsD {

  static const nsIID IID = NS_ISHISTORYINTERNAL_IID;


  alias nsISHistoryInternal InnerType;

  this(nsISHistoryInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsISHistoryInternal opCast() {
    return inner;
  }

  void opAssign(nsISHistoryInternal value) {
    inner = value;
  }

  /**
   * Add a new Entry to the History List
   * @param aEntry - The entry to add
   * @param aPersist - If true this specifies that the entry should persist
   * in the list.  If false, this means that when new entries are added
   * this element will not appear in the session history list.
   */
  /* void addEntry (in nsISHEntry aEntry, in boolean aPersist); */
  void AddEntry(nsISHEntryD aEntry, PRBool aPersist){
    nsresult __result = inner.AddEntry(aEntry ? cast(nsISHEntry)aEntry : null, aPersist);
    CheckException(__result);
  }

  /**
   * Get the root transaction
   */
  /* readonly attribute nsISHTransaction rootTransaction; */
  nsISHTransactionD  RootTransaction(){
    nsISHTransaction value;
    nsresult __result = inner.GetRootTransaction(&value);
    CheckException(__result);
    return new nsISHTransactionD(value);
  }

  /**
   * The toplevel docshell object to which this SHistory object belongs to.
   */
  /* attribute nsIDocShell rootDocShell; */
  nsIDocShellD  RootDocShell(){
    nsIDocShell value;
    nsresult __result = inner.GetRootDocShell(&value);
    CheckException(__result);
    return new nsIDocShellD(value);
  }
  void RootDocShell(nsIDocShellD  aRootDocShell){
    nsIDocShell value;
    nsresult __result = inner.SetRootDocShell(value);
    CheckException(__result);
  }

  /** 
   * Update the index maintained by sessionHistory
   */
  /* void updateIndex (); */
  void UpdateIndex(){
    nsresult __result = inner.UpdateIndex();
    CheckException(__result);
  }

  /**
   * Replace the nsISHEntry at a particular index
   * @param aIndex - The index at which the entry shoud be replaced
   * @param aReplaceEntry - The replacement entry for the index.
   */
  /* void replaceEntry (in long aIndex, in nsISHEntry aReplaceEntry); */
  void ReplaceEntry(PRInt32 aIndex, nsISHEntryD aReplaceEntry){
    nsresult __result = inner.ReplaceEntry(aIndex, aReplaceEntry ? cast(nsISHEntry)aReplaceEntry : null);
    CheckException(__result);
  }

  /** 
   * Get handle to the history listener
   */
  /* readonly attribute nsISHistoryListener listener; */
  nsISHistoryListenerD  Listener(){
    nsISHistoryListener value;
    nsresult __result = inner.GetListener(&value);
    CheckException(__result);
    return new nsISHistoryListenerD(value);
  }

  /**
   * Evict content viewers until the number of content viewers per tab
   * is no more than gHistoryMaxViewers.  Also, count
   * total number of content viewers globally and evict one if we are over
   * our total max.  This is always called in Show(), after we destroy
   * the previous viewer.
   */
  /* void evictContentViewers (in long previousIndex, in long index); */
  void EvictContentViewers(PRInt32 previousIndex, PRInt32 index){
    nsresult __result = inner.EvictContentViewers(previousIndex, index);
    CheckException(__result);
  }

  /**
    * Max number of total cached content viewers.  If the pref
    * browser.sessionhistory.max_total_viewers is negative, then
    * this value is calculated based on the total amount of memory.
    * Otherwise, it comes straight from the pref.
    */
  /* readonly attribute long historyMaxTotalViewers; */
  PRInt32 HistoryMaxTotalViewers(){
    PRInt32 value;
    nsresult __result = inner.GetHistoryMaxTotalViewers(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISHistoryInternal inner;

}

