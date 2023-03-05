/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHistory.idl
 */

module mozilla.dxpcom.nsISHistoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISHistory;


public import mozilla.dxpcom.nsISHistoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIHistoryEntry;

public import mozilla.dxpcom.nsIHistoryEntryD;

public import mozilla.xpcom.nsISHistoryListener;

public import mozilla.dxpcom.nsISHistoryListenerD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsISHistory */
/**
 * An interface to the primary properties of the Session History
 * component. In an embedded browser environment, the nsIWebBrowser
 * object creates an instance of session history for each open window.
 * A handle to the session history object can be obtained from
 * nsIWebNavigation. In a non-embedded situation, the  owner of the
 * session history component must create a instance of it and set
 * it in the nsIWebNavigation object.
 * This interface is accessible from javascript. 
 *
 * @status FROZEN
 */
class nsISHistoryD : public nsISupportsD {

  static const nsIID IID = NS_ISHISTORY_IID;


  alias nsISHistory InnerType;

  this(nsISHistory intr){
    super(intr);
    this.inner = intr;
  }

  nsISHistory opCast() {
    return inner;
  }

  void opAssign(nsISHistory value) {
    inner = value;
  }

  /**
   * A readonly property of the interface that returns 
   * the number of toplevel documents currently available
   * in session history.
   */
  /* readonly attribute long count; */
  PRInt32 Count(){
    PRInt32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * A readonly property of the interface that returns 
   * the index of the current document in session history.
   */
  /* readonly attribute long index; */
  PRInt32 Index(){
    PRInt32 value;
    nsresult __result = inner.GetIndex(&value);
    CheckException(__result);
    return value;
  }

  /**
   * A read/write property of the interface, used to Get/Set
   * the maximum number of toplevel documents, session history 
   * can hold for each instance. 
   */
  /* attribute long maxLength; */
  PRInt32 MaxLength(){
    PRInt32 value;
    nsresult __result = inner.GetMaxLength(&value);
    CheckException(__result);
    return value;
  }
  void MaxLength(PRInt32 aMaxLength){
    nsresult __result = inner.SetMaxLength(aMaxLength);
    CheckException(__result);
  }

  /**
   * Called to obtain handle to the history entry at a
   * given index.
   *
   * @param index             The index value whose entry is requested.
   * @param modifyIndex       A boolean flag that indicates if the current
   *                          index of session history should be modified 
   *                          to the parameter index.
   *
   * @return                  <code>NS_OK</code> history entry for 
   *                          the index is obtained successfully.
   *                          <code>NS_ERROR_FAILURE</code> Error in obtaining
   *                          history entry for the given index.
   */
  /* nsIHistoryEntry getEntryAtIndex (in long index, in boolean modifyIndex); */
  nsIHistoryEntryD  GetEntryAtIndex(PRInt32 index, PRBool modifyIndex){
    nsIHistoryEntry _retval;
    nsresult __result = inner.GetEntryAtIndex(index, modifyIndex, &_retval);
    CheckException(__result);
    return new nsIHistoryEntryD(_retval);
  }

  /**
   * Called to purge older documents from history.
   * Documents can be removed from session history for various 
   * reasons. For example to  control memory usage of the browser, to 
   * prevent users from loading documents from history, to erase evidence of
   * prior page loads etc...
   *
   * @param numEntries        The number of toplevel documents to be
   *                          purged from history. During purge operation,
   *                          the latest documents are maintained and older 
   *                          'numEntries' documents are removed from history.
   * @throws                  <code>NS_SUCCESS_LOSS_OF_INSIGNIFICANT_DATA</code> Purge was vetod.
   * @throws                  <code>NS_ERROR_FAILURE</code> numEntries is
   *                          invalid or out of bounds with the size of history.
   *                          
   */
  /* void PurgeHistory (in long numEntries); */
  void PurgeHistory(PRInt32 numEntries){
    nsresult __result = inner.PurgeHistory(numEntries);
    CheckException(__result);
  }

  /**
   * Called to register a listener for the session history component.
   * Listeners are notified when pages are loaded or purged from history.
   * 
   * @param aListener         Listener object to be notified for all
   *                          page loads that initiate in session history.
   *
   * @note                    A listener object must implement 
   *                          nsISHistoryListener and nsSupportsWeakReference
   *
   * @see nsISHistoryListener
   * @see nsSupportsWeakReference
   */
  /* void addSHistoryListener (in nsISHistoryListener aListener); */
  void AddSHistoryListener(nsISHistoryListenerD aListener){
    nsresult __result = inner.AddSHistoryListener(aListener ? cast(nsISHistoryListener)aListener : null);
    CheckException(__result);
  }

  /**
   * Called to remove a listener for the session history component.
   * Listeners are notified when pages are loaded from history.
   * 
   * @param aListener         Listener object to be removed from 
   *                          session history.
   *
   * @note                    A listener object must implement 
   *                          nsISHistoryListener and nsSupportsWeakReference
   * @see nsISHistoryListener
   * @see nsSupportsWeakReference
   */
  /* void removeSHistoryListener (in nsISHistoryListener aListener); */
  void RemoveSHistoryListener(nsISHistoryListenerD aListener){
    nsresult __result = inner.RemoveSHistoryListener(aListener ? cast(nsISHistoryListener)aListener : null);
    CheckException(__result);
  }

  /**
   * Called to obtain a enumerator for all the  documents stored in 
   * session history. The enumerator object thus returned by this method
   * can be traversed using nsISimpleEnumerator. 
   *
   * @note  To access individual history entries of the enumerator, perform the
   *        following steps:
   *        1) Call nsISHistory->GetSHistoryEnumerator() to obtain handle 
   *           the nsISimpleEnumerator object.
   *        2) Use nsISimpleEnumerator->GetNext() on the object returned
   *           by step #1 to obtain handle to the next object in the list. 
   *           The object returned by this step is of type nsISupports.
   *        3) Perform a QueryInterface on the object returned by step #2 
   *           to nsIHistoryEntry.
   *        4) Use nsIHistoryEntry to access properties of each history entry. 
   *
   * @see nsISimpleEnumerator
   * @see nsIHistoryEntry
   * @see QueryInterface()
   * @see do_QueryInterface()
   */
  /* readonly attribute nsISimpleEnumerator SHistoryEnumerator; */
  nsISimpleEnumeratorD  SHistoryEnumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetSHistoryEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

private:
  nsISHistory inner;

}

