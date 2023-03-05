/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandManager.idl
 */

module mozilla.dxpcom.nsICommandManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICommandManager;


public import mozilla.dxpcom.nsICommandManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIObserver;
public import mozilla.dxpcom.nsIObserverD;
public import mozilla.xpcom.nsICommandParams;
public import mozilla.dxpcom.nsICommandParamsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsICommandManager */
class nsICommandManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDMANAGER_IID;


  alias nsICommandManager InnerType;

  this(nsICommandManager intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandManager opCast() {
    return inner;
  }

  void opAssign(nsICommandManager value) {
    inner = value;
  }

  /* void addCommandObserver (in nsIObserver aCommandObserver, in string aCommandToObserve); */
  void AddCommandObserver(nsIObserverD aCommandObserver, char*aCommandToObserve){
    nsresult __result = inner.AddCommandObserver(aCommandObserver ? cast(nsIObserver)aCommandObserver : null, aCommandToObserve);
    CheckException(__result);
  }

  /* void removeCommandObserver (in nsIObserver aCommandObserver, in string aCommandObserved); */
  void RemoveCommandObserver(nsIObserverD aCommandObserver, char*aCommandObserved){
    nsresult __result = inner.RemoveCommandObserver(aCommandObserver ? cast(nsIObserver)aCommandObserver : null, aCommandObserved);
    CheckException(__result);
  }

  /* boolean isCommandSupported (in string aCommandName, in nsIDOMWindow aTargetWindow); */
  PRBool IsCommandSupported(char*aCommandName, nsIDOMWindowD aTargetWindow){
    PRBool _retval;
    nsresult __result = inner.IsCommandSupported(aCommandName, aTargetWindow ? cast(nsIDOMWindow)aTargetWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isCommandEnabled (in string aCommandName, in nsIDOMWindow aTargetWindow); */
  PRBool IsCommandEnabled(char*aCommandName, nsIDOMWindowD aTargetWindow){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(aCommandName, aTargetWindow ? cast(nsIDOMWindow)aTargetWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getCommandState (in string aCommandName, in nsIDOMWindow aTargetWindow, in nsICommandParams aCommandParams); */
  void GetCommandState(char*aCommandName, nsIDOMWindowD aTargetWindow, nsICommandParamsD aCommandParams){
    nsresult __result = inner.GetCommandState(aCommandName, aTargetWindow ? cast(nsIDOMWindow)aTargetWindow : null, aCommandParams ? cast(nsICommandParams)aCommandParams : null);
    CheckException(__result);
  }

  /* void doCommand (in string aCommandName, in nsICommandParams aCommandParams, in nsIDOMWindow aTargetWindow); */
  void DoCommand(char*aCommandName, nsICommandParamsD aCommandParams, nsIDOMWindowD aTargetWindow){
    nsresult __result = inner.DoCommand(aCommandName, aCommandParams ? cast(nsICommandParams)aCommandParams : null, aTargetWindow ? cast(nsIDOMWindow)aTargetWindow : null);
    CheckException(__result);
  }

private:
  nsICommandManager inner;

}

