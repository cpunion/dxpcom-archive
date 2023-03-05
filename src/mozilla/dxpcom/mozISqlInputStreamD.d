/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlInputStream.idl
 */

module mozilla.dxpcom.mozISqlInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlInputStream;


public import mozilla.dxpcom.mozISqlInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlInputStream */
/**
 * This interface is a utility for reading SQL result contents as a stream.
 *
 * @status UNDER_DEVELOPMENT
 */
class mozISqlInputStreamD : public nsISupportsD {

  static const nsIID IID = MOZISQLINPUTSTREAM_IID;


  alias mozISqlInputStream InnerType;

  this(mozISqlInputStream intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlInputStream opCast() {
    return inner;
  }

  void opAssign(mozISqlInputStream value) {
    inner = value;
  }

  /**
   * Retrieves the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to return
   * @return               the column name
   */
  /* AString getColumnHeader (in long aColumnIndex); */
  wchar[] GetColumnHeader(PRInt32 aColumnIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetColumnHeader(aColumnIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Sets the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to change
   * @param aLabel         the column name
   */
  /* void setColumnHeader (in long aColumnIndex, in AString aLabel); */
  void SetColumnHeader(PRInt32 aColumnIndex, wchar[] aLabel){
    scope auto _aLabel = new AString(aLabel);
    nsresult __result = inner.SetColumnHeader(aColumnIndex, cast(nsAString*)_aLabel);
    CheckException(__result);
  }

private:
  mozISqlInputStream inner;

}

