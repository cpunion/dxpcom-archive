/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlRequest.idl
 */

module mozilla.xpcom.mozISqlRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozISqlConnection; /* forward declaration */

public import mozilla.xpcom.mozISqlRequestObserver; /* forward declaration */

public import mozilla.xpcom.mozISqlResult; /* forward declaration */


/* starting interface:    mozISqlRequest */
const char[] MOZISQLREQUEST_IID_STR = "f67cb817-5e07-49ff-aacc-5c80585c5031";

const nsIID MOZISQLREQUEST_IID= 
  {0xf67cb817, 0x5e07, 0x49ff, 
    [ 0xaa, 0xcc, 0x5c, 0x80, 0x58, 0x5c, 0x50, 0x31 ]};

/**
 * A request interface used during an asynchronous SQL query or update operation.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface mozISqlRequest : nsISupports {
  static const char[] IID_STR = MOZISQLREQUEST_IID_STR;
  static const nsIID IID = MOZISQLREQUEST_IID;

  /**
   * The most recent error message.
   */
  /* readonly attribute AString errorMessage; */
  nsresult GetErrorMessage(nsAString * aErrorMessage);

  /**
   * The result of the operation.
   */
  /* readonly attribute mozISqlResult result; */
  nsresult GetResult(mozISqlResult  *aResult);

  /**
   * The number of rows that were affected during an update.
   */
  /* readonly attribute long affectedRows; */
  nsresult GetAffectedRows(PRInt32 *aAffectedRows);

  /**
   * The ID of the most recently added record.
   */
  /* readonly attribute long lastID; */
  nsresult GetLastID(PRInt32 *aLastID);

  /**
   * The SQL query
   */
  /* readonly attribute AString query; */
  nsresult GetQuery(nsAString * aQuery);

  /**
   * The context passed to the connection's asyncExecuteQuery or
   * asyncExecuteUpdate method.
   */
  /* readonly attribute nsISupports ctxt; */
  nsresult GetCtxt(nsISupports  *aCtxt);

  /**
   * The observer that listens for when the request is finished.
   * Methods of the observer should be called by the request.
   */
  /* readonly attribute mozISqlRequestObserver observer; */
  nsresult GetObserver(mozISqlRequestObserver  *aObserver);

  /**
   * Status codes
   */
  enum { STATUS_NONE = 0 };

  enum { STATUS_EXECUTED = 1 };

  enum { STATUS_COMPLETE = 2 };

  enum { STATUS_ERROR = 3 };

  enum { STATUS_CANCELLED = 4 };

  /**
   * The status of the request.
   */
  /* readonly attribute long status; */
  nsresult GetStatus(PRInt32 *aStatus);

  /**
   * Cancels the operation.
   */
  /* void cancel (); */
  nsresult Cancel();

}

