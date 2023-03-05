/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionList.idl
 */

module mozilla.dxpcom.nsITransactionListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransactionList;


public import mozilla.dxpcom.nsITransactionListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsITransaction;

public import mozilla.dxpcom.nsITransactionD;


/* starting wrapper class:    nsITransactionList */
class nsITransactionListD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSACTIONLIST_IID;


  alias nsITransactionList InnerType;

  this(nsITransactionList intr){
    super(intr);
    this.inner = intr;
  }

  nsITransactionList opCast() {
    return inner;
  }

  void opAssign(nsITransactionList value) {
    inner = value;
  }

  /**
   * The number of transactions contained in this list.
   */
  /* readonly attribute long numItems; */
  PRInt32 NumItems(){
    PRInt32 value;
    nsresult __result = inner.GetNumItems(&value);
    CheckException(__result);
    return value;
  }

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
  PRBool ItemIsBatch(PRInt32 aIndex){
    PRBool _retval;
    nsresult __result = inner.ItemIsBatch(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * getItem() returns the transaction at the given index in the list. Note that
   * a null can be returned here if the item is a batch. The transaction
   * returned is AddRef'd so it is up to the caller to Release the transaction
   * when it is done.
   * @param aIndex The index of the item in the list.
   */
  /* nsITransaction getItem (in long aIndex); */
  nsITransactionD  GetItem(PRInt32 aIndex){
    nsITransaction _retval;
    nsresult __result = inner.GetItem(aIndex, &_retval);
    CheckException(__result);
    return new nsITransactionD(_retval);
  }

  /**
   * getNumChildrenForItem() returns the number of child (auto-aggreated)
   * transactions the item at aIndex has.
   * @param aIndex The index of the item in the list.
   */
  /* long getNumChildrenForItem (in long aIndex); */
  PRInt32 GetNumChildrenForItem(PRInt32 aIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetNumChildrenForItem(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * getChildListForItem() returns the list of children associated with the
   * item at aIndex. Implementations may return null if there are no children,
   * or an empty list. The list returned is AddRef'd so it is up to the caller
   * to Release the transaction when it is done.
   * @param aIndex The index of the item in the list.
   */
  /* nsITransactionList getChildListForItem (in long aIndex); */
  nsITransactionListD  GetChildListForItem(PRInt32 aIndex){
    nsITransactionList _retval;
    nsresult __result = inner.GetChildListForItem(aIndex, &_retval);
    CheckException(__result);
    return new nsITransactionListD(_retval);
  }

private:
  nsITransactionList inner;

}

