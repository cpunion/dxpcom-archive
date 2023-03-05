/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPromptService.idl
 */

module mozilla.xpcom.nsIPromptService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIPromptService */
const char[] NS_IPROMPTSERVICE_IID_STR = "1630c61a-325e-49ca-8759-a31b16c47aa5";

const nsIID NS_IPROMPTSERVICE_IID= 
  {0x1630c61a, 0x325e, 0x49ca, 
    [ 0x87, 0x59, 0xa3, 0x1b, 0x16, 0xc4, 0x7a, 0xa5 ]};

/**
 * This is the interface to the embeddable prompt service; the service that
 * implements nsIPrompt.  Its interface is designed to be just nsIPrompt, each
 * method modified to take a parent window parameter.
 *
 * Accesskeys can be attached to buttons and checkboxes by inserting an &
 * before the accesskey character in the checkbox message or button title.  For
 * a real &, use && instead.  (A "button title" generally refers to the text
 * label of a button.)
 *
 * One note: in all cases, the parent window parameter can be null.  However,
 * these windows are all intended to have parents.  So when no parent is
 * specified, the implementation should try hard to find a suitable foster
 * parent.
 *
 * Implementations are free to choose how they present the various button
 * types.  For example, while prompts that give the user a choice between OK
 * and Cancel are required to return a boolean value indicating whether or not
 * the user accepted the prompt (pressed OK) or rejected the prompt (pressed
 * Cancel), the implementation of this interface could very well speak the
 * prompt to the user instead of rendering any visual user-interface.  The
 * standard button types are merely idioms used to convey the nature of the
 * choice the user is to make.
 *
 * Because implementations of this interface may loosely interpret the various
 * button types, it is advised that text messages passed to these prompts do
 * not refer to the button types by name.  For example, it is inadvisable to
 * tell the user to "Press OK to proceed."  Instead, such a prompt might be
 * rewritten to ask the user: "Would you like to proceed?"
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIPromptService : nsISupports {
  static const char[] IID_STR = NS_IPROMPTSERVICE_IID_STR;
  static const nsIID IID = NS_IPROMPTSERVICE_IID;

  /**
   * Puts up an alert dialog with an OK button.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   */
  /* void alert (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText); */
  nsresult Alert(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText);

  /**
   * Puts up an alert dialog with an OK button and a labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aCheckMsg
   *        Text to appear with the checkbox.
   * @param aCheckState
   *        Contains the initial checked state of the checkbox when this method
   *        is called and the final checked state after this method returns.
   */
  /* void alertCheck (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult AlertCheck(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUnichar *aCheckMsg, PRBool *aCheckState);

  /**
   * Puts up a dialog with OK and Cancel buttons.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   *
   * @return true for OK, false for Cancel
   */
  /* boolean confirm (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText); */
  nsresult Confirm(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRBool *_retval);

  /**
   * Puts up a dialog with OK and Cancel buttons and a labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aCheckMsg
   *        Text to appear with the checkbox.
   * @param aCheckState
   *        Contains the initial checked state of the checkbox when this method
   *        is called and the final checked state after this method returns.
   *
   * @return true for OK, false for Cancel
   */
  /* boolean confirmCheck (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult ConfirmCheck(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUnichar *aCheckMsg, PRBool *aCheckState, PRBool *_retval);

  /**
   * Button Flags
   *
   * The following flags are combined to form the aButtonFlags parameter passed
   * to confirmEx.  See confirmEx for more information on how the flags may be
   * combined.
   */
