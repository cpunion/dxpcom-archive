/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBookmarkTransactionManager.idl
 */

module mozilla.xpcom.nsIBookmarkTransactionManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsIRDFNode; /* forward declaration */

public import mozilla.xpcom.nsIRDFLiteral; /* forward declaration */

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */


/* starting interface:    nsIBookmarkTransactionManager */
const char[] NS_IBOOKMARKTRANSACTIONMANAGER_IID_STR = "f6305e79-1760-4991-ab4d-a42db60f0e67";

const nsIID NS_IBOOKMARKTRANSACTIONMANAGER_IID= 
  {0xf6305e79, 0x1760, 0x4991, 
    [ 0xab, 0x4d, 0xa4, 0x2d, 0xb6, 0x0f, 0x0e, 0x67 ]};

/**
 * nsIBookmarkTransactionService is a service designed to handle
 * nsITransactions that correspond to changes in bookmarks.  It is here as a 
 * service so that we can keep the transactions around without holding onto 
 * the whole global js scope+window.
 */
extern(Windows)
interface nsIBookmarkTransactionManager : nsISupports {
  static const char[] IID_STR = NS_IBOOKMARKTRANSACTIONMANAGER_IID_STR;
  static const nsIID IID = NS_IBOOKMARKTRANSACTIONMANAGER_IID;

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
  nsresult CreateAndCommitTxn(PRUint32 aType, nsAString * aAction, nsIRDFNode aItem, PRInt32 aIndex, nsIRDFResource aParent, PRUint32 aPropCount, nsIRDFLiteral *aRemovedProps);

  /**
   * Constants corresponding to the 3 different types of transactions possible
   * Note that moving bookmarks is a combination of REMOVE+INSERT
   */
  enum { IMPORT = 0U };

  enum { INSERT = 1U };

  enum { REMOVE = 2U };

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
  nsresult StartBatch();

  /**
   * Ends the batch transaction in process, subject to the note above about
   * multiple, successive calls of startBatch().  See also
   * nsITransactionManager::endBatch
   */
  /* void endBatch (); */
  nsresult EndBatch();

  /**
   * Undo the last transaction in the transaction manager's stack
   */
  /* void undo (); */
  nsresult Undo();

  /**
   * Returns true if it is possible to undo a transaction at this time
   */
  /* boolean canUndo (); */
  nsresult CanUndo(PRBool *_retval);

  /**
   * Redo the last transaction
   */
  /* void redo (); */
  nsresult Redo();

  /**
   * Returns true if it is possible to redo a transaction at this time
   */
  /* boolean canRedo (); */
  nsresult CanRedo(PRBool *_retval);

  /**
   * A reference to the transaction manager for bookmarks
   */
  /* readonly attribute nsITransactionManager transactionManager; */
  nsresult GetTransactionManager(nsITransactionManager  *aTransactionManager);

}

