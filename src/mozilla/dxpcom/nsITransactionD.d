/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransaction.idl
 */

module mozilla.dxpcom.nsITransactionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransaction;


public import mozilla.dxpcom.nsITransactionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITransaction */
class nsITransactionD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSACTION_IID;


  alias nsITransaction InnerType;

  this(nsITransaction intr){
    super(intr);
    this.inner = intr;
  }

  nsITransaction opCast() {
    return inner;
  }

  void opAssign(nsITransaction value) {
    inner = value;
  }

  /**
   * Executes the transaction.
   */
  /* void doTransaction (); */
  void DoTransaction(){
    nsresult __result = inner.DoTransaction();
    CheckException(__result);
  }

  /**
   * Restores the state to what it was before the transaction was executed.
   */
  /* void undoTransaction (); */
  void UndoTransaction(){
    nsresult __result = inner.UndoTransaction();
    CheckException(__result);
  }

  /**
   * Executes the transaction again. Can only be called on a transaction that
   * was previously undone.
   * <P>
   * In most cases, the redoTransaction() method will actually call the
   * doTransaction() method to execute the transaction again.
   */
  /* void redoTransaction (); */
  void RedoTransaction(){
    nsresult __result = inner.RedoTransaction();
    CheckException(__result);
  }

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
  PRBool IsTransient(){
    PRBool value;
    nsresult __result = inner.GetIsTransient(&value);
    CheckException(__result);
    return value;
  }

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
  PRBool Merge(nsITransactionD aTransaction){
    PRBool _retval;
    nsresult __result = inner.Merge(aTransaction ? cast(nsITransaction)aTransaction : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsITransaction inner;

}

