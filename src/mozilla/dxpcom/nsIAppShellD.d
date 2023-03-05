/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppShell.idl
 */

module mozilla.dxpcom.nsIAppShellD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAppShell;


public import mozilla.dxpcom.nsIAppShellD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAppShell */
class nsIAppShellD : public nsISupportsD {

  static const nsIID IID = NS_IAPPSHELL_IID;


  alias nsIAppShell InnerType;

  this(nsIAppShell intr){
    super(intr);
    this.inner = intr;
  }

  nsIAppShell opCast() {
    return inner;
  }

  void opAssign(nsIAppShell value) {
    inner = value;
  }

  /**
  * Creates an application shell
  */
  /* void Create (inout int argc, inout string argv); */
  void Create(out int argc, out char*argv){
    nsresult __result = inner.Create(&argc, &argv);
    CheckException(__result);
  }

  /**
  * Enter an event loop.
  * Don't leave until application exits.
  */
  /* void Run (); */
  void Run(){
    nsresult __result = inner.Run();
    CheckException(__result);
  }

  /**
  * Prepare to process events. 
  */
  /* void Spinup (); */
  void Spinup(){
    nsresult __result = inner.Spinup();
    CheckException(__result);
  }

  /**
  * Prepare to stop processing events.  
  */
  /* void Spindown (); */
  void Spindown(){
    nsresult __result = inner.Spindown();
    CheckException(__result);
  }

  /**
  * An event queue has been created or destroyed. Hook or unhook it from
  * your system, as necessary.
  * @param aQueue the queue in question
  * @param aListen PR_TRUE for a new queue wanting hooking up. PR_FALSE
  *                for a queue wanting to be unhooked.
  */
  /* void ListenToEventQueue (in nsIEventQueue aQueue, in PRBool aListen); */
  void ListenToEventQueue(nsIEventQueue * aQueue, PRBool aListen){
    nsresult __result = inner.ListenToEventQueue(aQueue, aListen);
    CheckException(__result);
  }

  /**
  * After event dispatch execute app specific code
  */
  /* void GetNativeEvent (in PRBoolRef aRealEvent, in voidPtrRef aEvent); */
  void GetNativeEvent(PRBool * aRealEvent, void * * aEvent){
    nsresult __result = inner.GetNativeEvent(aRealEvent, aEvent);
    CheckException(__result);
  }

  /**
  * After event dispatch execute app specific code
  */
  /* void DispatchNativeEvent (in PRBool aRealEvent, in voidPtr aEvent); */
  void DispatchNativeEvent(PRBool aRealEvent, void * aEvent){
    nsresult __result = inner.DispatchNativeEvent(aRealEvent, aEvent);
    CheckException(__result);
  }

  /**
  * Exit the handle event loop
  */
  /* void Exit (); */
  void Exit(){
    nsresult __result = inner.Exit();
    CheckException(__result);
  }

private:
  nsIAppShell inner;

}

