/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllers.idl
 */

module mozilla.xpcom.nsIControllers;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIController;

public import mozilla.xpcom.nsIDOMXULCommandDispatcher; /* forward declaration */


/* starting interface:    nsIControllers */
const char[] NS_ICONTROLLERS_IID_STR = "a5ed3a01-7cc7-11d3-bf87-00105a1b0627";

const nsIID NS_ICONTROLLERS_IID= 
  {0xa5ed3a01, 0x7cc7, 0x11d3, 
    [ 0xbf, 0x87, 0x00, 0x10, 0x5a, 0x1b, 0x06, 0x27 ]};

extern(Windows)
interface nsIControllers : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLERS_IID_STR;
  static const nsIID IID = NS_ICONTROLLERS_IID;

  /* attribute nsIDOMXULCommandDispatcher commandDispatcher; */
  nsresult GetCommandDispatcher(nsIDOMXULCommandDispatcher  *aCommandDispatcher);
  nsresult SetCommandDispatcher(nsIDOMXULCommandDispatcher  aCommandDispatcher);

  /* nsIController getControllerForCommand (in string command); */
  nsresult GetControllerForCommand(char *command, nsIController *_retval);

  /* void insertControllerAt (in unsigned long index, in nsIController controller); */
  nsresult InsertControllerAt(PRUint32 index, nsIController controller);

  /* nsIController removeControllerAt (in unsigned long index); */
  nsresult RemoveControllerAt(PRUint32 index, nsIController *_retval);

  /* nsIController getControllerAt (in unsigned long index); */
  nsresult GetControllerAt(PRUint32 index, nsIController *_retval);

  /* void appendController (in nsIController controller); */
  nsresult AppendController(nsIController controller);

  /* void removeController (in nsIController controller); */
  nsresult RemoveController(nsIController controller);

  /* unsigned long getControllerId (in nsIController controller); */
  nsresult GetControllerId(nsIController controller, PRUint32 *_retval);

  /* nsIController getControllerById (in unsigned long controllerID); */
  nsresult GetControllerById(PRUint32 controllerID, nsIController *_retval);

  /* unsigned long getControllerCount (); */
  nsresult GetControllerCount(PRUint32 *_retval);

}

