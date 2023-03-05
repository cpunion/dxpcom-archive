/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllers.idl
 */

module mozilla.dxpcom.nsIControllersD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIControllers;


public import mozilla.dxpcom.nsIControllersD;

public import mozilla.xpcom.nsIController;
public import mozilla.dxpcom.nsIControllerD;

public import mozilla.xpcom.nsIDOMXULCommandDispatcher;

public import mozilla.dxpcom.nsIDOMXULCommandDispatcherD;


/* starting wrapper class:    nsIControllers */
class nsIControllersD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLERS_IID;


  alias nsIControllers InnerType;

  this(nsIControllers intr){
    super(intr);
    this.inner = intr;
  }

  nsIControllers opCast() {
    return inner;
  }

  void opAssign(nsIControllers value) {
    inner = value;
  }

  /* attribute nsIDOMXULCommandDispatcher commandDispatcher; */
  nsIDOMXULCommandDispatcherD  CommandDispatcher(){
    nsIDOMXULCommandDispatcher value;
    nsresult __result = inner.GetCommandDispatcher(&value);
    CheckException(__result);
    return new nsIDOMXULCommandDispatcherD(value);
  }
  void CommandDispatcher(nsIDOMXULCommandDispatcherD  aCommandDispatcher){
    nsIDOMXULCommandDispatcher value;
    nsresult __result = inner.SetCommandDispatcher(value);
    CheckException(__result);
  }

  /* nsIController getControllerForCommand (in string command); */
  nsIControllerD  GetControllerForCommand(char*command){
    nsIController _retval;
    nsresult __result = inner.GetControllerForCommand(command, &_retval);
    CheckException(__result);
    return new nsIControllerD(_retval);
  }

  /* void insertControllerAt (in unsigned long index, in nsIController controller); */
  void InsertControllerAt(PRUint32 index, nsIControllerD controller){
    nsresult __result = inner.InsertControllerAt(index, controller ? cast(nsIController)controller : null);
    CheckException(__result);
  }

  /* nsIController removeControllerAt (in unsigned long index); */
  nsIControllerD  RemoveControllerAt(PRUint32 index){
    nsIController _retval;
    nsresult __result = inner.RemoveControllerAt(index, &_retval);
    CheckException(__result);
    return new nsIControllerD(_retval);
  }

  /* nsIController getControllerAt (in unsigned long index); */
  nsIControllerD  GetControllerAt(PRUint32 index){
    nsIController _retval;
    nsresult __result = inner.GetControllerAt(index, &_retval);
    CheckException(__result);
    return new nsIControllerD(_retval);
  }

  /* void appendController (in nsIController controller); */
  void AppendController(nsIControllerD controller){
    nsresult __result = inner.AppendController(controller ? cast(nsIController)controller : null);
    CheckException(__result);
  }

  /* void removeController (in nsIController controller); */
  void RemoveController(nsIControllerD controller){
    nsresult __result = inner.RemoveController(controller ? cast(nsIController)controller : null);
    CheckException(__result);
  }

  /* unsigned long getControllerId (in nsIController controller); */
  PRUint32 GetControllerId(nsIControllerD controller){
    PRUint32 _retval;
    nsresult __result = inner.GetControllerId(controller ? cast(nsIController)controller : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIController getControllerById (in unsigned long controllerID); */
  nsIControllerD  GetControllerById(PRUint32 controllerID){
    nsIController _retval;
    nsresult __result = inner.GetControllerById(controllerID, &_retval);
    CheckException(__result);
    return new nsIControllerD(_retval);
  }

  /* unsigned long getControllerCount (); */
  PRUint32 GetControllerCount(){
    PRUint32 _retval;
    nsresult __result = inner.GetControllerCount(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIControllers inner;

}

