/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCommandDispatcher.idl
 */

module mozilla.xpcom.nsIDOMXULCommandDispatcher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIController; /* forward declaration */

public import mozilla.xpcom.nsIControllers; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIDOMXULCommandDispatcher */
const char[] NS_IDOMXULCOMMANDDISPATCHER_IID_STR = "f3c50361-14fe-11d3-bf87-00105a1b0627";

const nsIID NS_IDOMXULCOMMANDDISPATCHER_IID= 
  {0xf3c50361, 0x14fe, 0x11d3, 
    [ 0xbf, 0x87, 0x00, 0x10, 0x5a, 0x1b, 0x06, 0x27 ]};

extern(Windows)
interface nsIDOMXULCommandDispatcher : nsISupports {
  static const char[] IID_STR = NS_IDOMXULCOMMANDDISPATCHER_IID_STR;
  static const nsIID IID = NS_IDOMXULCOMMANDDISPATCHER_IID;

  /* attribute nsIDOMElement focusedElement; */
  nsresult GetFocusedElement(nsIDOMElement  *aFocusedElement);
  nsresult SetFocusedElement(nsIDOMElement  aFocusedElement);

  /* attribute nsIDOMWindow focusedWindow; */
  nsresult GetFocusedWindow(nsIDOMWindow  *aFocusedWindow);
  nsresult SetFocusedWindow(nsIDOMWindow  aFocusedWindow);

  /* void addCommandUpdater (in nsIDOMElement updater, in DOMString events, in DOMString targets); */
  nsresult AddCommandUpdater(nsIDOMElement updater, nsAString * events, nsAString * targets);

  /* void removeCommandUpdater (in nsIDOMElement updater); */
  nsresult RemoveCommandUpdater(nsIDOMElement updater);

  /* void updateCommands (in DOMString eventName); */
  nsresult UpdateCommands(nsAString * eventName);

  /* nsIController getControllerForCommand (in string command); */
  nsresult GetControllerForCommand(char *command, nsIController *_retval);

  /* nsIControllers getControllers (); */
  nsresult GetControllers(nsIControllers *_retval);

  /* void advanceFocus (); */
  nsresult AdvanceFocus();

  /* void rewindFocus (); */
  nsresult RewindFocus();

  /* void advanceFocusIntoSubtree (in nsIDOMElement elt); */
  nsresult AdvanceFocusIntoSubtree(nsIDOMElement elt);

  /* attribute boolean suppressFocusScroll; */
  nsresult GetSuppressFocusScroll(PRBool *aSuppressFocusScroll);
  nsresult SetSuppressFocusScroll(PRBool aSuppressFocusScroll);

}

