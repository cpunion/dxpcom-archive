/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebPageDescriptor.idl
 */

module mozilla.dxpcom.nsIWebPageDescriptorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebPageDescriptor;


public import mozilla.dxpcom.nsIWebPageDescriptorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIWebPageDescriptor */
/**
 * The nsIWebPageDescriptor interface allows content being displayed in one
 * window to be loaded into another window without refetching it from the
 * network.
 *
 * @status UNDER_REVIEW
 */
class nsIWebPageDescriptorD : public nsISupportsD {

  static const nsIID IID = NS_IWEBPAGEDESCRIPTOR_IID;


  alias nsIWebPageDescriptor InnerType;

  this(nsIWebPageDescriptor intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebPageDescriptor opCast() {
    return inner;
  }

  void opAssign(nsIWebPageDescriptor value) {
    inner = value;
  }

  enum { DISPLAY_AS_SOURCE = 1U }

  enum { DISPLAY_NORMAL = 2U }

  /**
  * Tells the object to load the page specified by the page descriptor
  *
  * @return NS_OK            - 
  *         NS_ERROR_FAILURE - 
  */
  /* void loadPage (in nsISupports aPageDescriptor, in unsigned long aDisplayType); */
  void LoadPage(nsISupportsD aPageDescriptor, PRUint32 aDisplayType){
    nsresult __result = inner.LoadPage(aPageDescriptor ? cast(nsISupports)aPageDescriptor : null, aDisplayType);
    CheckException(__result);
  }

  /**
  * Retrieves the page descriptor for the curent document.
  */
  /* readonly attribute nsISupports currentDescriptor; */
  nsISupportsD  CurrentDescriptor(){
    nsISupports value;
    nsresult __result = inner.GetCurrentDescriptor(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsIWebPageDescriptor inner;

}

