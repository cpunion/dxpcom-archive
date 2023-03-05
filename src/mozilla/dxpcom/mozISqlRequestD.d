/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlRequest.idl
 */

module mozilla.dxpcom.mozISqlRequestD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlRequest;


public import mozilla.dxpcom.mozISqlRequestD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozISqlConnection;

public import mozilla.dxpcom.mozISqlConnectionD;

public import mozilla.xpcom.mozISqlRequestObserver;

public import mozilla.dxpcom.mozISqlRequestObserverD;

public import mozilla.xpcom.mozISqlResult;

public import mozilla.dxpcom.mozISqlResultD;


/* starting wrapper class:    mozISqlRequest */
/**
 * A request interface used during an asynchronous SQL query or update operation.
 *
 * @status UNDER_REVIEW
 */
class mozISqlRequestD : public nsISupportsD {

  static const nsIID IID = MOZISQLREQUEST_IID;


  alias mozISqlRequest InnerType;

  this(mozISqlRequest intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlRequest opCast() {
    return inner;
  }

  void opAssign(mozISqlRequest value) {
    inner = value;
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
   * The result of the operation.
   */
  /* readonly attribute mozISqlResult result; */
  mozISqlResultD  Result(){
    mozISqlResult value;
    nsresult __result = inner.GetResult(&value);
    CheckException(__result);
    return new mozISqlResultD(value);
  }

  /**
   * The number of rows that were affected during an update.
   */
  /* readonly attribute long affectedRows; */
  PRInt32 AffectedRows(){
    PRInt32 value;
    nsresult __result = inner.GetAffectedRows(&value);
    CheckException(__result);
    return value;
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
   * The SQL query
   */
  /* readonly attribute AString query; */
  wchar[] Query(){
    scope auto value = new AString();
    nsresult __result = inner.GetQuery(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The context passed to the connection's asyncExecuteQuery or
   * asyncExecuteUpdate method.
   */
  /* readonly attribute nsISupports ctxt; */
  nsISupportsD  Ctxt(){
    nsISupports value;
    nsresult __result = inner.GetCtxt(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /**
   * The observer that listens for when the request is finished.
   * Methods of the observer should be called by the request.
   */
  /* readonly attribute mozISqlRequestObserver observer; */
  mozISqlRequestObserverD  Observer(){
    mozISqlRequestObserver value;
    nsresult __result = inner.GetObserver(&value);
    CheckException(__result);
    return new mozISqlRequestObserverD(value);
  }

  /**
   * Status codes
   */
  enum { STATUS_NONE = 0 }

  enum { STATUS_EXECUTED = 1 }

  enum { STATUS_COMPLETE = 2 }

  enum { STATUS_ERROR = 3 }

  enum { STATUS_CANCELLED = 4 }

  /**
   * The status of the request.
   */
  /* readonly attribute long status; */
  PRInt32 Status(){
    PRInt32 value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Cancels the operation.
   */
  /* void cancel (); */
  void Cancel(){
    nsresult __result = inner.Cancel();
    CheckException(__result);
  }

private:
  mozISqlRequest inner;

}

