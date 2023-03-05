/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIXPIProxy.idl
 */

module mozilla.xpcom.nsPIXPIProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsPIXPIProxy */
const char[] NS_PIXPIPROXY_IID_STR = "6f9d2890-167d-11d5-8daf-000064657374";

const nsIID NS_PIXPIPROXY_IID= 
  {0x6f9d2890, 0x167d, 0x11d5, 
    [ 0x8d, 0xaf, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * nsPIXPIProxy
 *
 * Used to handle miscellaneous things that XPInstall needs to perform
 * over on the main UI thread.
 */
extern(Windows)
interface nsPIXPIProxy : nsISupports {
  static const char[] IID_STR = NS_PIXPIPROXY_IID_STR;
  static const nsIID IID = NS_PIXPIPROXY_IID;

  /* void refreshPlugins (in boolean reloadPages); */
  nsresult RefreshPlugins(PRBool reloadPages);

  /* void notifyRestartNeeded (); */
  nsresult NotifyRestartNeeded();

  /**
    * Puts up an alert dialog with an OK button.
    *
    * @param title
    *        Text to appear in the title of the dialog.
    * @param text
    *        Text to appear in the body of the dialog.
    */
  /* void alert (in wstring title, in wstring text); */
  nsresult Alert(PRUnichar *title, PRUnichar *text);

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
  nsresult ConfirmEx(PRUnichar *aDialogTitle, PRUnichar *aText, PRUint32 aButtonFlags, PRUnichar *aButton0Title, PRUnichar *aButton1Title, PRUnichar *aButton2Title, PRUnichar *aCheckMsg, PRBool *aCheckState, PRInt32 *_retval);

}

