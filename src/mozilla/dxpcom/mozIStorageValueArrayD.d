/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageValueArray.idl
 */

module mozilla.dxpcom.mozIStorageValueArrayD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageValueArray;


public import mozilla.dxpcom.mozIStorageValueArrayD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozIStorageValueArray */
/**
 * mozIStorageValueArray wraps an array of SQL values,
 * such as a single database row.
 */
class mozIStorageValueArrayD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGEVALUEARRAY_IID;


  alias mozIStorageValueArray InnerType;

  this(mozIStorageValueArray intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageValueArray opCast() {
    return inner;
  }

  void opAssign(mozIStorageValueArray value) {
    inner = value;
  }

  /**
   * These type values are returned by getTypeOfIndex
   * to indicate what type of value is present at
   * a given column.
   */
  enum { VALUE_TYPE_NULL = 0 }

  enum { VALUE_TYPE_INTEGER = 1 }

  enum { VALUE_TYPE_FLOAT = 2 }

  enum { VALUE_TYPE_TEXT = 3 }

  enum { VALUE_TYPE_BLOB = 4 }

  /**
   * numEntries
   *
   * number of entries in the array (each corresponding to a column
   * in the database row)
   */
  /* readonly attribute unsigned long numEntries; */
  PRUint32 NumEntries(){
    PRUint32 value;
    nsresult __result = inner.GetNumEntries(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Returns the type of the value at the given column index;
   * one of VALUE_TYPE_NULL, VALUE_TYPE_INTEGER, VALUE_TYPE_FLOAT,
   * VALUE_TYPE_TEXT, VALUE_TYPE_BLOB.
   */
  /* long getTypeOfIndex (in unsigned long aIndex); */
  PRInt32 GetTypeOfIndex(PRUint32 aIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetTypeOfIndex(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Obtain a value for the given entry (column) index.
   * Due to SQLite's type conversion rules, any of these are valid
   * for any column regardless of the column's data type.  However,
   * if the specific type matters, getTypeOfIndex should be used
   * first to identify the column type, and then the appropriate
   * get method should be called.
   *
   * If you ask for a string value for a NULL column, you will get an empty
   * string with IsVoid set to distinguish it from an explicitly set empty
   * string.
   */
  /* long getInt32 (in unsigned long aIndex); */
  PRInt32 GetInt32(PRUint32 aIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetInt32(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long long getInt64 (in unsigned long aIndex); */
  PRInt64 GetInt64(PRUint32 aIndex){
    PRInt64 _retval;
    nsresult __result = inner.GetInt64(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* double getDouble (in unsigned long aIndex); */
  double GetDouble(PRUint32 aIndex){
    double _retval;
    nsresult __result = inner.GetDouble(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AUTF8String getUTF8String (in unsigned long aIndex); */
  char[] GetUTF8String(PRUint32 aIndex){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetUTF8String(aIndex, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getString (in unsigned long aIndex); */
  wchar[] GetString(PRUint32 aIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetString(aIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void getBlob (in unsigned long aIndex, out unsigned long aDataSize, [array, size_is (aDataSize)] out octet aData); */
  void GetBlob(PRUint32 aIndex, out PRUint32 aDataSize, out PRUint8 *aData){
    nsresult __result = inner.GetBlob(aIndex, &aDataSize, &aData);
    CheckException(__result);
  }

  /* boolean getIsNull (in unsigned long aIndex); */
  PRBool GetIsNull(PRUint32 aIndex){
    PRBool _retval;
    nsresult __result = inner.GetIsNull(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns a shared string pointer
   */
  /* [noscript] void getSharedUTF8String (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out string aResult); */
  void GetSharedUTF8String(PRUint32 aIndex, out PRUint32 aLength, out char*aResult){
    nsresult __result = inner.GetSharedUTF8String(aIndex, &aLength, &aResult);
    CheckException(__result);
  }

  /* [noscript] void getSharedString (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out wstring aResult); */
  void GetSharedString(PRUint32 aIndex, out PRUint32 aLength, out PRUnichar*aResult){
    nsresult __result = inner.GetSharedString(aIndex, &aLength, &aResult);
    CheckException(__result);
  }

  /* [noscript] void getSharedBlob (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out octetPtr aResult); */
  void GetSharedBlob(PRUint32 aIndex, out PRUint32 aLength, out PRUint8 * aResult){
    nsresult __result = inner.GetSharedBlob(aIndex, &aLength, &aResult);
    CheckException(__result);
  }

private:
  mozIStorageValueArray inner;

}

