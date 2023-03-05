/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessible.idl
 */

module mozilla.dxpcom.nsPIAccessibleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIAccessible;


public import mozilla.dxpcom.nsPIAccessibleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;


/* starting wrapper class:    nsPIAccessible */
class nsPIAccessibleD : public nsISupportsD {

  static const nsIID IID = NS_PIACCESSIBLE_IID;


  alias nsPIAccessible InnerType;

  this(nsPIAccessible intr){
    super(intr);
    this.inner = intr;
  }

  nsPIAccessible opCast() {
    return inner;
  }

  void opAssign(nsPIAccessible value) {
    inner = value;
  }

  /* [noscript] void setParent (in nsIAccessible aAccParent); */
  void SetParent(nsIAccessibleD aAccParent){
    nsresult __result = inner.SetParent(aAccParent ? cast(nsIAccessible)aAccParent : null);
    CheckException(__result);
  }

  /* [noscript] void setFirstChild (in nsIAccessible aAccFirstChild); */
  void SetFirstChild(nsIAccessibleD aAccFirstChild){
    nsresult __result = inner.SetFirstChild(aAccFirstChild ? cast(nsIAccessible)aAccFirstChild : null);
    CheckException(__result);
  }

  /* [noscript] void setNextSibling (in nsIAccessible aAccNextSibling); */
  void SetNextSibling(nsIAccessibleD aAccNextSibling){
    nsresult __result = inner.SetNextSibling(aAccNextSibling ? cast(nsIAccessible)aAccNextSibling : null);
    CheckException(__result);
  }

  /**
   * Set the child count to -1 (unknown) and null out cached child pointers
   */
  /* [noscript] void invalidateChildren (); */
  void InvalidateChildren(){
    nsresult __result = inner.InvalidateChildren();
    CheckException(__result);
  }

  /* [noscript] void fireToolkitEvent (in unsigned long aEvent, in nsIAccessible aTarget, in voidPtr aData); */
  void FireToolkitEvent(PRUint32 aEvent, nsIAccessibleD aTarget, void * aData){
    nsresult __result = inner.FireToolkitEvent(aEvent, aTarget ? cast(nsIAccessible)aTarget : null, aData);
    CheckException(__result);
  }

private:
  nsPIAccessible inner;

}

