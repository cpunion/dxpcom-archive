/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthPromptWrapper.idl
 */

module mozilla.xpcom.nsIAuthPromptWrapper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsIAuthPromptWrapper */
const char[] NS_IAUTHPROMPTWRAPPER_IID_STR = "6228d644-17fe-11d4-8cee-0060b0fc14a3";

const nsIID NS_IAUTHPROMPTWRAPPER_IID= 
  {0x6228d644, 0x17fe, 0x11d4, 
    [ 0x8c, 0xee, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

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
extern(Windows)
interface nsIAuthPromptWrapper : nsIAuthPrompt {
  static const char[] IID_STR = NS_IAUTHPROMPTWRAPPER_IID_STR;
  static const nsIID IID = NS_IAUTHPROMPTWRAPPER_IID;

  /**
     * setPromptDialogs
     *
     * @param dialogs  the dialog implementation which will
     *                 be used to display the prompts
     */
  /* void setPromptDialogs (in nsIPrompt dialogs); */
  nsresult SetPromptDialogs(nsIPrompt dialogs);

}

