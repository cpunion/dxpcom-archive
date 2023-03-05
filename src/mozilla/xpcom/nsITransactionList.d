/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionList.idl
 */

module mozilla.xpcom.nsITransactionList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITransaction; /* forward declaration */


/* starting interface:    nsITransactionList */
const char[] NS_ITRANSACTIONLIST_IID_STR = "97f863f3-f886-11d4-9d39-0060b0f8baff";

const nsIID NS_ITRANSACTIONLIST_IID= 
  {0x97f863f3, 0xf886, 0x11d4, 
    [ 0x9d, 0x39, 0x00, 0x60, 0xb0, 0xf8, 0xba, 0xff ]};

extern(Windows)
interface nsITransactionList : nsISupports {
  static const char[] IID_STR = NS_ITRANSACTIONLIST_IID_STR;
  static const nsIID IID = NS_ITRANSACTIONLIST_IID;

  /**
   * The number of transactions contained in this list.
   */
  /* readonly attribute long numItems; */
  nsresult GetNumItems(PRInt32 *aNumItems);

  /**
   * itemIsBatch() returns true if the item at aIndex is a batch. Note that
   * currently there is no requirement for a TransactionManager implementation
   * to associate a toplevel nsITransaction with a batch so it is possible for
   * itemIsBatch() to return true and getItem() to return null. However, you
   * can still access the transactions contained in the batch with a call to
   * getChildListForItem().
   * @param aIndex The index of the item in the list.
   */
  /* boolean itemIsBatch (in long aIndex); */
  nsresult ItemIsBatch(PRInt32 aIndex, PRBool *_retval);

  /**
   * getItem() returns the transaction at the given index in the list. Note that
   * a null can be returned here if the item is a batch. The transaction
   * returned is AddRef'd so it is up to the caller to Release the transaction
   * when it is done.
   * @param aIndex The index of the item in the list.
   */
  /* nsITransaction getItem (in long aIndex); */
  nsresult GetItem(PRInt32 aIndex, nsITransaction *_retval);

  /**
   * getNumChildrenForItem() returns the number of child (auto-aggreated)
   * transactions the item at aIndex has.
   * @param aIndex The index of the item in the list.
   */
  /* long getNumChildrenForItem (in long aIndex); */
  nsresult GetNumChildrenForItem(PRInt32 aIndex, PRInt32 *_retval);

  /**
   * getChildListForItem() returns the list of children associated with the
   * item at aIndex. Implementations may return null if there are no children,
   * or an empty list. The list returned is AddRef'd so it is up to the caller
   * to Release the transaction when it is done.
   * @param aIndex The index of the item in the list.
   */
  /* nsITransactionList getChildListForItem (in long aIndex); */
  nsresult GetChildListForItem(PRInt32 aIndex, nsITransactionList *_retval);

}

