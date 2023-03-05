/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIXPIProxy.idl
 */

module mozilla.dxpcom.nsPIXPIProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIXPIProxy;


public import mozilla.dxpcom.nsPIXPIProxyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsPIXPIProxy */
/**
 * nsPIXPIProxy
 *
 * Used to handle miscellaneous things that XPInstall needs to perform
 * over on the main UI thread.
 */
class nsPIXPIProxyD : public nsISupportsD {

  static const nsIID IID = NS_PIXPIPROXY_IID;


  alias nsPIXPIProxy InnerType;

  this(nsPIXPIProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsPIXPIProxy opCast() {
    return inner;
  }

  void opAssign(nsPIXPIProxy value) {
    inner = value;
  }

  /* void refreshPlugins (in boolean reloadPages); */
  void RefreshPlugins(PRBool reloadPages){
    nsresult __result = inner.RefreshPlugins(reloadPages);
    CheckException(__result);
  }

  /* void notifyRestartNeeded (); */
  void NotifyRestartNeeded(){
    nsresult __result = inner.NotifyRestartNeeded();
    CheckException(__result);
  }

  /**
    * Puts up an alert dialog with an OK button.
    *
    * @param title
    *        Text to appear in the title of the dialog.
    * @param text
    *        Text to appear in the body of the dialog.
    */
  /* void alert (in wstring title, in wstring text); */
  void Alert(PRUnichar*title, PRUnichar*text){
    nsresult __result = inner.Alert(title, text);
    CheckException(__result);
  }

  /**
     * Puts up a dialog with up to 3 buttons and an optional, labeled checkbox.
     *
     * @param aDialogTitle
     *        Text to appear in the title of the dialog.
     * @param aText
     *        Text to appear in the body of the dialog.
     * @param aButtonFlags
     *        A combination of Button Flags.
     * @param aButton0Title
     *        Used when button 0 uses TITLE_IS_STRING
     * @param aButton1Title
     *        Used when button 1 uses TITLE_IS_STRING
     * @param aButton2Title
     *        Used when button 2 uses TITLE_IS_STRING
     * @param aCheckMsg
     *        Text to appear with the checkbox.  Null if no checkbox.
     * @param aCheckState    
     *        Contains the initial checked state of the checkbox when this method
     *        is called and the final checked state after this method returns.
     *
     * @return index of the button pressed.
     *
     * Buttons are numbered 0 - 2. The implementation can decide whether the
     * sequence goes from right to left or left to right.  Button 0 is the
     * default button unless one of the Button Default Flags is specified.
     *
     * The value for aButtonFlags is constructed using the constants defined by
     * nsIPromptService.
     *
     * @see nsIPromptService
     */
  /* PRInt32 confirmEx (in wstring aDialogTitle, in wstring aText, in unsigned long aButtonFlags, in wstring aButton0Title, in wstring aButton1Title, in wstring aButton2Title, in wstring aCheckMsg, inout boolean aCheckState); */
  PRInt32 ConfirmEx(PRUnichar*aDialogTitle, PRUnichar*aText, PRUint32 aButtonFlags, PRUnichar*aButton0Title, PRUnichar*aButton1Title, PRUnichar*aButton2Title, PRUnichar*aCheckMsg, out PRBool aCheckState){
    PRInt32 _retval;
    nsresult __result = inner.ConfirmEx(aDialogTitle, aText, aButtonFlags, aButton0Title, aButton1Title, aButton2Title, aCheckMsg, &aCheckState, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsPIXPIProxy inner;

}

