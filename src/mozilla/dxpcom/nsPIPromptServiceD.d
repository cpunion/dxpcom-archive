/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPromptService.idl
 */

module mozilla.dxpcom.nsPIPromptServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIPromptService;


public import mozilla.dxpcom.nsPIPromptServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIDialogParamBlock;

public import mozilla.dxpcom.nsIDialogParamBlockD;


/* starting wrapper class:    nsPIPromptService */
class nsPIPromptServiceD : public nsISupportsD {

  static const nsIID IID = NS_PIPROMPTSERVICE_IID;


  alias nsPIPromptService InnerType;

  this(nsPIPromptService intr){
    super(intr);
    this.inner = intr;
  }

  nsPIPromptService opCast() {
    return inner;
  }

  void opAssign(nsPIPromptService value) {
    inner = value;
  }

  /* void doDialog (in nsIDOMWindow aParent, in nsIDialogParamBlock aParamBlock, in string aChromeURL); */
  void DoDialog(nsIDOMWindowD aParent, nsIDialogParamBlockD aParamBlock, char*aChromeURL){
    nsresult __result = inner.DoDialog(aParent ? cast(nsIDOMWindow)aParent : null, aParamBlock ? cast(nsIDialogParamBlock)aParamBlock : null, aChromeURL);
    CheckException(__result);
  }

private:
  nsPIPromptService inner;

}

