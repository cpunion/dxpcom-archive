/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageStatement.idl
 */

module mozilla.xpcom.mozIStorageStatement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.mozIStorageValueArray;

public import mozilla.xpcom.mozIStorageConnection; /* forward declaration */

public import mozilla.xpcom.mozIStorageDataSet; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    mozIStorageStatement */
const char[] MOZISTORAGESTATEMENT_IID_STR = "1f39bc95-090d-40a5-9dee-6d5a591e48bf";

const nsIID MOZISTORAGESTATEMENT_IID= 
  {0x1f39bc95, 0x090d, 0x40a5, 
    [ 0x9d, 0xee, 0x6d, 0x5a, 0x59, 0x1e, 0x48, 0xbf ]};

extern(Windows)
interface mozIStorageStatement : mozIStorageValueArray {
  static const char[] IID_STR = MOZISTORAGESTATEMENT_IID_STR;
  static const nsIID IID = MOZISTORAGESTATEMENT_IID;

  /**
   * Initialize this query with the given SQL statement.
   *
   */
  /* void initialize (in mozIStorageConnection aDBConnection, in AUTF8String aSQLStatement); */
  nsresult Initialize(mozIStorageConnection aDBConnection, nsACString * aSQLStatement);

  /**
   * Create a clone of this statement, by initializing a new statement
   * with the same connection and same SQL statement as this one.  It
   * does not preserve statement state; that is, if a statement is
   * being executed when it is cloned, the new statement will not be
   * executing.
   */
  /* mozIStorageStatement clone (); */
  nsresult Clone(mozIStorageStatement *_retval);

  /* readonly attribute unsigned long parameterCount; */
  nsresult GetParameterCount(PRUint32 *aParameterCount);

  /**
   * Name of nth parameter, if given
   */
  /* AUTF8String getParameterName (in unsigned long aParamIndex); */
  nsresult GetParameterName(PRUint32 aParamIndex, nsACString * _retval);

  /**
   * All indexes of a named parameter, if it's specified more than once
   */
  /* void getParameterIndexes (in AUTF8String aParameterName, out unsigned long aCount, [array, size_is (aCount), retval] out unsigned long aIndexes); */
  nsresult GetParameterIndexes(nsACString * aParameterName, PRUint32 *aCount, PRUint32 **aIndexes);

  /**
   * Number of columns returned
   */
  /* readonly attribute unsigned long columnCount; */
  nsresult GetColumnCount(PRUint32 *aColumnCount);

  /**
   * Name of nth column
   */
  /* AUTF8String getColumnName (in unsigned long aColumnIndex); */
  nsresult GetColumnName(PRUint32 aColumnIndex, nsACString * _retval);

  /**
   * Reset parameters/statement execution
   */
  /* void reset (); */
  nsresult Reset();

  /**
   * Bind the given value to the parameter at aParamIndex.
   */
  /* void bindUTF8StringParameter (in unsigned long aParamIndex, in AUTF8String aValue); */
  nsresult BindUTF8StringParameter(PRUint32 aParamIndex, nsACString * aValue);

  /* void bindStringParameter (in unsigned long aParamIndex, in AString aValue); */
  nsresult BindStringParameter(PRUint32 aParamIndex, nsAString * aValue);

  /* void bindDoubleParameter (in unsigned long aParamIndex, in double aValue); */
  nsresult BindDoubleParameter(PRUint32 aParamIndex, double aValue);

  /* void bindInt32Parameter (in unsigned long aParamIndex, in long aValue); */
  nsresult BindInt32Parameter(PRUint32 aParamIndex, PRInt32 aValue);

  /* void bindInt64Parameter (in unsigned long aParamIndex, in long long aValue); */
  nsresult BindInt64Parameter(PRUint32 aParamIndex, PRInt64 aValue);

  /* void bindNullParameter (in unsigned long aParamIndex); */
  nsresult BindNullParameter(PRUint32 aParamIndex);

  /* void bindBlobParameter (in unsigned long aParamIndex, [array, size_is (aValueSize), const] in octet aValue, in unsigned long aValueSize); */
  nsresult BindBlobParameter(PRUint32 aParamIndex, PRUint8 *aValue, PRUint32 aValueSize);

  /**
   * Execute the query, ignoring any results.  This is accomplished by
   * calling step() once, and then calling reset().
   *
   * Error and last insert info, etc. are available from
   * the mozStorageConnection.
   */
  /* void execute (); */
  nsresult Execute();

  /**
   * Execute a query, using any currently-bound parameters.  Reset
   * must be called on the statement after the last call of
   * executeStep.
   *
   * @returns a boolean indicating whether there are more rows or not;
   * row data may be accessed using mozIStorageValueArray methods on
   * the statement.
   *
   */
  /* boolean executeStep (); */
  nsresult ExecuteStep(PRBool *_retval);

  /**
   * The current state.  Row getters are only valid while
   * the statement is in the "executing" state.
   */
  enum { MOZ_STORAGE_STATEMENT_INVALID = 0 };

  enum { MOZ_STORAGE_STATEMENT_READY = 1 };

  enum { MOZ_STORAGE_STATEMENT_EXECUTING = 2 };

  /* readonly attribute long state; */
  nsresult GetState(PRInt32 *aState);

  /* [noscript, notxpcom] sqlite3stmtptr getNativeStatementPointer (); */
  sqlite3_stmt * GetNativeStatementPointer();

}

