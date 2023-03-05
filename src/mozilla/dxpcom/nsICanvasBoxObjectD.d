/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICanvasBoxObject.idl
 */

module mozilla.dxpcom.nsICanvasBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICanvasBoxObject;


public import mozilla.dxpcom.nsICanvasBoxObjectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICanvasBoxObject */
class nsICanvasBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_ICANVASBOXOBJECT_IID;


  alias nsICanvasBoxObject InnerType;

  this(nsICanvasBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsICanvasBoxObject opCast() {
    return inner;
  }

  void opAssign(nsICanvasBoxObject value) {
    inner = value;
  }

  /* nsISupports getContext (in string aContext); */
  nsISupportsD  GetContext(char*aContext){
    nsISupports _retval;
    nsresult __result = inner.GetContext(aContext, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsICanvasBoxObject inner;

}


/* starting wrapper class:    nsICanvasFrame */
class nsICanvasFrameD : public nsISupportsD {

  static const nsIID IID = NS_ICANVASFRAME_IID;


  alias nsICanvasFrame InnerType;

  this(nsICanvasFrame intr){
    super(intr);
    this.inner = intr;
  }

  nsICanvasFrame opCast() {
    return inner;
  }

  void opAssign(nsICanvasFrame value) {
    inner = value;
  }

  /* nsISupports getContext (in string aContext); */
  nsISupportsD  GetContext(char*aContext){
    nsISupports _retval;
    nsresult __result = inner.GetContext(aContext, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsICanvasFrame inner;

}

