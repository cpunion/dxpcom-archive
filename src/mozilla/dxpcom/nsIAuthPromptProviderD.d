/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPromptProvider.idl
 */

module mozilla.dxpcom.nsIAuthPromptProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAuthPromptProvider;


public import mozilla.dxpcom.nsIAuthPromptProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;


/* starting wrapper class:    nsIAuthPromptProvider */
class nsIAuthPromptProviderD : public nsISupportsD {

  static const nsIID IID = NS_IAUTHPROMPTPROVIDER_IID;


  alias nsIAuthPromptProvider InnerType;

  this(nsIAuthPromptProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIAuthPromptProvider opCast() {
    return inner;
  }

  void opAssign(nsIAuthPromptProvider value) {
    inner = value;
  }

  /**
     * Normal (non-proxy) prompt request.
     */
  enum { PROMPT_NORMAL = 0U }

  /**
     * Proxy auth request.
     */
  enum { PROMPT_PROXY = 1U }

  /**
     * Request a nsIAuthPrompt interface for the given prompt reason;
     * @throws NS_ERROR_NOT_AVAILABLE if no prompt is allowed or
     * available for the given reason.
     *
     * @param aPromptReason   The reason for the auth prompt;
     *                        one of @PROMPT_NORMAL or @PROMPT_PROXY
     * @returns a nsIAuthPrompt interface, or throws NS_ERROR_NOT_AVAILABLE
     */
  /* nsIAuthPrompt getAuthPrompt (in PRUint32 aPromptReason); */
  nsIAuthPromptD  GetAuthPrompt(PRUint32 aPromptReason){
    nsIAuthPrompt _retval;
    nsresult __result = inner.GetAuthPrompt(aPromptReason, &_retval);
    CheckException(__result);
    return new nsIAuthPromptD(_retval);
  }

private:
  nsIAuthPromptProvider inner;

}

