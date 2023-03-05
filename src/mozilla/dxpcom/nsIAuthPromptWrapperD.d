/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPromptWrapper.idl
 */

module mozilla.dxpcom.nsIAuthPromptWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAuthPromptWrapper;


public import mozilla.dxpcom.nsIAuthPromptWrapperD;

public import mozilla.xpcom.nsIAuthPrompt;
public import mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIAuthPromptWrapper */
/**
 * nsIAuthPromptWrapper
 *
 * An override of nsIAuthPrompt which performs some action
 * on the data going through nsIAuthPrompt methods. Persisting
 * data from the prompts and using it to pre-fill subsequent prompts
 * would be one such action.
 *
 * @status
 */
class nsIAuthPromptWrapperD : public nsIAuthPromptD {

  static const nsIID IID = NS_IAUTHPROMPTWRAPPER_IID;


  alias nsIAuthPromptWrapper InnerType;

  this(nsIAuthPromptWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIAuthPromptWrapper opCast() {
    return inner;
  }

  void opAssign(nsIAuthPromptWrapper value) {
    inner = value;
  }

  /**
     * setPromptDialogs
     *
     * @param dialogs  the dialog implementation which will
     *                 be used to display the prompts
     */
  /* void setPromptDialogs (in nsIPrompt dialogs); */
  void SetPromptDialogs(nsIPromptD dialogs){
    nsresult __result = inner.SetPromptDialogs(dialogs ? cast(nsIPrompt)dialogs : null);
    CheckException(__result);
  }

private:
  nsIAuthPromptWrapper inner;

}

