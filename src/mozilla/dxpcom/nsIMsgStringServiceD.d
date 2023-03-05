/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgStringService.idl
 */

module mozilla.dxpcom.nsIMsgStringServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgStringService;


public import mozilla.dxpcom.nsIMsgStringServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIStringBundle;
public import mozilla.dxpcom.nsIStringBundleD;


/* starting wrapper class:    nsIMsgStringService */
class nsIMsgStringServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSTRINGSERVICE_IID;


  alias nsIMsgStringService InnerType;

  this(nsIMsgStringService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgStringService opCast() {
    return inner;
  }

  void opAssign(nsIMsgStringService value) {
    inner = value;
  }

  /* wstring getStringByID (in long aStringID); */
  PRUnichar* GetStringByID(PRInt32 aStringID){
    PRUnichar* _retval;
    nsresult __result = inner.GetStringByID(aStringID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsIStringBundle bundle; */
  nsIStringBundleD  Bundle(){
    nsIStringBundle value;
    nsresult __result = inner.GetBundle(&value);
    CheckException(__result);
    return new nsIStringBundleD(value);
  }

private:
  nsIMsgStringService inner;

}

