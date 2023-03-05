/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlConnection.idl
 */

module mozilla.xpcom.mozISqlConnection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozISqlResult; /* forward declaration */

public import mozilla.xpcom.mozISqlRequest; /* forward declaration */

public import mozilla.xpcom.mozISqlRequestObserver; /* forward declaration */


/* starting interface:    mozISqlConnection */
const char[] MOZISQLCONNECTION_IID_STR = "f16397a4-1ecb-4e08-84f8-27750c04b779";

const nsIID MOZISQLCONNECTION_IID= 
  {0xf16397a4, 0x1ecb, 0x4e08, 
    [ 0x84, 0xf8, 0x27, 0x75, 0x0c, 0x04, 0xb7, 0x79 ]};

/**
 * A connection to a SQL database. This interface may be further extended
 * by a particular database implementation. The SQL service is responsible
 * for creating and maintaining connections, so there isn't a means to create
 * one directly via this interface.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface mozISqlConnection : nsISupports {
  static const char[] IID_STR = MOZISQLCONNECTION_IID_STR;
  static const nsIID IID = MOZISQLCONNECTION_IID;

  /**
   * A string holding the name and/or version info of the database.
   */
  /* readonly attribute AString serverVersion; */
  nsresult GetServerVersion(nsAString * aServerVersion);

  /**
   * The most recent error message.
   */
  /* readonly attribute AString errorMessage; */
  nsresult GetErrorMessage(nsAString * aErrorMessage);

  /**
   * The ID of the most recently added record.
   */
  /* readonly attribute long lastID; */
  nsresult GetLastID(PRInt32 *aLastID);

  /**
   * Set up the connection. This is called by the SQL service. There is no
   * need to call this method directly.
   *
   * @param aHost       the host name.
   * @param aPort       the port at which the host is listening.
   * @param aDatabase   the real database name to connect to.
   * @param aUsername   the username to connect as.
   * @param aPassword   the password to use in authentification phase.   
   */
  /* void init (in AString aHost, in long aPort, in AString aDatabase, in AString aUsername, in AString aPassword); */
  nsresult Init(nsAString * aHost, PRInt32 aPort, nsAString * aDatabase, nsAString * aUsername, nsAString * aPassword);

  /**
   * Execute an SQL query synchronously and return the query result.
   *
   * @param aQuery      the SQL string of the query to execute
   * @return            the result of the query
   */
  /* mozISqlResult executeQuery (in AString aQuery); */
  nsresult ExecuteQuery(nsAString * aQuery, mozISqlResult *_retval);

  /**
   * Execute an SQL update synchronously and return the number of updated
   * rows.
   *
   * @param aUpdate     the update to execute
   * @return            the result of the query
   */
  /* long executeUpdate (in AString aUpdate); */
  nsresult ExecuteUpdate(nsAString * aUpdate, PRInt32 *_retval);

  /**
   * Execute an SQL query asynchronously and return a request. An observer
   * may be used to track when the query has completed.
   *
   * @param aQuery      the SQL string of the query to execute
   * @param aContext    extra argument that will be passed to the observer
   * @param aObserver   observer that will be notified when the query is done
   * @return            a request object
   */
  /* mozISqlRequest asyncExecuteQuery (in AString aQuery, in nsISupports aContext, in mozISqlRequestObserver aObserver); */
  nsresult AsyncExecuteQuery(nsAString * aQuery, nsISupports aContext, mozISqlRequestObserver aObserver, mozISqlRequest *_retval);

  /**
   * Execute an SQL update asynchronously and return a request. An observer
   * may be used to track when the query has completed.
   *
   * @param aQuery      the SQL string of the update to execute
   * @param aContext    extra argument that will be passed to the observer
   * @param aObserver   observer that will be notified when the update is done
   * @return            a request object
   */
  /* mozISqlRequest asyncExecuteUpdate (in AString aQuery, in nsISupports aContext, in mozISqlRequestObserver aObserver); */
  nsresult AsyncExecuteUpdate(nsAString * aQuery, nsISupports aContext, mozISqlRequestObserver aObserver, mozISqlRequest *_retval);

  /**
   * Begin a transaction. Updates made during the transaction will not be
   * made permanent until it is committed using commitTransaction.
   */
  /* void beginTransaction (); */
  nsresult BeginTransaction();

  /**
   * Commit the current transaction
   */
  /* void commitTransaction (); */
  nsresult CommitTransaction();

  /**
   * Rollback (cancel) the current transaction
   */
  /* void rollbackTransaction (); */
  nsresult RollbackTransaction();

  /**
   * Return the primary keys of a given table.
   *
   * @param aSchema     the schema
   * @param aTable      the table name of the keys to retrieve
   * @return            the result which holds the keys
   */
  /* mozISqlResult getPrimaryKeys (in AString aSchema, in AString aTable); */
  nsresult GetPrimaryKeys(nsAString * aSchema, nsAString * aTable, mozISqlResult *_retval);

}

