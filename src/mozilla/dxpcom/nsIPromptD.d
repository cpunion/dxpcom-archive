/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrompt.idl
 */

module mozilla.dxpcom.nsIPromptD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrompt;


public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrompt */
class nsIPromptD : public nsISupportsD {

  static const nsIID IID = NS_IPROMPT_IID;


  alias nsIPrompt InnerType;

  this(nsIPrompt intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrompt opCast() {
    return inner;
  }

  void opAssign(nsIPrompt value) {
    inner = value;
  }

  /* void alert (in wstring dialogTitle, in wstring text); */
  void Alert(PRUnichar*dialogTitle, PRUnichar*text){
    nsresult __result = inner.Alert(dialogTitle, text);
    CheckException(__result);
  }

  /* void alertCheck (in wstring dialogTitle, in wstring text, in wstring checkMsg, inout boolean checkValue); */
  void AlertCheck(PRUnichar*dialogTitle, PRUnichar*text, PRUnichar*checkMsg, out PRBool checkValue){
    nsresult __result = inner.AlertCheck(dialogTitle, text, checkMsg, &checkValue);
    CheckException(__result);
  }

  /* boolean confirm (in wstring dialogTitle, in wstring text); */
  PRBool Confirm(PRUnichar*dialogTitle, PRUnichar*text){
    PRBool _retval;
    nsresult __result = inner.Confirm(dialogTitle, text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean confirmCheck (in wstring dialogTitle, in wstring text, in wstring checkMsg, inout boolean checkValue); */
  PRBool ConfirmCheck(PRUnichar*dialogTitle, PRUnichar*text, PRUnichar*checkMsg, out PRBool checkValue){
    PRBool _retval;
    nsresult __result = inner.ConfirmCheck(dialogTitle, text, checkMsg, &checkValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  enum { BUTTON_POS_0 = 1U }

  enum { BUTTON_POS_1 = 256U }

  enum { BUTTON_POS_2 = 65536U }

  enum { BUTTON_TITLE_OK = 1U }

  enum { BUTTON_TITLE_CANCEL = 2U }

  enum { BUTTON_TITLE_YES = 3U }

  enum { BUTTON_TITLE_NO = 4U }

  enum { BUTTON_TITLE_SAVE = 5U }

  enum { BUTTON_TITLE_DONT_SAVE = 6U }

  enum { BUTTON_TITLE_REVERT = 7U }

  enum { BUTTON_TITLE_IS_STRING = 127U }

  enum { BUTTON_POS_0_DEFAULT = 0U }

  enum { BUTTON_POS_1_DEFAULT = 16777216U }

  enum { BUTTON_POS_2_DEFAULT = 33554432U }

  enum { BUTTON_DELAY_ENABLE = 67108864U }

  enum { STD_OK_CANCEL_BUTTONS = 513U }

  /* PRInt32 confirmEx (in wstring dialogTitle, in wstring text, in unsigned long buttonFlags, in wstring button0Title, in wstring button1Title, in wstring button2Title, in wstring checkMsg, inout boolean checkValue); */
  PRInt32 ConfirmEx(PRUnichar*dialogTitle, PRUnichar*text, PRUint32 buttonFlags, PRUnichar*button0Title, PRUnichar*button1Title, PRUnichar*button2Title, PRUnichar*checkMsg, out PRBool checkValue){
    PRInt32 _retval;
    nsresult __result = inner.ConfirmEx(dialogTitle, text, buttonFlags, button0Title, button1Title, button2Title, checkMsg, &checkValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean prompt (in wstring dialogTitle, in wstring text, inout wstring value, in wstring checkMsg, inout boolean checkValue); */
  PRBool Prompt(PRUnichar*dialogTitle, PRUnichar*text, out PRUnichar*value, PRUnichar*checkMsg, out PRBool checkValue){
    PRBool _retval;
    nsresult __result = inner.Prompt(dialogTitle, text, &value, checkMsg, &checkValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean promptPassword (in wstring dialogTitle, in wstring text, inout wstring password, in wstring checkMsg, inout boolean checkValue); */
  PRBool PromptPassword(PRUnichar*dialogTitle, PRUnichar*text, out PRUnichar*password, PRUnichar*checkMsg, out PRBool checkValue){
    PRBool _retval;
    nsresult __result = inner.PromptPassword(dialogTitle, text, &password, checkMsg, &checkValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean promptUsernameAndPassword (in wstring dialogTitle, in wstring text, inout wstring username, inout wstring password, in wstring checkMsg, inout boolean checkValue); */
  PRBool PromptUsernameAndPassword(PRUnichar*dialogTitle, PRUnichar*text, out PRUnichar*username, out PRUnichar*password, PRUnichar*checkMsg, out PRBool checkValue){
    PRBool _retval;
    nsresult __result = inner.PromptUsernameAndPassword(dialogTitle, text, &username, &password, checkMsg, &checkValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean select (in wstring dialogTitle, in wstring text, in PRUint32 count, [array, size_is (count)] in wstring selectList, out long outSelection); */
  PRBool Select(PRUnichar*dialogTitle, PRUnichar*text, PRUint32 count, PRUnichar**selectList, out PRInt32 outSelection){
    PRBool _retval;
    nsresult __result = inner.Select(dialogTitle, text, count, selectList, &outSelection, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPrompt inner;

}

