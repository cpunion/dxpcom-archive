/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransactionListener.idl
 */

module mozilla.xpcom.nsITransactionListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITransaction; /* forward declaration */

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */


/* starting interface:    nsITransactionListener */
const char[] NS_ITRANSACTIONLISTENER_IID_STR = "58e330c4-7b48-11d2-98b9-00805f297d89";

const nsIID NS_ITRANSACTIONLISTENER_IID= 
  {0x58e330c4, 0x7b48, 0x11d2, 
    [ 0x98, 0xb9, 0x00, 0x80, 0x5f, 0x29, 0x7d, 0x89 ]};

/**
 * The nsITransactionListener interface.
 * <P>
 * This interface is implemented by an object that tracks transactions.
 */
extern(Windows)
interface nsITransactionListener : nsISupports {
  static const char[] IID_STR = NS_ITRANSACTIONLISTENER_IID_STR;
  static const nsIID IID = NS_ITRANSACTIONLISTENER_IID;

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
  nsresult WillDo(nsITransactionManager aManager, nsITransaction aTransaction, PRBool *_retval);

  /**
   * Called after a transaction manager calls the doTransaction() method of
   * a transaction.
   * @param aManager the transaction manager that did the transaction.
   * @param aTransaction the transaction that was executed.
   * @param aDoResult the nsresult returned after executing
   * the transaction.
   */
  /* void didDo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aDoResult); */
  nsresult DidDo(nsITransactionManager aManager, nsITransaction aTransaction, nsresult aDoResult);

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
  nsresult WillUndo(nsITransactionManager aManager, nsITransaction aTransaction, PRBool *_retval);

  /**
   * Called after a transaction manager calls the Undo() method of
   * a transaction.
   * @param aManager the transaction manager undoing the transaction.
   * @param aTransaction the transaction being undone.
   * @param aUndoResult the nsresult returned after undoing the transaction.
   */
  /* void didUndo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aUndoResult); */
  nsresult DidUndo(nsITransactionManager aManager, nsITransaction aTransaction, nsresult aUndoResult);

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
  nsresult WillRedo(nsITransactionManager aManager, nsITransaction aTransaction, PRBool *_retval);

  /**
   * Called after a transaction manager calls the Redo() method of
   * a transaction.
   * @param aManager the transaction manager redoing the transaction.
   * @param aTransaction the transaction being redone.
   * @param aRedoResult the nsresult returned after redoing the transaction.
   */
  /* void didRedo (in nsITransactionManager aManager, in nsITransaction aTransaction, in nsresult aRedoResult); */
  nsresult DidRedo(nsITransactionManager aManager, nsITransaction aTransaction, nsresult aRedoResult);

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
  nsresult WillBeginBatch(nsITransactionManager aManager, PRBool *_retval);

  /**
   * Called after a transaction manager begins a batch.
   * @param aManager the transaction manager that began a batch.
   * @param aResult the nsresult returned after beginning a batch.
   */
  /* void didBeginBatch (in nsITransactionManager aManager, in nsresult aResult); */
  nsresult DidBeginBatch(nsITransactionManager aManager, nsresult aResult);

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
  nsresult WillEndBatch(nsITransactionManager aManager, PRBool *_retval);

  /**
   * Called after a transaction manager ends a batch.
   * @param aManager the transaction manager ending a batch.
   * @param aResult the nsresult returned after ending a batch.
   */
  /* void didEndBatch (in nsITransactionManager aManager, in nsresult aResult); */
  nsresult DidEndBatch(nsITransactionManager aManager, nsresult aResult);

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
  nsresult WillMerge(nsITransactionManager aManager, nsITransaction aTopTransaction, nsITransaction aTransactionToMerge, PRBool *_retval);

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
  nsresult DidMerge(nsITransactionManager aManager, nsITransaction aTopTransaction, nsITransaction aTransactionToMerge, PRBool aDidMerge, nsresult aMergeResult);

}

