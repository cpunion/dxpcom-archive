/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalFileWin.idl
 */

module mozilla.dxpcom.nsILocalFileWinD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILocalFileWin;


public import mozilla.dxpcom.nsILocalFileWinD;

public import mozilla.xpcom.nsILocalFile;
public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsILocalFileWin */
class nsILocalFileWinD : public nsILocalFileD {

  static const nsIID IID = NS_ILOCALFILEWIN_IID;


  alias nsILocalFileWin InnerType;

  this(nsILocalFileWin intr){
    super(intr);
    this.inner = intr;
  }

  nsILocalFileWin opCast() {
    return inner;
  }

  void opAssign(nsILocalFileWin value) {
    inner = value;
  }

  /**
    * getVersionInfoValue
    *
    * Retrieve a metadata field from the file's VERSIONINFO block.
    * Throws NS_ERROR_FAILURE if no value is found, or the value is empty.
    *
    * @param   aField         The field to look up.
    *
    */
  /* AString getVersionInfoField (in string aField); */
  wchar[] GetVersionInfoField(char*aField){
    scope auto _retval = new AString;
    nsresult __result = inner.GetVersionInfoField(aField, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsILocalFileWin inner;

}

