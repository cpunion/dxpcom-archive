/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBookmarkTransactionManager.idl
 */

module mozilla.dxpcom.nsIBookmarkTransactionManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBookmarkTransactionManager;


public import mozilla.dxpcom.nsIBookmarkTransactionManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIRDFNode;

public import mozilla.dxpcom.nsIRDFNodeD;

public import mozilla.xpcom.nsIRDFLiteral;

public import mozilla.dxpcom.nsIRDFLiteralD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;


/* starting wrapper class:    nsIBookmarkTransactionManager */
/**
 * nsIBookmarkTransactionService is a service designed to handle
 * nsITransactions that correspond to changes in bookmarks.  It is here as a 
 * service so that we can keep the transactions around without holding onto 
 * the whole global js scope+window.
 */
class nsIBookmarkTransactionManagerD : public nsISupportsD {

  static const nsIID IID = NS_IBOOKMARKTRANSACTIONMANAGER_IID;


  alias nsIBookmarkTransactionManager InnerType;

  this(nsIBookmarkTransactionManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIBookmarkTransactionManager opCast() {
    return inner;
  }

  void opAssign(nsIBookmarkTransactionManager value) {
    inner = value;
  }

  /**
   * Performs a new transaction according to the specified parameters
   *
   * @param aType         the type of transaction being performed.  Must be one
   *                      of the three constants defined below
   * @param aAction       the action to be performed.  Expected values are:
   *                          import, insert, move, and remove (see bookmarks.js)
   * @param aItem         the rdf node the transaction is being performed on
   * @param aIndex        the index of the item in its RDF Container
   * @param aParent       the rdf-parent of aItem, that is, the folder it
   *                      should be inserted into.
   * @param aRemovedProps properties removed from the item in question
   * 
   */
  /* void createAndCommitTxn (in unsigned long aType, in AString aAction, in nsIRDFNode aItem, in long aIndex, in nsIRDFResource aParent, in unsigned long aPropCount, [array, size_is (aPropCount)] in nsIRDFLiteral aRemovedProps); */
  void CreateAndCommitTxn(PRUint32 aType, wchar[] aAction, nsIRDFNodeD aItem, PRInt32 aIndex, nsIRDFResourceD aParent, PRUint32 aPropCount, nsIRDFLiteralD *aRemovedProps){
    scope auto _aAction = new AString(aAction);
    nsresult __result = inner.CreateAndCommitTxn(aType, cast(nsAString*)_aAction, aItem ? cast(nsIRDFNode)aItem : null, aIndex, aParent ? cast(nsIRDFResource)aParent : null, aPropCount, aRemovedProps ? cast(nsIRDFLiteral)aRemovedProps : null);
    CheckException(__result);
  }

  /**
   * Constants corresponding to the 3 different types of transactions possible
   * Note that moving bookmarks is a combination of REMOVE+INSERT
   */
  enum { IMPORT = 0U }

  enum { INSERT = 1U }

  enum { REMOVE = 2U }

  /**
   * Signals the transaction manager that a series of transactions are going to
   * be performed, but that, for the purposes of undo and redo, they should all
   * be regarded as a single transaction.  That is, a single undo() call will 
   * undo all of the transactions created and committed between startBatch() and
   * endBatch().  See also nsITransactionManager::beginBatch
   *
   * @note if startBatch() is called multiple times.  The batch will not end
   *       endBatch() has been called the same number of times.
   */
  /* void startBatch (); */
  void StartBatch(){
    nsresult __result = inner.StartBatch();
    CheckException(__result);
  }

  /**
   * Ends the batch transaction in process, subject to the note above about
   * multiple, successive calls of startBatch().  See also
   * nsITransactionManager::endBatch
   */
  /* void endBatch (); */
  void EndBatch(){
    nsresult __result = inner.EndBatch();
    CheckException(__result);
  }

  /**
   * Undo the last transaction in the transaction manager's stack
   */
  /* void undo (); */
  void Undo(){
    nsresult __result = inner.Undo();
    CheckException(__result);
  }

  /**
   * Returns true if it is possible to undo a transaction at this time
   */
  /* boolean canUndo (); */
  PRBool CanUndo(){
    PRBool _retval;
    nsresult __result = inner.CanUndo(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Redo the last transaction
   */
  /* void redo (); */
  void Redo(){
    nsresult __result = inner.Redo();
    CheckException(__result);
  }

  /**
   * Returns true if it is possible to redo a transaction at this time
   */
  /* boolean canRedo (); */
  PRBool CanRedo(){
    PRBool _retval;
    nsresult __result = inner.CanRedo(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * A reference to the transaction manager for bookmarks
   */
  /* readonly attribute nsITransactionManager transactionManager; */
  nsITransactionManagerD  TransactionManager(){
    nsITransactionManager value;
    nsresult __result = inner.GetTransactionManager(&value);
    CheckException(__result);
    return new nsITransactionManagerD(value);
  }

private:
  nsIBookmarkTransactionManager inner;

}

