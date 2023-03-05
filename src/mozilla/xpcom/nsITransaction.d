/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransaction.idl
 */

module mozilla.xpcom.nsITransaction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITransaction */
const char[] NS_ITRANSACTION_IID_STR = "58e330c1-7b48-11d2-98b9-00805f297d89";

const nsIID NS_ITRANSACTION_IID= 
  {0x58e330c1, 0x7b48, 0x11d2, 
    [ 0x98, 0xb9, 0x00, 0x80, 0x5f, 0x29, 0x7d, 0x89 ]};

extern(Windows)
interface nsITransaction : nsISupports {
  static const char[] IID_STR = NS_ITRANSACTION_IID_STR;
  static const nsIID IID = NS_ITRANSACTION_IID;

  /**
   * Executes the transaction.
   */
  /* void doTransaction (); */
  nsresult DoTransaction();

  /**
   * Restores the state to what it was before the transaction was executed.
   */
  /* void undoTransaction (); */
  nsresult UndoTransaction();

  /**
   * Executes the transaction again. Can only be called on a transaction that
   * was previously undone.
   * <P>
   * In most cases, the redoTransaction() method will actually call the
   * doTransaction() method to execute the transaction again.
   */
  /* void redoTransaction (); */
  nsresult RedoTransaction();

  /**
   * The transaction's transient state. This attribute is checked by
   * the transaction manager after the transaction's Execute() method is called.
   * If the transient state is false, a reference to the transaction is
   * held by the transaction manager so that the transactions' undoTransaction()
   * and redoTransaction() methods can be called. If the transient state is
   * true, the transaction manager returns immediately after the transaction's
   * doTransaction() method is called, no references to the transaction are
   * maintained. Transient transactions cannot be undone or redone by the
   * transaction manager.
   */
  /* readonly attribute boolean isTransient; */
  nsresult GetIsTransient(PRBool *aIsTransient);

  /**
   * Attempts to merge a transaction into "this" transaction. Both transactions
   * must be in their undo state, doTransaction() methods already called. The
   * transaction manager calls this method to coalesce a new transaction with
   * the transaction on the top of the undo stack.
   * This method returns a boolean value that indicates the merge result.
   * A true value indicates that the transactions were merged successfully,
   * a false value if the merge was not possible or failed. If true,
   * the transaction manager will Release() the new transacton instead of
   * pushing it on the undo stack.
   * @param aTransaction the previously executed transaction to merge.
   */
  /* boolean merge (in nsITransaction aTransaction); */
  nsresult Merge(nsITransaction aTransaction, PRBool *_retval);

}