/**
   * Button Position Flags
   */
  enum { BUTTON_POS_0 = 1U };

  enum { BUTTON_POS_1 = 256U };

  enum { BUTTON_POS_2 = 65536U };

  /**
   * Button Title Flags (used to set the labels of buttons in the prompt)
   */
  enum { BUTTON_TITLE_OK = 1U };

  enum { BUTTON_TITLE_CANCEL = 2U };

  enum { BUTTON_TITLE_YES = 3U };

  enum { BUTTON_TITLE_NO = 4U };

  enum { BUTTON_TITLE_SAVE = 5U };

  enum { BUTTON_TITLE_DONT_SAVE = 6U };

  enum { BUTTON_TITLE_REVERT = 7U };

  enum { BUTTON_TITLE_IS_STRING = 127U };

  /**
   * Button Default Flags (used to select which button is the default one)
   */
  enum { BUTTON_POS_0_DEFAULT = 0U };

  enum { BUTTON_POS_1_DEFAULT = 16777216U };

  enum { BUTTON_POS_2_DEFAULT = 33554432U };

  /**
   * Causes the buttons to be initially disabled.  They are enabled after a
   * timeout expires.  The implementation may interpret this loosely as the
   * intent is to ensure that the user does not click through a security dialog
   * too quickly.  Strictly speaking, the implementation could choose to ignore
   * this flag.
   */
  enum { BUTTON_DELAY_ENABLE = 67108864U };

  /**
   * Selects the standard set of OK/Cancel buttons.
   */
  enum { STD_OK_CANCEL_BUTTONS = 513U };

  /**
   * Selects the standard set of Yes/No buttons.
   */
  enum { STD_YES_NO_BUTTONS = 1027U };

  /**
   * Puts up a dialog with up to 3 buttons and an optional, labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
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
   * A button may use a predefined title, specified by one of the Button Title
   * Flags values.  Each title value can be multiplied by a position value to
   * assign the title to a particular button.  If BUTTON_TITLE_IS_STRING is
   * used for a button, the string parameter for that button will be used.  If
   * the value for a button position is zero, the button will not be shown.
   *
   * In general, aButtonFlags is constructed per the following example:
   *
   *   aButtonFlags = (BUTTON_POS_0) * (BUTTON_TITLE_AAA) +
   *                  (BUTTON_POS_1) * (BUTTON_TITLE_BBB) +
   *                   BUTTON_POS_1_DEFAULT;
   *
   * where "AAA" and "BBB" correspond to one of the button titles.
   */
  /* PRInt32 confirmEx (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, in unsigned long aButtonFlags, in wstring aButton0Title, in wstring aButton1Title, in wstring aButton2Title, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult ConfirmEx(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUint32 aButtonFlags, PRUnichar *aButton0Title, PRUnichar *aButton1Title, PRUnichar *aButton2Title, PRUnichar *aCheckMsg, PRBool *aCheckState, PRInt32 *_retval);

  /**
   * Puts up a dialog with an edit field and an optional, labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aValue
   *        Contains the default value for the dialog field when this method
   *        is called (null value is ok).  Upon return, if the user pressed
   *        OK, then this parameter contains a newly allocated string value.
   *        Otherwise, the parameter's value is unmodified.
   * @param aCheckMsg
   *        Text to appear with the checkbox.  If null, check box will not be shown.
   * @param aCheckState
   *        Contains the initial checked state of the checkbox when this method
   *        is called and the final checked state after this method returns.
   *
   * @return true for OK, false for Cancel.
   */
  /* boolean prompt (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, inout wstring aValue, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult Prompt(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUnichar **aValue, PRUnichar *aCheckMsg, PRBool *aCheckState, PRBool *_retval);

  /**
   * Puts up a dialog with an edit field, a password field, and an optional,
   * labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aUsername
   *        Contains the default value for the username field when this method
   *        is called (null value is ok).  Upon return, if the user pressed OK,
   *        then this parameter contains a newly allocated string value.
   *        Otherwise, the parameter's value is unmodified.
   * @param aPassword
   *        Contains the default value for the password field when this method
   *        is called (null value is ok).  Upon return, if the user pressed OK,
   *        then this parameter contains a newly allocated string value.
   *        Otherwise, the parameter's value is unmodified.
   * @param aCheckMsg
   *        Text to appear with the checkbox.  If null, check box will not be shown.
   * @param aCheckState
   *        Contains the initial checked state of the checkbox when this method
   *        is called and the final checked state after this method returns.
   *
   * @return true for OK, false for Cancel.
   */
  /* boolean promptUsernameAndPassword (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, inout wstring aUsername, inout wstring aPassword, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult PromptUsernameAndPassword(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUnichar **aUsername, PRUnichar **aPassword, PRUnichar *aCheckMsg, PRBool *aCheckState, PRBool *_retval);

  /**
   * Puts up a dialog with a password field and an optional, labeled checkbox.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aPassword
   *        Contains the default value for the password field when this method
   *        is called (null value is ok).  Upon return, if the user pressed OK,
   *        then this parameter contains a newly allocated string value.
   *        Otherwise, the parameter's value is unmodified.
   * @param aCheckMsg
   *        Text to appear with the checkbox.  If null, check box will not be shown.
   * @param aCheckState
   *        Contains the initial checked state of the checkbox when this method
   *        is called and the final checked state after this method returns.
   *
   * @return true for OK, false for Cancel.
   */
  /* boolean promptPassword (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, inout wstring aPassword, in wstring aCheckMsg, inout boolean aCheckState); */
  nsresult PromptPassword(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUnichar **aPassword, PRUnichar *aCheckMsg, PRBool *aCheckState, PRBool *_retval);

  /**
   * Puts up a dialog box which has a list box of strings from which the user
   * may make a single selection.
   *
   * @param aParent
   *        The parent window or null.
   * @param aDialogTitle
   *        Text to appear in the title of the dialog.
   * @param aText
   *        Text to appear in the body of the dialog.
   * @param aCount
   *        The length of the aSelectList array parameter.
   * @param aSelectList
   *        The list of strings to display.
   * @param aOutSelection
   *        Contains the index of the selected item in the list when this
   *        method returns true.
   *
   * @return true for OK, false for Cancel.
   */
  /* boolean select (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText, in PRUint32 aCount, [array, size_is (aCount)] in wstring aSelectList, out long aOutSelection); */
  nsresult Select(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText, PRUint32 aCount, PRUnichar **aSelectList, PRInt32 *aOutSelection, PRBool *_retval);

}

