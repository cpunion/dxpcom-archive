/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextAreaElement.idl
 */

module mozilla.dxpcom.nsITextAreaElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITextAreaElement;


public import mozilla.dxpcom.nsITextAreaElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITextAreaElement */
/**
 * This interface is used so that the parser can notify the textarea when
 * it has finished loading content.
 */
class nsITextAreaElementD : public nsISupportsD {

  static const nsIID IID = NS_ITEXTAREAELEMENT_IID;


  alias nsITextAreaElement InnerType;

  this(nsITextAreaElement intr){
    super(intr);
    this.inner = intr;
  }

  nsITextAreaElement opCast() {
    return inner;
  }

  void opAssign(nsITextAreaElement value) {
    inner = value;
  }

  /**
   * Called when the parser is done adding child content
   * to the select during document loading.
   */
  /* void doneAddingChildren (); */
  void DoneAddingChildren(){
    nsresult __result = inner.DoneAddingChildren();
    CheckException(__result);
  }

private:
  nsITextAreaElement inner;

}

