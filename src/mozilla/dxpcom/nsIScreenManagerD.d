/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScreenManager.idl
 */

module mozilla.dxpcom.nsIScreenManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScreenManager;


public import mozilla.dxpcom.nsIScreenManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIScreen;
public import mozilla.dxpcom.nsIScreenD;


/* starting wrapper class:    nsIScreenManager */
class nsIScreenManagerD : public nsISupportsD {

  static const nsIID IID = NS_ISCREENMANAGER_IID;


  alias nsIScreenManager InnerType;

  this(nsIScreenManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIScreenManager opCast() {
    return inner;
  }

  void opAssign(nsIScreenManager value) {
    inner = value;
  }

  /* nsIScreen screenForRect (in long left, in long top, in long width, in long height); */
  nsIScreenD  ScreenForRect(PRInt32 left, PRInt32 top, PRInt32 width, PRInt32 height){
    nsIScreen _retval;
    nsresult __result = inner.ScreenForRect(left, top, width, height, &_retval);
    CheckException(__result);
    return new nsIScreenD(_retval);
  }

  /* readonly attribute nsIScreen primaryScreen; */
  nsIScreenD  PrimaryScreen(){
    nsIScreen value;
    nsresult __result = inner.GetPrimaryScreen(&value);
    CheckException(__result);
    return new nsIScreenD(value);
  }

  /* readonly attribute unsigned long numberOfScreens; */
  PRUint32 NumberOfScreens(){
    PRUint32 value;
    nsresult __result = inner.GetNumberOfScreens(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIScreenManager inner;

}

