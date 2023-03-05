/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlConnection.idl
 */

module mozilla.dxpcom.mozISqlConnectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlConnection;


public import mozilla.dxpcom.mozISqlConnectionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozISqlResult;

public import mozilla.dxpcom.mozISqlResultD;

public import mozilla.xpcom.mozISqlRequest;

public import mozilla.dxpcom.mozISqlRequestD;

public import mozilla.xpcom.mozISqlRequestObserver;

public import mozilla.dxpcom.mozISqlRequestObserverD;


/* starting wrapper class:    mozISqlConnection */
/**
 * A connection to a SQL database. This interface may be further extended
 * by a particular database implementation. The SQL service is responsible
 * for creating and maintaining connections, so there isn't a means to create
 * one directly via this interface.
 *
 * @status UNDER_REVIEW
 */
class mozISqlConnectionD : public nsISupportsD {

  static const nsIID IID = MOZISQLCONNECTION_IID;


  alias mozISqlConnection InnerType;

  this(mozISqlConnection intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlConnection opCast() {
    return inner;
  }

  void opAssign(mozISqlConnection value) {
    inner = value;
  }

  /**
   * A string holding the name and/or version info of the database.
   */
  /* readonly attribute AString serverVersion; */
  wchar[] ServerVersion(){
    scope auto value = new AString();
    nsresult __result = inner.GetServerVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The most recent error message.
   */
  /* readonly attribute AString errorMessage; */
  wchar[] ErrorMessage(){
    scope auto value = new AString();
    nsresult __result = inner.GetErrorMessage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The ID of the most recently added record.
   */
  /* readonly attribute long lastID; */
  PRInt32 LastID(){
    PRInt32 value;
    nsresult __result = inner.GetLastID(&value);
    CheckException(__result);
    return value;
  }

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
  void Init(wchar[] aHost, PRInt32 aPort, wchar[] aDatabase, wchar[] aUsername, wchar[] aPassword){
    scope auto _aHost = new AString(aHost);
    scope auto _aDatabase = new AString(aDatabase);
    scope auto _aUsername = new AString(aUsername);
    scope auto _aPassword = new AString(aPassword);
    nsresult __result = inner.Init(cast(nsAString*)_aHost, aPort, cast(nsAString*)_aDatabase, cast(nsAString*)_aUsername, cast(nsAString*)_aPassword);
    CheckException(__result);
  }

  /**
   * Execute an SQL query synchronously and return the query result.
   *
   * @param aQuery      the SQL string of the query to execute
   * @return            the result of the query
   */
  /* mozISqlResult executeQuery (in AString aQuery); */
  mozISqlResultD  ExecuteQuery(wchar[] aQuery){
    scope auto _aQuery = new AString(aQuery);
    mozISqlResult _retval;
    nsresult __result = inner.ExecuteQuery(cast(nsAString*)_aQuery, &_retval);
    CheckException(__result);
    return new mozISqlResultD(_retval);
  }

  /**
   * Execute an SQL update synchronously and return the number of updated
   * rows.
   *
   * @param aUpdate     the update to execute
   * @return            the result of the query
   */
  /* long executeUpdate (in AString aUpdate); */
  PRInt32 ExecuteUpdate(wchar[] aUpdate){
    scope auto _aUpdate = new AString(aUpdate);
    PRInt32 _retval;
    nsresult __result = inner.ExecuteUpdate(cast(nsAString*)_aUpdate, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  mozISqlRequestD  AsyncExecuteQuery(wchar[] aQuery, nsISupportsD aContext, mozISqlRequestObserverD aObserver){
    scope auto _aQuery = new AString(aQuery);
    mozISqlRequest _retval;
    nsresult __result = inner.AsyncExecuteQuery(cast(nsAString*)_aQuery, aContext ? cast(nsISupports)aContext : null, aObserver ? cast(mozISqlRequestObserver)aObserver : null, &_retval);
    CheckException(__result);
    return new mozISqlRequestD(_retval);
  }

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
  mozISqlRequestD  AsyncExecuteUpdate(wchar[] aQuery, nsISupportsD aContext, mozISqlRequestObserverD aObserver){
    scope auto _aQuery = new AString(aQuery);
    mozISqlRequest _retval;
    nsresult __result = inner.AsyncExecuteUpdate(cast(nsAString*)_aQuery, aContext ? cast(nsISupports)aContext : null, aObserver ? cast(mozISqlRequestObserver)aObserver : null, &_retval);
    CheckException(__result);
    return new mozISqlRequestD(_retval);
  }

  /**
   * Begin a transaction. Updates made during the transaction will not be
   * made permanent until it is committed using commitTransaction.
   */
  /* void beginTransaction (); */
  void BeginTransaction(){
    nsresult __result = inner.BeginTransaction();
    CheckException(__result);
  }

  /**
   * Commit the current transaction
   */
  /* void commitTransaction (); */
  void CommitTransaction(){
    nsresult __result = inner.CommitTransaction();
    CheckException(__result);
  }

  /**
   * Rollback (cancel) the current transaction
   */
  /* void rollbackTransaction (); */
  void RollbackTransaction(){
    nsresult __result = inner.RollbackTransaction();
    CheckException(__result);
  }

  /**
   * Return the primary keys of a given table.
   *
   * @param aSchema     the schema
   * @param aTable      the table name of the keys to retrieve
   * @return            the result which holds the keys
   */
  /* mozISqlResult getPrimaryKeys (in AString aSchema, in AString aTable); */
  mozISqlResultD  GetPrimaryKeys(wchar[] aSchema, wchar[] aTable){
    scope auto _aSchema = new AString(aSchema);
    scope auto _aTable = new AString(aTable);
    mozISqlResult _retval;
    nsresult __result = inner.GetPrimaryKeys(cast(nsAString*)_aSchema, cast(nsAString*)_aTable, &_retval);
    CheckException(__result);
    return new mozISqlResultD(_retval);
  }

private:
  mozISqlConnection inner;

}

