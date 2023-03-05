/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionManager.idl
 */

module mozilla.xpcom.nsITransactionManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsITransaction;
public import mozilla.xpcom.nsITransactionList;
public import mozilla.xpcom.nsITransactionListener;


/* starting interface:    nsITransactionManager */
const char[] NS_ITRANSACTIONMANAGER_IID_STR = "58e330c2-7b48-11d2-98b9-00805f297d89";

const nsIID NS_ITRANSACTIONMANAGER_IID= 
  {0x58e330c2, 0x7b48, 0x11d2, 
    [ 0x98, 0xb9, 0x00, 0x80, 0x5f, 0x29, 0x7d, 0x89 ]};

extern(Windows)
interface nsITransactionManager : nsISupports {
  static const char[] IID_STR = NS_ITRANSACTIONMANAGER_IID_STR;
  static const nsIID IID = NS_ITRANSACTIONMANAGER_IID;

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
  nsresult DoTransaction(nsITransaction aTransaction);

  /**
   * Pops the topmost transaction on the undo stack, calls it's
   * undoTransaction() method, then pushes it on the redo stack.
   */
  /* void undoTransaction (); */
  nsresult UndoTransaction();

  /**
   * Pops the topmost transaction on the redo stack, calls it's
   * redoTransaction() method, then pushes it on the undo stack.
   */
  /* void redoTransaction (); */
  nsresult RedoTransaction();

  /**
   * Clears the undo and redo stacks.
   */
  /* void clear (); */
  nsresult Clear();

  /**
   * Turns on the transaction manager's batch mode, forcing all transactions
   * executed by the transaction manager's doTransaction() method to be
   * aggregated together until EndBatch() is called.  This mode allows an
   * application to execute and group together several independent transactions
   * so they can be undone with a single call to undoTransaction().
   */
  /* void beginBatch (); */
  nsresult BeginBatch();

  /**
   * Turns off the transaction manager's batch mode.
   */
  /* void endBatch (); */
  nsresult EndBatch();

  /**
   * The number of items on the undo stack.
   */
  /* readonly attribute long numberOfUndoItems; */
  nsresult GetNumberOfUndoItems(PRInt32 *aNumberOfUndoItems);

  /**
   * The number of items on the redo stack.
   */
  /* readonly attribute long numberOfRedoItems; */
  nsresult GetNumberOfRedoItems(PRInt32 *aNumberOfRedoItems);

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
  nsresult GetMaxTransactionCount(PRInt32 *aMaxTransactionCount);
  nsresult SetMaxTransactionCount(PRInt32 aMaxTransactionCount);

  /**
   * Returns an AddRef'd pointer to the transaction at the top of the
   * undo stack. Callers should be aware that this method could return
   * return a null in some implementations if there is a batch at the top
   * of the undo stack.
   */
  /* nsITransaction peekUndoStack (); */
  nsresult PeekUndoStack(nsITransaction *_retval);

  /**
   * Returns an AddRef'd pointer to the transaction at the top of the
   * redo stack. Callers should be aware that this method could return
   * return a null in some implementations if there is a batch at the top
   * of the redo stack.
   */
  /* nsITransaction peekRedoStack (); */
  nsresult PeekRedoStack(nsITransaction *_retval);

  /**
   * Returns the list of transactions on the undo stack. Note that the
   * transaction at the top of the undo stack will actually be at the
   * index 'n-1' in the list, where 'n' is the number of items in the list.
   */
  /* nsITransactionList getUndoList (); */
  nsresult GetUndoList(nsITransactionList *_retval);

  /**
   * Returns the list of transactions on the redo stack. Note that the
   * transaction at the top of the redo stack will actually be at the
   * index 'n-1' in the list, where 'n' is the number of items in the list.
   */
  /* nsITransactionList getRedoList (); */
  nsresult GetRedoList(nsITransactionList *_retval);

  /**
   * Adds a listener to the transaction manager's notification list. Listeners
   * are notified whenever a transaction is done, undone, or redone.
   * <P>
   * The listener's AddRef() method is called.
   * @param aListener the lister to add.
   */
  /* void AddListener (in nsITransactionListener aListener); */
  nsresult AddListener(nsITransactionListener aListener);

  /**
   * Removes a listener from the transaction manager's notification list.
   * <P>
   * The listener's Release() method is called.
   * @param aListener the lister to remove.
   */
  /* void RemoveListener (in nsITransactionListener aListener); */
  nsresult RemoveListener(nsITransactionListener aListener);

}

