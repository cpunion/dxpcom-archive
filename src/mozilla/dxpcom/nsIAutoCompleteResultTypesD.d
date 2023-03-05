/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResultTypes.idl
 */

module mozilla.dxpcom.nsIAutoCompleteResultTypesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteResultTypes;


public import mozilla.dxpcom.nsIAutoCompleteResultTypesD;

public import mozilla.xpcom.nsIAutoCompleteResult;
public import mozilla.dxpcom.nsIAutoCompleteResultD;


/* starting wrapper class:    nsIAutoCompleteBaseResult */
class nsIAutoCompleteBaseResultD : public nsIAutoCompleteResultD {

  static const nsIID IID = NS_IAUTOCOMPLETEBASERESULT_IID;


  alias nsIAutoCompleteBaseResult InnerType;

  this(nsIAutoCompleteBaseResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteBaseResult opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteBaseResult value) {
    inner = value;
  }

  /* void setSearchString (in AString searchString); */
  void SetSearchString(wchar[] searchString){
    scope auto _searchString = new AString(searchString);
    nsresult __result = inner.SetSearchString(cast(nsAString*)_searchString);
    CheckException(__result);
  }

  /* void setErrorDescription (in AString errorDescription); */
  void SetErrorDescription(wchar[] errorDescription){
    scope auto _errorDescription = new AString(errorDescription);
    nsresult __result = inner.SetErrorDescription(cast(nsAString*)_errorDescription);
    CheckException(__result);
  }

  /* void setDefaultIndex (in long defaultIndex); */
  void SetDefaultIndex(PRInt32 defaultIndex){
    nsresult __result = inner.SetDefaultIndex(defaultIndex);
    CheckException(__result);
  }

  /* void setSearchResult (in unsigned long searchResult); */
  void SetSearchResult(PRUint32 searchResult){
    nsresult __result = inner.SetSearchResult(searchResult);
    CheckException(__result);
  }

private:
  nsIAutoCompleteBaseResult inner;

}


/* starting wrapper class:    nsIAutoCompleteMdbResult */
class nsIAutoCompleteMdbResultD : public nsIAutoCompleteBaseResultD {

  static const nsIID IID = NS_IAUTOCOMPLETEMDBRESULT_IID;


  alias nsIAutoCompleteMdbResult InnerType;

  this(nsIAutoCompleteMdbResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteMdbResult opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteMdbResult value) {
    inner = value;
  }

  enum { kUnicharType = 0 }

  enum { kCharType = 1 }

  enum { kIntType = 2 }

  /* void init (in nsIMdbEnv env, in nsIMdbTable table); */
  void Init(nsIMdbEnvD env, nsIMdbTableD table){
    nsresult __result = inner.Init(env ? cast(nsIMdbEnv)env : null, table ? cast(nsIMdbTable)table : null);
    CheckException(__result);
  }

  /* void setTokens (in mdb_scope valueToken, in short valueType, in mdb_scope commentToken, in short commentType); */
  void SetTokens(mdb_scope valueToken, PRInt16 valueType, mdb_scope commentToken, PRInt16 commentType){
    nsresult __result = inner.SetTokens(valueToken, valueType, commentToken, commentType);
    CheckException(__result);
  }

  /* void addRow (in nsIMdbRow row); */
  void AddRow(nsIMdbRowD row){
    nsresult __result = inner.AddRow(row ? cast(nsIMdbRow)row : null);
    CheckException(__result);
  }

  /* nsIMdbRow getRowAt (in unsigned long rowIndex); */
  nsIMdbRowD  GetRowAt(PRUint32 rowIndex){
    nsIMdbRow _retval;
    nsresult __result = inner.GetRowAt(rowIndex, &_retval);
    CheckException(__result);
    return new nsIMdbRowD(_retval);
  }

  /* AString getRowValue (in nsIMdbRow row, in mdb_column col); */
  wchar[] GetRowValue(nsIMdbRowD row, mdb_column col){
    scope auto _retval = new AString;
    nsresult __result = inner.GetRowValue(row ? cast(nsIMdbRow)row : null, col, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AUTF8String getUTF8RowValue (in nsIMdbRow row, in mdb_column col); */
  char[] GetUTF8RowValue(nsIMdbRowD row, mdb_column col){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetUTF8RowValue(row ? cast(nsIMdbRow)row : null, col, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* long getIntRowValue (in nsIMdbRow row, in mdb_column col); */
  PRInt32 GetIntRowValue(nsIMdbRowD row, mdb_column col){
    PRInt32 _retval;
    nsresult __result = inner.GetIntRowValue(row ? cast(nsIMdbRow)row : null, col, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAutoCompleteMdbResult inner;

}


/* starting wrapper class:    nsIAutoCompleteMdbResult2 */
class nsIAutoCompleteMdbResult2D : public nsIAutoCompleteMdbResultD {

  static const nsIID IID = NS_IAUTOCOMPLETEMDBRESULT2_IID;


  alias nsIAutoCompleteMdbResult2 InnerType;

  this(nsIAutoCompleteMdbResult2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteMdbResult2 opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteMdbResult2 value) {
    inner = value;
  }

  /* attribute boolean reverseByteOrder; */
  PRBool ReverseByteOrder(){
    PRBool value;
    nsresult __result = inner.GetReverseByteOrder(&value);
    CheckException(__result);
    return value;
  }
  void ReverseByteOrder(PRBool aReverseByteOrder){
    nsresult __result = inner.SetReverseByteOrder(aReverseByteOrder);
    CheckException(__result);
  }

private:
  nsIAutoCompleteMdbResult2 inner;

}

