/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHistoryListener.idl
 */

module mozilla.xpcom.nsISHistoryListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsISHistoryListener */
const char[] NS_ISHISTORYLISTENER_IID_STR = "3b07f591-e8e1-11d4-9882-00c04fa02f40";

const nsIID NS_ISHISTORYLISTENER_IID= 
  {0x3b07f591, 0xe8e1, 0x11d4, 
    [ 0x98, 0x82, 0x00, 0xc0, 0x4f, 0xa0, 0x2f, 0x40 ]};

/**
 * nsISHistoryListener defines the interface for an object that wishes
 * to receive notifications about activities in History. A history 
 * listener will be notified when pages are added, removed and loaded 
 * from session history. A listener to session history can be registered 
 * using the interface nsISHistory.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsISHistoryListener : nsISupports {
  static const char[] IID_STR = NS_ISHISTORYLISTENER_IID_STR;
  static const nsIID IID = NS_ISHISTORYLISTENER_IID;

  /**
   * called to notify a listener when a new document is
   * added to session history. New documents are added to 
   * session history by docshell when new pages are loaded
   * in a frame or content area. 
   *
   * @param aNewURI     The uri of the document to be added to session history
   *
   * @return            <CODE>NS_OK</CODE> notification sent out successfully
   */
  /* void OnHistoryNewEntry (in nsIURI aNewURI); */
  nsresult OnHistoryNewEntry(nsIURI aNewURI);

  /**
   * called to notify a listener when the user presses the 'back' button
   * of the browser OR when the user attempts to go back one page
   * in history thro' other means, from javascript or using nsIWebNavigation
   *
   * @param aBackURI        The uri of the previous page  which is to be 
   *                        loaded.
   * 
   * @return aReturn        A boolean flag returned by the listener to
   *                        indicate if the back operation is to be aborted 
   *                        or continued.  If the listener returns 'true', it indicates 
   *                        that the back operation can be continued. If the listener
   *                        returns 'false', then the back operation will be aborted.
   *                        This is a mechanism for the listener to control user's 
   *                        operations with history.
   * 
   */
  /* boolean OnHistoryGoBack (in nsIURI aBackURI); */
  nsresult OnHistoryGoBack(nsIURI aBackURI, PRBool *_retval);

  /**
   * called to notify a listener when the user presses the 'forward' button
   * of the browser OR when the user attempts to go forward one page
   * in history thro' other means, from javascript or using nsIWebNavigation
   *
   * @param aForwardURI     The uri of the next page  which is to be 
   *                        loaded.
   * 
   * @return aReturn        A boolean flag returned by the listener to
   *                        indicate if the forward operation is to be aborted 
   *                        or continued.  If the listener returns 'true', it indicates 
   *                        that the forward operation can be continued. If the listener
   *                        returns 'false', then the forward operation will be aborted.
   *                        This is a mechanism for the listener to control user's 
   *                        operations with history.
   * 
   */
  /* boolean OnHistoryGoForward (in nsIURI aForwardURI); */
  nsresult OnHistoryGoForward(nsIURI aForwardURI, PRBool *_retval);

  /** 
   * called to notify a listener when the user presses the 'reload' button
   * of the browser OR when the user attempts to reload the current document
   * through other means, like from javascript or using nsIWebNavigation
   *
   * @param aReloadURI    The uri of the current document  to be reloaded.
   * @param aReloadFlags  Flags that indicate how the document is to be 
   *                      refreshed. For example, from cache or bypassing
   *                      cache and/or Proxy server. 
   * @return aReturn      A boolean flag returned by the listener to indicate 
   *                      if the reload operation is to be aborted or continued.
   *                      If the listener returns 'true', it indicates that the 
   *                      reload operation can be continued. If the listener
   *                      returns 'false', then the reload operation will be aborted.
   *                      This is a mechanism for the listener to control user's 
   *                      operations with history.
   * @see  nsIWebNavigation
   *  
   */
  /* boolean OnHistoryReload (in nsIURI aReloadURI, in unsigned long aReloadFlags); */
  nsresult OnHistoryReload(nsIURI aReloadURI, PRUint32 aReloadFlags, PRBool *_retval);

  /**
   * called to notify a listener when the user visits a page using the 'Go' menu
   * of the browser OR when the user attempts to go to a page at a particular index
   * through other means, like from javascript or using nsIWebNavigation
   *
   * @param aIndex        The index in history of the document to be loaded.
   * @param aGotoURI      The uri of the document to be loaded.
   * 
   * @return aReturn      A boolean flag  returned by the listener to
   *                      indicate if the GotoIndex operation is to be aborted 
   *                      or continued.  If the listener returns 'true', it indicates 
   *                      that the GotoIndex operation can be continued. If the listener
   *                      returns 'false', then the GotoIndex operation will be aborted.
   *                      This is a mechanism for the listener to control user's 
   *                      operations with history.
   * 
   */
  /* boolean OnHistoryGotoIndex (in long aIndex, in nsIURI aGotoURI); */
  nsresult OnHistoryGotoIndex(PRInt32 aIndex, nsIURI aGotoURI, PRBool *_retval);

  /**
   * called to notify a listener when documents are removed from session
   * history. Documents can be removed from session history for various 
   * reasons. For example to control the memory usage of the browser, to 
   * prevent users from loading documents from history, to erase evidence of
   * prior page loads etc... To purge documents from session history call
   * nsISHistory::PurgeHistory()
   *
   * @param aNumEntries   The number of documents to be removed from session history.
   * 
   * @return aReturn      A boolean flag returned by the listener to
   *                      indicate if the purge operation is to be aborted 
   *                      or continued.  If the listener returns 'true', it indicates 
   *                      that the purge operation can be continued. If the listener
   *                      returns 'false', then the purge operation will be aborted.
   *                      This is a mechanism for the listener to control user's 
   *                      operations with history.
   *
   * @note                While purging history, the older documents are removed
   *                      and newly loaded documents are kept. For example  if there
   *                      are 5 documents in history, and nsISHistory::PurgeHistory(3)
   *                      is called, then, document 1, 2 and 3 are removed from history
   *                      and most recently loaded document 4 and 5 are kept.
   * 
   */
  /* boolean OnHistoryPurge (in long aNumEntries); */
  nsresult OnHistoryPurge(PRInt32 aNumEntries, PRBool *_retval);

}

