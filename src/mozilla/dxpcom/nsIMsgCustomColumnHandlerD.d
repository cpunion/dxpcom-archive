/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCustomColumnHandler.idl
 */

module mozilla.dxpcom.nsIMsgCustomColumnHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCustomColumnHandler;


public import mozilla.dxpcom.nsIMsgCustomColumnHandlerD;

public import mozilla.xpcom.nsITreeView;
public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgCustomColumnHandler */
class nsIMsgCustomColumnHandlerD : public nsITreeViewD {

  static const nsIID IID = NS_IMSGCUSTOMCOLUMNHANDLER_IID;


  alias nsIMsgCustomColumnHandler InnerType;

  this(nsIMsgCustomColumnHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCustomColumnHandler opCast() {
    return inner;
  }

  void opAssign(nsIMsgCustomColumnHandler value) {
    inner = value;
  }

  /* AString getSortStringForRow (in nsIMsgDBHdr aHdr); */
  wchar[] GetSortStringForRow(nsIMsgDBHdrD aHdr){
    scope auto _retval = new AString;
    nsresult __result = inner.GetSortStringForRow(aHdr ? cast(nsIMsgDBHdr)aHdr : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* unsigned long getSortLongForRow (in nsIMsgDBHdr aHdr); */
  PRUint32 GetSortLongForRow(nsIMsgDBHdrD aHdr){
    PRUint32 _retval;
    nsresult __result = inner.GetSortLongForRow(aHdr ? cast(nsIMsgDBHdr)aHdr : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isString (); */
  PRBool IsString(){
    PRBool _retval;
    nsresult __result = inner.IsString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgCustomColumnHandler inner;

}

