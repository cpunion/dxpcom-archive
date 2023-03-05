/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULBuilderListener.idl
 */

module mozilla.dxpcom.nsIXULBuilderListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULBuilderListener;


public import mozilla.dxpcom.nsIXULBuilderListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXULTemplateBuilder;

public import mozilla.dxpcom.nsIXULTemplateBuilderD;


/* starting wrapper class:    nsIXULBuilderListener */
class nsIXULBuilderListenerD : public nsISupportsD {

  static const nsIID IID = NS_IXULBUILDERLISTENER_IID;


  alias nsIXULBuilderListener InnerType;

  this(nsIXULBuilderListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULBuilderListener opCast() {
    return inner;
  }

  void opAssign(nsIXULBuilderListener value) {
    inner = value;
  }

  /**
   * Called before a template builder rebuilds its content.
   * @param aBuilder the template builder that rebuilds the content.
   */
  /* void willRebuild (in nsIXULTemplateBuilder aBuilder); */
  void WillRebuild(nsIXULTemplateBuilderD aBuilder){
    nsresult __result = inner.WillRebuild(aBuilder ? cast(nsIXULTemplateBuilder)aBuilder : null);
    CheckException(__result);
  }

  /**
   * Called after a template builder has rebuilt its content.
   * @param aBuilder the template builder that has rebuilt the content.
   */
  /* void didRebuild (in nsIXULTemplateBuilder aBuilder); */
  void DidRebuild(nsIXULTemplateBuilderD aBuilder){
    nsresult __result = inner.DidRebuild(aBuilder ? cast(nsIXULTemplateBuilder)aBuilder : null);
    CheckException(__result);
  }

private:
  nsIXULBuilderListener inner;

}

