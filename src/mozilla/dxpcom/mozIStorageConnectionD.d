/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageConnection.idl
 */

module mozilla.dxpcom.mozIStorageConnectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageConnection;


public import mozilla.dxpcom.mozIStorageConnectionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozIStorageFunction;

public import mozilla.dxpcom.mozIStorageFunctionD;

public import mozilla.xpcom.mozIStorageStatement;

public import mozilla.dxpcom.mozIStorageStatementD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    mozIStorageConnection */
/**
 * mozIStorageConnection represents a database connection attached to
 * a specific file or to the in-memory data storage.  It is the
 * primary interface for interacting with a database, including
 * creating prepared statements, executing SQL, and examining database
 * errors.
 */
class mozIStorageConnectionD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGECONNECTION_IID;


  alias mozIStorageConnection InnerType;

  this(mozIStorageConnection intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageConnection opCast() {
    return inner;
  }

  void opAssign(mozIStorageConnection value) {
    inner = value;
  }

  /**
   * whether the database is open or not
   */
  /* readonly attribute boolean connectionReady; */
  PRBool ConnectionReady(){
    PRBool value;
    nsresult __result = inner.GetConnectionReady(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The current database nsIFile.  Null if the database
   * connection refers to an in-memory database.
   */
  /* readonly attribute nsIFile databaseFile; */
  nsIFileD  DatabaseFile(){
    nsIFile value;
    nsresult __result = inner.GetDatabaseFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * lastInsertRowID returns the row ID from the last INSERT
   * operation.
   */
  /* readonly attribute long long lastInsertRowID; */
  PRInt64 LastInsertRowID(){
    PRInt64 value;
    nsresult __result = inner.GetLastInsertRowID(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The last error SQLite error code.
   */
  /* readonly attribute long lastError; */
  PRInt32 LastError(){
    PRInt32 value;
    nsresult __result = inner.GetLastError(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The last SQLite error as a string (in english, straight from the
   * sqlite library).
   */
  /* readonly attribute AUTF8String lastErrorString; */
  char[] LastErrorString(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLastErrorString(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Create a mozIStorageStatement for the given SQL expression.  The
   * expression may use ? to indicate sequential numbered arguments,
   * or :name and $var to indicate named arguments.
   *
   * @param aSQLStatement  The SQL statement to execute
   *
   * @returns a new mozIStorageStatement
   */
  /* mozIStorageStatement createStatement (in AUTF8String aSQLStatement); */
  mozIStorageStatementD  CreateStatement(char[] aSQLStatement){
    scope auto _aSQLStatement = new ACString(aSQLStatement);
    mozIStorageStatement _retval;
    nsresult __result = inner.CreateStatement(cast(nsACString*)_aSQLStatement, &_retval);
    CheckException(__result);
    return new mozIStorageStatementD(_retval);
  }

  /**
   * Execute a SQL expression, expecting no arguments.
   *
   * @param aSQLStatement  The SQL statement to execute
   */
  /* void executeSimpleSQL (in AUTF8String aSQLStatement); */
  void ExecuteSimpleSQL(char[] aSQLStatement){
    scope auto _aSQLStatement = new ACString(aSQLStatement);
    nsresult __result = inner.ExecuteSimpleSQL(cast(nsACString*)_aSQLStatement);
    CheckException(__result);
  }

  /**
   * Check if the given table exists.
   *
   * @param aTableName   The table to check
   * @returns TRUE if table exists, FALSE otherwise.
   */
  /* boolean tableExists (in AUTF8String aTableName); */
  PRBool TableExists(char[] aTableName){
    scope auto _aTableName = new ACString(aTableName);
    PRBool _retval;
    nsresult __result = inner.TableExists(cast(nsACString*)_aTableName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Check if the given index exists.
   *
   * @param aIndexName   The index to check
   * @returns TRUE if the index exists, FALSE otherwise.
   */
  /* boolean indexExists (in AUTF8String aIndexName); */
  PRBool IndexExists(char[] aIndexName){
    scope auto _aIndexName = new ACString(aIndexName);
    PRBool _retval;
    nsresult __result = inner.IndexExists(cast(nsACString*)_aIndexName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns true if a transaction is active on this connection.
   */
  /* readonly attribute boolean transactionInProgress; */
  PRBool TransactionInProgress(){
    PRBool value;
    nsresult __result = inner.GetTransactionInProgress(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Begin a new transaction.  sqlite default transactions are deferred.
   * If a transaction is active, throws an error.
   */
  /* void beginTransaction (); */
  void BeginTransaction(){
    nsresult __result = inner.BeginTransaction();
    CheckException(__result);
  }

  /**
   * Begins a new transaction with the given type.
   */
  enum { TRANSACTION_DEFERRED = 0 }

  enum { TRANSACTION_IMMEDIATE = 1 }

  enum { TRANSACTION_EXCLUSIVE = 2 }

  /* void beginTransactionAs (in PRInt32 transactionType); */
  void BeginTransactionAs(PRInt32 transactionType){
    nsresult __result = inner.BeginTransactionAs(transactionType);
    CheckException(__result);
  }

  /**
   * Commits the current transaction.  If no transaction is active,
   * @throws NS_ERROR_STORAGE_NO_TRANSACTION.
   */
  /* void commitTransaction (); */
  void CommitTransaction(){
    nsresult __result = inner.CommitTransaction();
    CheckException(__result);
  }

  /**
   * Rolls back the current transaction.  If no transaction is active,
   * @throws NS_ERROR_STORAGE_NO_TRANSACTION.
   */
  /* void rollbackTransaction (); */
  void RollbackTransaction(){
    nsresult __result = inner.RollbackTransaction();
    CheckException(__result);
  }

  /**
   * Create the table with the given name and schema.
   *
   * If the table already exists, NS_ERROR_FAILURE is thrown.
   * (XXX at some point in the future it will check if the schema is
   * the same as what is specified, but that doesn't happen currently.)
   *
   * @param aTableName the table name to be created, consisting of
   * [A-Za-z0-9_], and beginning with a letter.
   *
   * @param aTableSchema the schema of the table; what would normally
   * go between the parens in a CREATE TABLE statement: e.g., "foo
   * INTEGER, bar STRING".
   *
   * @throws NS_ERROR_FAILURE if the table already exists or could not
   * be created for any other reason.
   *
   */
  /* void createTable (in string aTableName, in string aTableSchema); */
  void CreateTable(char*aTableName, char*aTableSchema){
    nsresult __result = inner.CreateTable(aTableName, aTableSchema);
    CheckException(__result);
  }

  /**
   * Create a new SQLite function
   */
  /* void createFunction (in string aFunctionName, in long aNumArguments, in mozIStorageFunction aFunction); */
  void CreateFunction(char*aFunctionName, PRInt32 aNumArguments, mozIStorageFunctionD aFunction){
    nsresult __result = inner.CreateFunction(aFunctionName, aNumArguments, aFunction ? cast(mozIStorageFunction)aFunction : null);
    CheckException(__result);
  }

  /**
   * This is used to preload the database cache. It loads pages from the
   * start of the database file until the memory cache (specified by
   * "PRAGMA cache_size=") is full or the entire file is read.
   *
   * The cache MUST be active on the database for this to work. This means
   * that you must have a transaction open on the connection, or have a
   * transaction open on another connection that shares the same pager cache.
   * This cached data will go away when the transaction is closed.
   *
   * This preload operation can dramatically speed up read operations because
   * the data is loaded as one large block. Normally, pages are read in on
   * demand, which can cause many disk seeks.
   */
  /* void preload (); */
  void Preload(){
    nsresult __result = inner.Preload();
    CheckException(__result);
  }

private:
  mozIStorageConnection inner;

}

