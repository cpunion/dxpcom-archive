/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageDataSet.idl
 */

module mozilla.dxpcom.mozIStorageDataSetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageDataSet;


public import mozilla.dxpcom.mozIStorageDataSetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    mozIStorageDataSet */
class mozIStorageDataSetD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGEDATASET_IID;


  alias mozIStorageDataSet InnerType;

  this(mozIStorageDataSet intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageDataSet opCast() {
    return inner;
  }

  void opAssign(mozIStorageDataSet value) {
    inner = value;
  }

  /**
   * All the rows in this data set, as a nsIArray
   */
  /* readonly attribute nsIArray dataRows; */
  nsIArrayD  DataRows(){
    nsIArray value;
    nsresult __result = inner.GetDataRows(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }

  /**
   * Get an enumerator for the result set rows.
   * @returns a nsISimpleEnumerator of mozIStorageValueArray.
   */
  /* nsISimpleEnumerator getRowEnumerator (); */
  nsISimpleEnumeratorD  GetRowEnumerator(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetRowEnumerator(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  mozIStorageDataSet inner;

}

