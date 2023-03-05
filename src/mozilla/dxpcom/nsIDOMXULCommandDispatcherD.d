/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCommandDispatcher.idl
 */

module mozilla.dxpcom.nsIDOMXULCommandDispatcherD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULCommandDispatcher;


public import mozilla.dxpcom.nsIDOMXULCommandDispatcherD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIController;

public import mozilla.dxpcom.nsIControllerD;

public import mozilla.xpcom.nsIControllers;

public import mozilla.dxpcom.nsIControllersD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIDOMXULCommandDispatcher */
class nsIDOMXULCommandDispatcherD : public nsISupportsD {

  static const nsIID IID = NS_IDOMXULCOMMANDDISPATCHER_IID;


  alias nsIDOMXULCommandDispatcher InnerType;

  this(nsIDOMXULCommandDispatcher intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULCommandDispatcher opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULCommandDispatcher value) {
    inner = value;
  }

  /* attribute nsIDOMElement focusedElement; */
  nsIDOMElementD  FocusedElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetFocusedElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }
  void FocusedElement(nsIDOMElementD  aFocusedElement){
    nsIDOMElement value;
    nsresult __result = inner.SetFocusedElement(value);
    CheckException(__result);
  }

  /* attribute nsIDOMWindow focusedWindow; */
  nsIDOMWindowD  FocusedWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetFocusedWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void FocusedWindow(nsIDOMWindowD  aFocusedWindow){
    nsIDOMWindow value;
    nsresult __result = inner.SetFocusedWindow(value);
    CheckException(__result);
  }

  /* void addCommandUpdater (in nsIDOMElement updater, in DOMString events, in DOMString targets); */
  void AddCommandUpdater(nsIDOMElementD updater, wchar[] events, wchar[] targets){
    scope auto _events = new AString(events);
    scope auto _targets = new AString(targets);
    nsresult __result = inner.AddCommandUpdater(updater ? cast(nsIDOMElement)updater : null, cast(nsAString*)_events, cast(nsAString*)_targets);
    CheckException(__result);
  }

  /* void removeCommandUpdater (in nsIDOMElement updater); */
  void RemoveCommandUpdater(nsIDOMElementD updater){
    nsresult __result = inner.RemoveCommandUpdater(updater ? cast(nsIDOMElement)updater : null);
    CheckException(__result);
  }

  /* void updateCommands (in DOMString eventName); */
  void UpdateCommands(wchar[] eventName){
    scope auto _eventName = new AString(eventName);
    nsresult __result = inner.UpdateCommands(cast(nsAString*)_eventName);
    CheckException(__result);
  }

  /* nsIController getControllerForCommand (in string command); */
  nsIControllerD  GetControllerForCommand(char*command){
    nsIController _retval;
    nsresult __result = inner.GetControllerForCommand(command, &_retval);
    CheckException(__result);
    return new nsIControllerD(_retval);
  }

  /* nsIControllers getControllers (); */
  nsIControllersD  GetControllers(){
    nsIControllers _retval;
    nsresult __result = inner.GetControllers(&_retval);
    CheckException(__result);
    return new nsIControllersD(_retval);
  }

  /* void advanceFocus (); */
  void AdvanceFocus(){
    nsresult __result = inner.AdvanceFocus();
    CheckException(__result);
  }

  /* void rewindFocus (); */
  void RewindFocus(){
    nsresult __result = inner.RewindFocus();
    CheckException(__result);
  }

  /* void advanceFocusIntoSubtree (in nsIDOMElement elt); */
  void AdvanceFocusIntoSubtree(nsIDOMElementD elt){
    nsresult __result = inner.AdvanceFocusIntoSubtree(elt ? cast(nsIDOMElement)elt : null);
    CheckException(__result);
  }

  /* attribute boolean suppressFocusScroll; */
  PRBool SuppressFocusScroll(){
    PRBool value;
    nsresult __result = inner.GetSuppressFocusScroll(&value);
    CheckException(__result);
    return value;
  }
  void SuppressFocusScroll(PRBool aSuppressFocusScroll){
    nsresult __result = inner.SetSuppressFocusScroll(aSuppressFocusScroll);
    CheckException(__result);
  }

private:
  nsIDOMXULCommandDispatcher inner;

}

