/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbListener.idl
 */

module mozilla.xpcom.nsIAbListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEnumerator;

alias PRUint32 abListenerNotifyFlagValue;


/* starting interface:    nsIAbListener */
const char[] NS_IABLISTENER_IID_STR = "8c5b1f3d-983a-4854-a0e2-3719dba1a920";

const nsIID NS_IABLISTENER_IID= 
  {0x8c5b1f3d, 0x983a, 0x4854, 
    [ 0xa0, 0xe2, 0x37, 0x19, 0xdb, 0xa1, 0xa9, 0x20 ]};

/**
  * nsIAbListener
  *
  * Implement this interface to receive notifications of address book
  * items being added, removed or changed with loaded address books.
  *
  * Subscribe to events by using nsIAddrBookSession. See nsIAddrBookSession.idl
  * for details of individual types of events that may be subscribed to.
  *
  */
extern(Windows)
interface nsIAbListener : nsISupports {
  static const char[] IID_STR = NS_IABLISTENER_IID_STR;
  static const nsIID IID = NS_IABLISTENER_IID;

  /**
   * Called when an address book item (book, card or list) is added
   *
   * @param       parentDir       The parent of the item being added.
   *
   * @param       item            The item being added to the database (a
   *                              directory or card).
   *
   */
  /* void onItemAdded (in nsISupports parentDir, in nsISupports item); */
  nsresult OnItemAdded(nsISupports parentDir, nsISupports item);

  /**
   * Called when an address book, mailing list or card is removed. This
   * is partially configurable when setting up the listener via
   * nsIAddrBookSession
   *
   * @param       parentDir       The parent of the item being removed, this
   *                              may be an empty directory in the case of a
   *                              top level address book.
   *
   * @param       item            The item being removed from the database.
   *
   */
  /* void onItemRemoved (in nsISupports parentDir, in nsISupports item); */
  nsresult OnItemRemoved(nsISupports parentDir, nsISupports item);

  /**
   * Called when an address book item is changed. Note the current
   * implementation means that property is either the literal string "DirName"
   * or null, with oldValue and newValue being specified if the property is
   * "DirName" otherwise they are null.
   *
   * @param       item            The item being updated (a directory or a
   *                              card).
   *
   * @param       property        The property of the item being changed.
   *                              
   * @param       oldValue        The old value of the item property being
   *                              changed if it is known, null otherwise.
   *                              
   * @param       newValue        The new value of the item property being
   *                              changed.
   *                              
   */
  /* void onItemPropertyChanged (in nsISupports item, in string property, in wstring oldValue, in wstring newValue); */
  nsresult OnItemPropertyChanged(nsISupports item, char *property, PRUnichar *oldValue, PRUnichar *newValue);

}

