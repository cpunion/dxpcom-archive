/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPrompt.idl
 */

module mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAuthPrompt;


public import mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIAuthPrompt */
/**
 * @status UNDER_REVIEW
 */
class nsIAuthPromptD : public nsISupportsD {

  static const nsIID IID = NS_IAUTHPROMPT_IID;


  alias nsIAuthPrompt InnerType;

  this(nsIAuthPrompt intr){
    super(intr);
    this.inner = intr;
  }

  nsIAuthPrompt opCast() {
    return inner;
  }

  void opAssign(nsIAuthPrompt value) {
    inner = value;
  }

  enum { SAVE_PASSWORD_NEVER = 0U }

  enum { SAVE_PASSWORD_FOR_SESSION = 1U }

  enum { SAVE_PASSWORD_PERMANENTLY = 2U }

  /**
     * Puts up a text input dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean prompt (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, in wstring defaultText, out wstring result); */
  PRBool Prompt(PRUnichar*dialogTitle, PRUnichar*text, PRUnichar*passwordRealm, PRUint32 savePassword, PRUnichar*defaultText, out PRUnichar*result){
    PRBool _retval;
    nsresult __result = inner.Prompt(dialogTitle, text, passwordRealm, savePassword, defaultText, &result, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Puts up a username/password dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean promptUsernameAndPassword (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, out wstring user, out wstring pwd); */
  PRBool PromptUsernameAndPassword(PRUnichar*dialogTitle, PRUnichar*text, PRUnichar*passwordRealm, PRUint32 savePassword, out PRUnichar*user, out PRUnichar*pwd){
    PRBool _retval;
    nsresult __result = inner.PromptUsernameAndPassword(dialogTitle, text, passwordRealm, savePassword, &user, &pwd, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Puts up a password dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean promptPassword (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, out wstring pwd); */
  PRBool PromptPassword(PRUnichar*dialogTitle, PRUnichar*text, PRUnichar*passwordRealm, PRUint32 savePassword, out PRUnichar*pwd){
    PRBool _retval;
    nsresult __result = inner.PromptPassword(dialogTitle, text, passwordRealm, savePassword, &pwd, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAuthPrompt inner;

}

