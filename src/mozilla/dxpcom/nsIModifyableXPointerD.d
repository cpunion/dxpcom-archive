/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIModifyableXPointer.idl
 */

module mozilla.dxpcom.nsIModifyableXPointerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIModifyableXPointer;


public import mozilla.dxpcom.nsIModifyableXPointerD;

public import mozilla.xpcom.nsIXPointer;
public import mozilla.dxpcom.nsIXPointerD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;


/* starting wrapper class:    nsIModifyableXPointerResult */
/**
 * Helper interface that can assist in creating an nsIXPointerResult.
 */
class nsIModifyableXPointerResultD : public nsIXPointerResultD {

  static const nsIID IID = NS_IMODIFYABLEXPOINTERRESULT_IID;


  alias nsIModifyableXPointerResult InnerType;

  this(nsIModifyableXPointerResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIModifyableXPointerResult opCast() {
    return inner;
  }

  void opAssign(nsIModifyableXPointerResult value) {
    inner = value;
  }

  /* void appendRange (in nsIDOMRange aRange); */
  void AppendRange(nsIDOMRangeD aRange){
    nsresult __result = inner.AppendRange(aRange ? cast(nsIDOMRange)aRange : null);
    CheckException(__result);
  }

private:
  nsIModifyableXPointerResult inner;

}

