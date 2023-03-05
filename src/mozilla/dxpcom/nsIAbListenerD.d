/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbListener.idl
 */

module mozilla.dxpcom.nsIAbListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbListener;


public import mozilla.dxpcom.nsIAbListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsIAbListener */
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
class nsIAbListenerD : public nsISupportsD {

  static const nsIID IID = NS_IABLISTENER_IID;


  alias nsIAbListener InnerType;

  this(nsIAbListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbListener opCast() {
    return inner;
  }

  void opAssign(nsIAbListener value) {
    inner = value;
  }

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
  void OnItemAdded(nsISupportsD parentDir, nsISupportsD item){
    nsresult __result = inner.OnItemAdded(parentDir ? cast(nsISupports)parentDir : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

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
  void OnItemRemoved(nsISupportsD parentDir, nsISupportsD item){
    nsresult __result = inner.OnItemRemoved(parentDir ? cast(nsISupports)parentDir : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

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
  void OnItemPropertyChanged(nsISupportsD item, char*property, PRUnichar*oldValue, PRUnichar*newValue){
    nsresult __result = inner.OnItemPropertyChanged(item ? cast(nsISupports)item : null, property, oldValue, newValue);
    CheckException(__result);
  }

private:
  nsIAbListener inner;

}

