/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScreen.idl
 */

module mozilla.dxpcom.nsIScreenD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScreen;


public import mozilla.dxpcom.nsIScreenD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScreen */
class nsIScreenD : public nsISupportsD {

  static const nsIID IID = NS_ISCREEN_IID;


  alias nsIScreen InnerType;

  this(nsIScreen intr){
    super(intr);
    this.inner = intr;
  }

  nsIScreen opCast() {
    return inner;
  }

  void opAssign(nsIScreen value) {
    inner = value;
  }

  /* void GetRect (out long left, out long top, out long width, out long height); */
  void GetRect(out PRInt32 left, out PRInt32 top, out PRInt32 width, out PRInt32 height){
    nsresult __result = inner.GetRect(&left, &top, &width, &height);
    CheckException(__result);
  }

  /* void GetAvailRect (out long left, out long top, out long width, out long height); */
  void GetAvailRect(out PRInt32 left, out PRInt32 top, out PRInt32 width, out PRInt32 height){
    nsresult __result = inner.GetAvailRect(&left, &top, &width, &height);
    CheckException(__result);
  }

  /* readonly attribute long pixelDepth; */
  PRInt32 PixelDepth(){
    PRInt32 value;
    nsresult __result = inner.GetPixelDepth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long colorDepth; */
  PRInt32 ColorDepth(){
    PRInt32 value;
    nsresult __result = inner.GetColorDepth(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIScreen inner;

}

