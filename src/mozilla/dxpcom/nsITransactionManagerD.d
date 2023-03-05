/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionManager.idl
 */

module mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransactionManager;


public import mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsITransaction;
public import mozilla.dxpcom.nsITransactionD;
public import mozilla.xpcom.nsITransactionList;
public import mozilla.dxpcom.nsITransactionListD;
public import mozilla.xpcom.nsITransactionListener;
public import mozilla.dxpcom.nsITransactionListenerD;


/* starting wrapper class:    nsITransactionManager */
class nsITransactionManagerD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSACTIONMANAGER_IID;


  alias nsITransactionManager InnerType;

  this(nsITransactionManager intr){
    super(intr);
    this.inner = intr;
  }

  nsITransactionManager opCast() {
    return inner;
  }

  void opAssign(nsITransactionManager value) {
    inner = value;
  }

  /**
 * The nsITransactionManager interface.
 * <P>
 * This interface is implemented by an object that wants to
 * manage/track transactions.
 */
/**
   * Calls a transaction's doTransaction() method, then pushes it on the
   * undo stack.
   * <P>
   * This method calls the transaction's AddRef() method.
   * The transaction's Release() method will be called when the undo or redo
   * stack is pruned or when the transaction manager is destroyed.
   * @param aTransaction the transaction to do.
   */
  /* void doTransaction (in nsITransaction aTransaction); */
  void DoTransaction(nsITransactionD aTransaction){
    nsresult __result = inner.DoTransaction(aTransaction ? cast(nsITransaction)aTransaction : null);
    CheckException(__result);
  }

  /**
   * Pops the topmost transaction on the undo stack, calls it's
   * undoTransaction() method, then pushes it on the redo stack.
   */
  /* void undoTransaction (); */
  void UndoTransaction(){
    nsresult __result = inner.UndoTransaction();
    CheckException(__result);
  }

  /**
   * Pops the topmost transaction on the redo stack, calls it's
   * redoTransaction() method, then pushes it on the undo stack.
   */
  /* void redoTransaction (); */
  void RedoTransaction(){
    nsresult __result = inner.RedoTransaction();
    CheckException(__result);
  }

  /**
   * Clears the undo and redo stacks.
   */
  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /**
   * Turns on the transaction manager's batch mode, forcing all transactions
   * executed by the transaction manager's doTransaction() method to be
   * aggregated together until EndBatch() is called.  This mode allows an
   * application to execute and group together several independent transactions
   * so they can be undone with a single call to undoTransaction().
   */
  /* void beginBatch (); */
  void BeginBatch(){
    nsresult __result = inner.BeginBatch();
    CheckException(__result);
  }

  /**
   * Turns off the transaction manager's batch mode.
   */
  /* void endBatch (); */
  void EndBatch(){
    nsresult __result = inner.EndBatch();
    CheckException(__result);
  }

  /**
   * The number of items on the undo stack.
   */
  /* readonly attribute long numberOfUndoItems; */
  PRInt32 NumberOfUndoItems(){
    PRInt32 value;
    nsresult __result = inner.GetNumberOfUndoItems(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The number of items on the redo stack.
   */
  /* readonly attribute long numberOfRedoItems; */
  PRInt32 NumberOfRedoItems(){
    PRInt32 value;
    nsresult __result = inner.GetNumberOfRedoItems(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Sets the maximum number of transaction items the transaction manager will
   * maintain at any time. This is commonly referred to as the number of levels
   * of undo.
   * @param aMaxCount A value of -1 means no limit. A value of zero means the
   * transaction manager will execute each transaction, then immediately release
   * all references it has to the transaction without pushing it on the undo
   * stack. A value greater than zero indicates the max number of transactions
   * that can exist at any time on both the undo and redo stacks. This method
   * will prune the necessary number of transactions on the undo and redo
   * stacks if the value specified is less than the number of items that exist
   * on both the undo and redo stacks.
   */
  /* attribute long maxTransactionCount; */
  PRInt32 MaxTransactionCount(){
    PRInt32 value;
    nsresult __result = inner.GetMaxTransactionCount(&value);
    CheckException(__result);
    return value;
  }
  void MaxTransactionCount(PRInt32 aMaxTransactionCount){
    nsresult __result = inner.SetMaxTransactionCount(aMaxTransactionCount);
    CheckException(__result);
  }

  /**
   * Returns an AddRef'd pointer to the transaction at the top of the
   * undo stack. Callers should be aware that this method could return
   * return a null in some implementations if there is a batch at the top
   * of the undo stack.
   */
  /* nsITransaction peekUndoStack (); */
  nsITransactionD  PeekUndoStack(){
    nsITransaction _retval;
    nsresult __result = inner.PeekUndoStack(&_retval);
    CheckException(__result);
    return new nsITransactionD(_retval);
  }

  /**
   * Returns an AddRef'd pointer to the transaction at the top of the
   * redo stack. Callers should be aware that this method could return
   * return a null in some implementations if there is a batch at the top
   * of the redo stack.
   */
  /* nsITransaction peekRedoStack (); */
  nsITransactionD  PeekRedoStack(){
    nsITransaction _retval;
    nsresult __result = inner.PeekRedoStack(&_retval);
    CheckException(__result);
    return new nsITransactionD(_retval);
  }

  /**
   * Returns the list of transactions on the undo stack. Note that the
   * transaction at the top of the undo stack will actually be at the
   * index 'n-1' in the list, where 'n' is the number of items in the list.
   */
  /* nsITransactionList getUndoList (); */
  nsITransactionListD  GetUndoList(){
    nsITransactionList _retval;
    nsresult __result = inner.GetUndoList(&_retval);
    CheckException(__result);
    return new nsITransactionListD(_retval);
  }

  /**
   * Returns the list of transactions on the redo stack. Note that the
   * transaction at the top of the redo stack will actually be at the
   * index 'n-1' in the list, where 'n' is the number of items in the list.
   */
  /* nsITransactionList getRedoList (); */
  nsITransactionListD  GetRedoList(){
    nsITransactionList _retval;
    nsresult __result = inner.GetRedoList(&_retval);
    CheckException(__result);
    return new nsITransactionListD(_retval);
  }

  /**
   * Adds a listener to the transaction manager's notification list. Listeners
   * are notified whenever a transaction is done, undone, or redone.
   * <P>
   * The listener's AddRef() method is called.
   * @param aListener the lister to add.
   */
  /* void AddListener (in nsITransactionListener aListener); */
  void AddListener(nsITransactionListenerD aListener){
    nsresult __result = inner.AddListener(aListener ? cast(nsITransactionListener)aListener : null);
    CheckException(__result);
  }

  /**
   * Removes a listener from the transaction manager's notification list.
   * <P>
   * The listener's Release() method is called.
   * @param aListener the lister to remove.
   */
  /* void RemoveListener (in nsITransactionListener aListener); */
  void RemoveListener(nsITransactionListenerD aListener){
    nsresult __result = inner.RemoveListener(aListener ? cast(nsITransactionListener)aListener : null);
    CheckException(__result);
  }

private:
  nsITransactionManager inner;

}

