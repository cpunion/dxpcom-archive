/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageConnection.idl
 */

module mozilla.xpcom.mozIStorageConnection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozIStorageFunction; /* forward declaration */

public import mozilla.xpcom.mozIStorageStatement; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    mozIStorageConnection */
const char[] MOZISTORAGECONNECTION_IID_STR = "77015f88-bfc2-4669-b1c3-cc19fb07cd4e";

const nsIID MOZISTORAGECONNECTION_IID= 
  {0x77015f88, 0xbfc2, 0x4669, 
    [ 0xb1, 0xc3, 0xcc, 0x19, 0xfb, 0x07, 0xcd, 0x4e ]};

/**
 * mozIStorageConnection represents a database connection attached to
 * a specific file or to the in-memory data storage.  It is the
 * primary interface for interacting with a database, including
 * creating prepared statements, executing SQL, and examining database
 * errors.
 */
extern(Windows)
interface mozIStorageConnection : nsISupports {
  static const char[] IID_STR = MOZISTORAGECONNECTION_IID_STR;
  static const nsIID IID = MOZISTORAGECONNECTION_IID;

  /**
   * whether the database is open or not
   */
  /* readonly attribute boolean connectionReady; */
  nsresult GetConnectionReady(PRBool *aConnectionReady);

  /**
   * The current database nsIFile.  Null if the database
   * connection refers to an in-memory database.
   */
  /* readonly attribute nsIFile databaseFile; */
  nsresult GetDatabaseFile(nsIFile  *aDatabaseFile);

  /**
   * lastInsertRowID returns the row ID from the last INSERT
   * operation.
   */
  /* readonly attribute long long lastInsertRowID; */
  nsresult GetLastInsertRowID(PRInt64 *aLastInsertRowID);

  /**
   * The last error SQLite error code.
   */
  /* readonly attribute long lastError; */
  nsresult GetLastError(PRInt32 *aLastError);

  /**
   * The last SQLite error as a string (in english, straight from the
   * sqlite library).
   */
  /* readonly attribute AUTF8String lastErrorString; */
  nsresult GetLastErrorString(nsACString * aLastErrorString);

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
  nsresult CreateStatement(nsACString * aSQLStatement, mozIStorageStatement *_retval);

  /**
   * Execute a SQL expression, expecting no arguments.
   *
   * @param aSQLStatement  The SQL statement to execute
   */
  /* void executeSimpleSQL (in AUTF8String aSQLStatement); */
  nsresult ExecuteSimpleSQL(nsACString * aSQLStatement);

  /**
   * Check if the given table exists.
   *
   * @param aTableName   The table to check
   * @returns TRUE if table exists, FALSE otherwise.
   */
  /* boolean tableExists (in AUTF8String aTableName); */
  nsresult TableExists(nsACString * aTableName, PRBool *_retval);

  /**
   * Check if the given index exists.
   *
   * @param aIndexName   The index to check
   * @returns TRUE if the index exists, FALSE otherwise.
   */
  /* boolean indexExists (in AUTF8String aIndexName); */
  nsresult IndexExists(nsACString * aIndexName, PRBool *_retval);

  /**
   * Returns true if a transaction is active on this connection.
   */
  /* readonly attribute boolean transactionInProgress; */
  nsresult GetTransactionInProgress(PRBool *aTransactionInProgress);

  /**
   * Begin a new transaction.  sqlite default transactions are deferred.
   * If a transaction is active, throws an error.
   */
  /* void beginTransaction (); */
  nsresult BeginTransaction();

  /**
   * Begins a new transaction with the given type.
   */
  enum { TRANSACTION_DEFERRED = 0 };

  enum { TRANSACTION_IMMEDIATE = 1 };

  enum { TRANSACTION_EXCLUSIVE = 2 };

  /* void beginTransactionAs (in PRInt32 transactionType); */
  nsresult BeginTransactionAs(PRInt32 transactionType);

  /**
   * Commits the current transaction.  If no transaction is active,
   * @throws NS_ERROR_STORAGE_NO_TRANSACTION.
   */
  /* void commitTransaction (); */
  nsresult CommitTransaction();

  /**
   * Rolls back the current transaction.  If no transaction is active,
   * @throws NS_ERROR_STORAGE_NO_TRANSACTION.
   */
  /* void rollbackTransaction (); */
  nsresult RollbackTransaction();

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
  nsresult CreateTable(char *aTableName, char *aTableSchema);

  /**
   * Create a new SQLite function
   */
  /* void createFunction (in string aFunctionName, in long aNumArguments, in mozIStorageFunction aFunction); */
  nsresult CreateFunction(char *aFunctionName, PRInt32 aNumArguments, mozIStorageFunction aFunction);

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
  nsresult Preload();

}

