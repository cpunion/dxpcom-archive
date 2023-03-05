/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPrompt.idl
 */

module mozilla.xpcom.nsIAuthPrompt;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsIAuthPrompt */
const char[] NS_IAUTHPROMPT_IID_STR = "2f977d45-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IAUTHPROMPT_IID= 
  {0x2f977d45, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

/**
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIAuthPrompt : nsISupports {
  static const char[] IID_STR = NS_IAUTHPROMPT_IID_STR;
  static const nsIID IID = NS_IAUTHPROMPT_IID;

  enum { SAVE_PASSWORD_NEVER = 0U };

  enum { SAVE_PASSWORD_FOR_SESSION = 1U };

  enum { SAVE_PASSWORD_PERMANENTLY = 2U };

  /**
     * Puts up a text input dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean prompt (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, in wstring defaultText, out wstring result); */
  nsresult Prompt(PRUnichar *dialogTitle, PRUnichar *text, PRUnichar *passwordRealm, PRUint32 savePassword, PRUnichar *defaultText, PRUnichar **result, PRBool *_retval);

  /**
     * Puts up a username/password dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean promptUsernameAndPassword (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, out wstring user, out wstring pwd); */
  nsresult PromptUsernameAndPassword(PRUnichar *dialogTitle, PRUnichar *text, PRUnichar *passwordRealm, PRUint32 savePassword, PRUnichar **user, PRUnichar **pwd, PRBool *_retval);

  /**
     * Puts up a password dialog with OK and Cancel buttons.
     * @return true for OK, false for Cancel
     */
  /* boolean promptPassword (in wstring dialogTitle, in wstring text, in wstring passwordRealm, in PRUint32 savePassword, out wstring pwd); */
  nsresult PromptPassword(PRUnichar *dialogTitle, PRUnichar *text, PRUnichar *passwordRealm, PRUint32 savePassword, PRUnichar **pwd, PRBool *_retval);

}

