/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHistory.idl
 */

module mozilla.xpcom.nsISHistory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIHistoryEntry; /* forward declaration */

public import mozilla.xpcom.nsISHistoryListener; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsISHistory */
const char[] NS_ISHISTORY_IID_STR = "7294fe9b-14d8-11d5-9882-00c04fa02f40";

const nsIID NS_ISHISTORY_IID= 
  {0x7294fe9b, 0x14d8, 0x11d5, 
    [ 0x98, 0x82, 0x00, 0xc0, 0x4f, 0xa0, 0x2f, 0x40 ]};

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
extern(Windows)
interface nsISHistory : nsISupports {
  static const char[] IID_STR = NS_ISHISTORY_IID_STR;
  static const nsIID IID = NS_ISHISTORY_IID;

  /**
   * A readonly property of the interface that returns 
   * the number of toplevel documents currently available
   * in session history.
   */
  /* readonly attribute long count; */
  nsresult GetCount(PRInt32 *aCount);

  /**
   * A readonly property of the interface that returns 
   * the index of the current document in session history.
   */
  /* readonly attribute long index; */
  nsresult GetIndex(PRInt32 *aIndex);

  /**
   * A read/write property of the interface, used to Get/Set
   * the maximum number of toplevel documents, session history 
   * can hold for each instance. 
   */
  /* attribute long maxLength; */
  nsresult GetMaxLength(PRInt32 *aMaxLength);
  nsresult SetMaxLength(PRInt32 aMaxLength);

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
  nsresult GetEntryAtIndex(PRInt32 index, PRBool modifyIndex, nsIHistoryEntry *_retval);

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
  nsresult PurgeHistory(PRInt32 numEntries);

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
  nsresult AddSHistoryListener(nsISHistoryListener aListener);

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
  nsresult RemoveSHistoryListener(nsISHistoryListener aListener);

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
  nsresult GetSHistoryEnumerator(nsISimpleEnumerator  *aSHistoryEnumerator);

}

