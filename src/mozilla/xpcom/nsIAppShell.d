/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppShell.idl
 */

module mozilla.xpcom.nsIAppShell;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIEventQueue;

/* starting interface:    nsIAppShell */
const char[] NS_IAPPSHELL_IID_STR = "a0757c31-eeac-11d1-9ec1-00aa002fb821";

const nsIID NS_IAPPSHELL_IID= 
  {0xa0757c31, 0xeeac, 0x11d1, 
    [ 0x9e, 0xc1, 0x00, 0xaa, 0x00, 0x2f, 0xb8, 0x21 ]};

extern(Windows)
interface nsIAppShell : nsISupports {
  static const char[] IID_STR = NS_IAPPSHELL_IID_STR;
  static const nsIID IID = NS_IAPPSHELL_IID;

  /**
  * Creates an application shell
  */
  /* void Create (inout int argc, inout string argv); */
  nsresult Create(int *argc, char **argv);

  /**
  * Enter an event loop.
  * Don't leave until application exits.
  */
  /* void Run (); */
  nsresult Run();

  /**
  * Prepare to process events. 
  */
  /* void Spinup (); */
  nsresult Spinup();

  /**
  * Prepare to stop processing events.  
  */
  /* void Spindown (); */
  nsresult Spindown();

  /**
  * An event queue has been created or destroyed. Hook or unhook it from
  * your system, as necessary.
  * @param aQueue the queue in question
  * @param aListen PR_TRUE for a new queue wanting hooking up. PR_FALSE
  *                for a queue wanting to be unhooked.
  */
  /* void ListenToEventQueue (in nsIEventQueue aQueue, in PRBool aListen); */
  nsresult ListenToEventQueue(nsIEventQueue * aQueue, PRBool aListen);

  /**
  * After event dispatch execute app specific code
  */
  /* void GetNativeEvent (in PRBoolRef aRealEvent, in voidPtrRef aEvent); */
  nsresult GetNativeEvent(PRBool * aRealEvent, void * * aEvent);

  /**
  * After event dispatch execute app specific code
  */
  /* void DispatchNativeEvent (in PRBool aRealEvent, in voidPtr aEvent); */
  nsresult DispatchNativeEvent(PRBool aRealEvent, void * aEvent);

  /**
  * Exit the handle event loop
  */
  /* void Exit (); */
  nsresult Exit();

}

