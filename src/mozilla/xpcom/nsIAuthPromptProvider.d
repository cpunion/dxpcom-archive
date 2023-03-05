/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPromptProvider.idl
 */

module mozilla.xpcom.nsIAuthPromptProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */


/* starting interface:    nsIAuthPromptProvider */
const char[] NS_IAUTHPROMPTPROVIDER_IID_STR = "129d3bd5-8a26-4b0b-b8a0-19fdea029196";

const nsIID NS_IAUTHPROMPTPROVIDER_IID= 
  {0x129d3bd5, 0x8a26, 0x4b0b, 
    [ 0xb8, 0xa0, 0x19, 0xfd, 0xea, 0x02, 0x91, 0x96 ]};

extern(Windows)
interface nsIAuthPromptProvider : nsISupports {
  static const char[] IID_STR = NS_IAUTHPROMPTPROVIDER_IID_STR;
  static const nsIID IID = NS_IAUTHPROMPTPROVIDER_IID;

  /**
     * Normal (non-proxy) prompt request.
     */
  enum { PROMPT_NORMAL = 0U };

  /**
     * Proxy auth request.
     */
  enum { PROMPT_PROXY = 1U };

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
  nsresult GetAuthPrompt(PRUint32 aPromptReason, nsIAuthPrompt *_retval);

}

