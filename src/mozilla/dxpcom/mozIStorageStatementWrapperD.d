/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageStatementWrapper.idl
 */

module mozilla.dxpcom.mozIStorageStatementWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageStatementWrapper;


public import mozilla.dxpcom.mozIStorageStatementWrapperD;

public import mozilla.xpcom.mozIStorageStatement;
public import mozilla.dxpcom.mozIStorageStatementD;


/* starting wrapper class:    mozIStorageStatementRow */
class mozIStorageStatementRowD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGESTATEMENTROW_IID;


  alias mozIStorageStatementRow InnerType;

  this(mozIStorageStatementRow intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageStatementRow opCast() {
    return inner;
  }

  void opAssign(mozIStorageStatementRow value) {
    inner = value;
  }

private:
  mozIStorageStatementRow inner;

}


/* starting wrapper class:    mozIStorageStatementParams */
class mozIStorageStatementParamsD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGESTATEMENTPARAMS_IID;


  alias mozIStorageStatementParams InnerType;

  this(mozIStorageStatementParams intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageStatementParams opCast() {
    return inner;
  }

  void opAssign(mozIStorageStatementParams value) {
    inner = value;
  }

private:
  mozIStorageStatementParams inner;

}


/* starting wrapper class:    mozIStorageStatementWrapper */
class mozIStorageStatementWrapperD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGESTATEMENTWRAPPER_IID;


  alias mozIStorageStatementWrapper InnerType;

  this(mozIStorageStatementWrapper intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageStatementWrapper opCast() {
    return inner;
  }

  void opAssign(mozIStorageStatementWrapper value) {
    inner = value;
  }

  /**
   * Initialize this wrapper with aStatement.
   */
  /* void initialize (in mozIStorageStatement aStatement); */
  void Initialize(mozIStorageStatementD aStatement){
    nsresult __result = inner.Initialize(aStatement ? cast(mozIStorageStatement)aStatement : null);
    CheckException(__result);
  }

  /**
   * The statement that is wrapped.
   */
  /* readonly attribute mozIStorageStatement statement; */
  mozIStorageStatementD  Statement(){
    mozIStorageStatement value;
    nsresult __result = inner.GetStatement(&value);
    CheckException(__result);
    return new mozIStorageStatementD(value);
  }

  /**
   * Step, reset, and execute the wrapped statement.
   */
  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

  /* boolean step (); */
  PRBool Step(){
    PRBool _retval;
    nsresult __result = inner.Step(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void execute (); */
  void Execute(){
    nsresult __result = inner.Execute();
    CheckException(__result);
  }

  /**
   * The current row.  Throws an exception if no row is currently
   * available.  Useful only from script.  The value of this is only
   * valid while the statement is still executing, and is still on the
   * appropriate row.
   */
  /* readonly attribute mozIStorageStatementRow row; */
  mozIStorageStatementRowD  Row(){
    mozIStorageStatementRow value;
    nsresult __result = inner.GetRow(&value);
    CheckException(__result);
    return new mozIStorageStatementRowD(value);
  }

  /**
   * The parameters; these can be set in lieu of using the call
   * notation on this.
   */
  /* readonly attribute mozIStorageStatementParams params; */
  mozIStorageStatementParamsD  Params(){
    mozIStorageStatementParams value;
    nsresult __result = inner.GetParams(&value);
    CheckException(__result);
    return new mozIStorageStatementParamsD(value);
  }

private:
  mozIStorageStatementWrapper inner;

}

