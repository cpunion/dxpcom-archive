/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionListener.idl
 */

module mozilla.dxpcom.nsITransactionListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransactionListener;


public import mozilla.dxpcom.nsITransactionListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsITransaction;

public import mozilla.dxpcom.nsITransactionD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;


/* starting wrapper class:    nsITransactionListener */
/**
 * The nsITransactionListener interface.
 * <P>
 * This interface is implemented by an object that tracks transactions.
 */
class nsITransactionListenerD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSACTIONLISTENER_IID;


  alias nsITransactionListener InnerType;

  this(nsITransactionListener intr){
    super(intr);
    this.inner = intr;
  }

  nsITransactionListener opCast() {
    return inner;
  }

  void opAssign(nsITransactionListener value) {
    inner = value;
  }

  /**
   * Called before a transaction manager calls a transaction's
   * doTransaction() method.
   * @param aManager the transaction manager doing the transaction.
   * @param aTransaction the transaction being executed.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error.
   */
  /* boolean willDo (in nsITransactionManager aManager, in nsITransaction aTransaction); */
  PRBool WillDo(nsITransactionManagerD aManager, nsITransactionD aTransaction){
    PRBool _retval;
    nsresult __result = inner.WillDo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager calls the doTransaction() method of
   * a transaction.
   * @param aManager the transaction manager that did the transaction.
   * @param aTransaction the transaction that was executed.
   * @param aDoResult the nsresult returned after executing
   * the transaction.
   */
  /* void didDo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aDoResult); */
  void DidDo(nsITransactionManagerD aManager, nsITransactionD aTransaction, nsresult aDoResult){
    nsresult __result = inner.DidDo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, aDoResult);
    CheckException(__result);
  }

  /**
   * Called before a transaction manager calls the Undo() method of
   * a transaction.
   * @param aManager the transaction manager undoing the transaction.
   * @param aTransaction the transaction being undone.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error. Note that listeners can also interrupt normal
   * control flow by throwing an nsresult that indicates an error.
   */
  /* boolean willUndo (in nsITransactionManager aManager, in nsITransaction aTransaction); */
  PRBool WillUndo(nsITransactionManagerD aManager, nsITransactionD aTransaction){
    PRBool _retval;
    nsresult __result = inner.WillUndo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager calls the Undo() method of
   * a transaction.
   * @param aManager the transaction manager undoing the transaction.
   * @param aTransaction the transaction being undone.
   * @param aUndoResult the nsresult returned after undoing the transaction.
   */
  /* void didUndo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aUndoResult); */
  void DidUndo(nsITransactionManagerD aManager, nsITransactionD aTransaction, nsresult aUndoResult){
    nsresult __result = inner.DidUndo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, aUndoResult);
    CheckException(__result);
  }

  /**
   * Called before a transaction manager calls the Redo() method of
   * a transaction.
   * @param aManager the transaction manager redoing the transaction.
   * @param aTransaction the transaction being redone.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error. Note that listeners can also interrupt normal
   * control flow by throwing an nsresult that indicates an error.
   */
  /* boolean willRedo (in nsITransactionManager aManager, in nsITransaction aTransaction); */
  PRBool WillRedo(nsITransactionManagerD aManager, nsITransactionD aTransaction){
    PRBool _retval;
    nsresult __result = inner.WillRedo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager calls the Redo() method of
   * a transaction.
   * @param aManager the transaction manager redoing the transaction.
   * @param aTransaction the transaction being redone.
   * @param aRedoResult the nsresult returned after redoing the transaction.
   */
  /* void didRedo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aRedoResult); */
  void DidRedo(nsITransactionManagerD aManager, nsITransactionD aTransaction, nsresult aRedoResult){
    nsresult __result = inner.DidRedo(aManager ? cast(nsITransactionManager)aManager : null, aTransaction ? cast(nsITransaction)aTransaction : null, aRedoResult);
    CheckException(__result);
  }

  /**
   * Called before a transaction manager begins a batch.
   * @param aManager the transaction manager beginning a batch.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error. Note that listeners can also interrupt normal
   * control flow by throwing an nsresult that indicates an error.
   */
  /* boolean willBeginBatch (in nsITransactionManager aManager); */
  PRBool WillBeginBatch(nsITransactionManagerD aManager){
    PRBool _retval;
    nsresult __result = inner.WillBeginBatch(aManager ? cast(nsITransactionManager)aManager : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager begins a batch.
   * @param aManager the transaction manager that began a batch.
   * @param aResult the nsresult returned after beginning a batch.
   */
  /* void didBeginBatch (in nsITransactionManager aManager, in nsresult aResult); */
  void DidBeginBatch(nsITransactionManagerD aManager, nsresult aResult){
    nsresult __result = inner.DidBeginBatch(aManager ? cast(nsITransactionManager)aManager : null, aResult);
    CheckException(__result);
  }

  /**
   * Called before a transaction manager ends a batch.
   * @param aManager the transaction manager ending a batch.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error. Note that listeners can also interrupt normal
   * control flow by throwing an nsresult that indicates an error.
   */
  /* boolean willEndBatch (in nsITransactionManager aManager); */
  PRBool WillEndBatch(nsITransactionManagerD aManager){
    PRBool _retval;
    nsresult __result = inner.WillEndBatch(aManager ? cast(nsITransactionManager)aManager : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager ends a batch.
   * @param aManager the transaction manager ending a batch.
   * @param aResult the nsresult returned after ending a batch.
   */
  /* void didEndBatch (in nsITransactionManager aManager, in nsresult aResult); */
  void DidEndBatch(nsITransactionManagerD aManager, nsresult aResult){
    nsresult __result = inner.DidEndBatch(aManager ? cast(nsITransactionManager)aManager : null, aResult);
    CheckException(__result);
  }

  /**
   * Called before a transaction manager tries to merge
   * a transaction, that was just executed, with the
   * transaction at the top of the undo stack.
   * @param aManager the transaction manager ending a batch.
   * @param aTopTransaction the transaction at the top of the undo stack.
   * @param aTransactionToMerge the transaction to merge.
   * @result boolean value returned by listener which indicates
   * it's desire to interrupt normal control flow. Listeners should
   * return true if they want to interrupt normal control flow, without
   * throwing an error. Note that listeners can also interrupt normal
   * control flow by throwing an nsresult that indicates an error.
   */
  /* boolean willMerge (in nsITransactionManager aManager, in nsITransaction aTopTransaction, in nsITransaction aTransactionToMerge); */
  PRBool WillMerge(nsITransactionManagerD aManager, nsITransactionD aTopTransaction, nsITransactionD aTransactionToMerge){
    PRBool _retval;
    nsresult __result = inner.WillMerge(aManager ? cast(nsITransactionManager)aManager : null, aTopTransaction ? cast(nsITransaction)aTopTransaction : null, aTransactionToMerge ? cast(nsITransaction)aTransactionToMerge : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called after a transaction manager tries to merge
   * a transaction, that was just executed, with the
   * transaction at the top of the undo stack.
   * @param aManager the transaction manager ending a batch.
   * @param aTopTransaction the transaction at the top of the undo stack.
   * @param aTransactionToMerge the transaction to merge.
   * @param aDidMerge true if transaction was merged, else false.
   * @param aMergeResult the nsresult returned after the merge attempt.
   * @param aInterrupt listeners should set this to PR_TRUE if they
   * want to interrupt normal control flow, without throwing an error.
   */
  /* void didMerge (in nsITransactionManager aManager, in nsITransaction aTopTransaction, in nsITransaction aTransactionToMerge, in boolean aDidMerge, in nsresult aMergeResult); */
  void DidMerge(nsITransactionManagerD aManager, nsITransactionD aTopTransaction, nsITransactionD aTransactionToMerge, PRBool aDidMerge, nsresult aMergeResult){
    nsresult __result = inner.DidMerge(aManager ? cast(nsITransactionManager)aManager : null, aTopTransaction ? cast(nsITransaction)aTopTransaction : null, aTransactionToMerge ? cast(nsITransaction)aTransactionToMerge : null, aDidMerge, aMergeResult);
    CheckException(__result);
  }

private:
  nsITransactionListener inner;

}

