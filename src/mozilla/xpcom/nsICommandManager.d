/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandManager.idl
 */

module mozilla.xpcom.nsICommandManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIObserver;
public import mozilla.xpcom.nsICommandParams;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsICommandManager */
const char[] NS_ICOMMANDMANAGER_IID_STR = "080d2001-f91e-11d4-a73c-f9242928207c";

const nsIID NS_ICOMMANDMANAGER_IID= 
  {0x080d2001, 0xf91e, 0x11d4, 
    [ 0xa7, 0x3c, 0xf9, 0x24, 0x29, 0x28, 0x20, 0x7c ]};

extern(Windows)
interface nsICommandManager : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDMANAGER_IID_STR;
  static const nsIID IID = NS_ICOMMANDMANAGER_IID;

  /* void addCommandObserver (in nsIObserver aCommandObserver, in string aCommandToObserve); */
  nsresult AddCommandObserver(nsIObserver aCommandObserver, char *aCommandToObserve);

  /* void removeCommandObserver (in nsIObserver aCommandObserver, in string aCommandObserved); */
  nsresult RemoveCommandObserver(nsIObserver aCommandObserver, char *aCommandObserved);

  /* boolean isCommandSupported (in string aCommandName, in nsIDOMWindow aTargetWindow); */
  nsresult IsCommandSupported(char *aCommandName, nsIDOMWindow aTargetWindow, PRBool *_retval);

  /* boolean isCommandEnabled (in string aCommandName, in nsIDOMWindow aTargetWindow); */
  nsresult IsCommandEnabled(char *aCommandName, nsIDOMWindow aTargetWindow, PRBool *_retval);

  /* void getCommandState (in string aCommandName, in nsIDOMWindow aTargetWindow, in nsICommandParams aCommandParams); */
  nsresult GetCommandState(char *aCommandName, nsIDOMWindow aTargetWindow, nsICommandParams aCommandParams);

  /* void doCommand (in string aCommandName, in nsICommandParams aCommandParams, in nsIDOMWindow aTargetWindow); */
  nsresult DoCommand(char *aCommandName, nsICommandParams aCommandParams, nsIDOMWindow aTargetWindow);

}

