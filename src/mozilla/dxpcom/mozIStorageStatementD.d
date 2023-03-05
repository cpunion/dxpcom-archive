/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageStatement.idl
 */

module mozilla.dxpcom.mozIStorageStatementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageStatement;


public import mozilla.dxpcom.mozIStorageStatementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.mozIStorageValueArray;
public import mozilla.dxpcom.mozIStorageValueArrayD;

public import mozilla.xpcom.mozIStorageConnection;

public import mozilla.dxpcom.mozIStorageConnectionD;

public import mozilla.xpcom.mozIStorageDataSet;

public import mozilla.dxpcom.mozIStorageDataSetD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    mozIStorageStatement */
class mozIStorageStatementD : public mozIStorageValueArrayD {

  static const nsIID IID = MOZISTORAGESTATEMENT_IID;


  alias mozIStorageStatement InnerType;

  this(mozIStorageStatement intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageStatement opCast() {
    return inner;
  }

  void opAssign(mozIStorageStatement value) {
    inner = value;
  }

  /**
   * Initialize this query with the given SQL statement.
   *
   */
  /* void initialize (in mozIStorageConnection aDBConnection, in AUTF8String aSQLStatement); */
  void Initialize(mozIStorageConnectionD aDBConnection, char[] aSQLStatement){
    scope auto _aSQLStatement = new ACString(aSQLStatement);
    nsresult __result = inner.Initialize(aDBConnection ? cast(mozIStorageConnection)aDBConnection : null, cast(nsACString*)_aSQLStatement);
    CheckException(__result);
  }

  /**
   * Create a clone of this statement, by initializing a new statement
   * with the same connection and same SQL statement as this one.  It
   * does not preserve statement state; that is, if a statement is
   * being executed when it is cloned, the new statement will not be
   * executing.
   */
  /* mozIStorageStatement clone (); */
  mozIStorageStatementD  Clone(){
    mozIStorageStatement _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new mozIStorageStatementD(_retval);
  }

  /* readonly attribute unsigned long parameterCount; */
  PRUint32 ParameterCount(){
    PRUint32 value;
    nsresult __result = inner.GetParameterCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Name of nth parameter, if given
   */
  /* AUTF8String getParameterName (in unsigned long aParamIndex); */
  char[] GetParameterName(PRUint32 aParamIndex){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetParameterName(aParamIndex, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * All indexes of a named parameter, if it's specified more than once
   */
  /* void getParameterIndexes (in AUTF8String aParameterName, out unsigned long aCount, [array, size_is (aCount), retval] out unsigned long aIndexes); */
  void GetParameterIndexes(char[] aParameterName, out PRUint32 aCount, out PRUint32 *aIndexes){
    scope auto _aParameterName = new ACString(aParameterName);
    nsresult __result = inner.GetParameterIndexes(cast(nsACString*)_aParameterName, &aCount, &aIndexes);
    CheckException(__result);
  }

  /**
   * Number of columns returned
   */
  /* readonly attribute unsigned long columnCount; */
  PRUint32 ColumnCount(){
    PRUint32 value;
    nsresult __result = inner.GetColumnCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Name of nth column
   */
  /* AUTF8String getColumnName (in unsigned long aColumnIndex); */
  char[] GetColumnName(PRUint32 aColumnIndex){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetColumnName(aColumnIndex, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Reset parameters/statement execution
   */
  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

  /**
   * Bind the given value to the parameter at aParamIndex.
   */
  /* void bindUTF8StringParameter (in unsigned long aParamIndex, in AUTF8String aValue); */
  void BindUTF8StringParameter(PRUint32 aParamIndex, char[] aValue){
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.BindUTF8StringParameter(aParamIndex, cast(nsACString*)_aValue);
    CheckException(__result);
  }

  /* void bindStringParameter (in unsigned long aParamIndex, in AString aValue); */
  void BindStringParameter(PRUint32 aParamIndex, wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.BindStringParameter(aParamIndex, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /* void bindDoubleParameter (in unsigned long aParamIndex, in double aValue); */
  void BindDoubleParameter(PRUint32 aParamIndex, double aValue){
    nsresult __result = inner.BindDoubleParameter(aParamIndex, aValue);
    CheckException(__result);
  }

  /* void bindInt32Parameter (in unsigned long aParamIndex, in long aValue); */
  void BindInt32Parameter(PRUint32 aParamIndex, PRInt32 aValue){
    nsresult __result = inner.BindInt32Parameter(aParamIndex, aValue);
    CheckException(__result);
  }

  /* void bindInt64Parameter (in unsigned long aParamIndex, in long long aValue); */
  void BindInt64Parameter(PRUint32 aParamIndex, PRInt64 aValue){
    nsresult __result = inner.BindInt64Parameter(aParamIndex, aValue);
    CheckException(__result);
  }

  /* void bindNullParameter (in unsigned long aParamIndex); */
  void BindNullParameter(PRUint32 aParamIndex){
    nsresult __result = inner.BindNullParameter(aParamIndex);
    CheckException(__result);
  }

  /* void bindBlobParameter (in unsigned long aParamIndex, [array, size_is (aValueSize), const] in octet aValue, in unsigned long aValueSize); */
  void BindBlobParameter(PRUint32 aParamIndex, PRUint8 *aValue, PRUint32 aValueSize){
    nsresult __result = inner.BindBlobParameter(aParamIndex, aValue, aValueSize);
    CheckException(__result);
  }

  /**
   * Execute the query, ignoring any results.  This is accomplished by
   * calling step() once, and then calling reset().
   *
   * Error and last insert info, etc. are available from
   * the mozStorageConnection.
   */
  /* void execute (); */
  void Execute(){
    nsresult __result = inner.Execute();
    CheckException(__result);
  }

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
  PRBool ExecuteStep(){
    PRBool _retval;
    nsresult __result = inner.ExecuteStep(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * The current state.  Row getters are only valid while
   * the statement is in the "executing" state.
   */
  enum { MOZ_STORAGE_STATEMENT_INVALID = 0 }

  enum { MOZ_STORAGE_STATEMENT_READY = 1 }

  enum { MOZ_STORAGE_STATEMENT_EXECUTING = 2 }

  /* readonly attribute long state; */
  PRInt32 State(){
    PRInt32 value;
    nsresult __result = inner.GetState(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript, notxpcom] sqlite3stmtptr getNativeStatementPointer (); */
  sqlite3_stmt * GetNativeStatementPointer(){
    sqlite3_stmt * _retval;
    _retval = inner.GetNativeStatementPointer();

    return _retval;
  }

private:
  mozIStorageStatement inner;

}

