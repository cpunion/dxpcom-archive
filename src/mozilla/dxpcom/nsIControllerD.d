/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIController.idl
 */

module mozilla.dxpcom.nsIControllerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIController;


public import mozilla.dxpcom.nsIControllerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIController */
class nsIControllerD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLER_IID;


  alias nsIController InnerType;

  this(nsIController intr){
    super(intr);
    this.inner = intr;
  }

  nsIController opCast() {
    return inner;
  }

  void opAssign(nsIController value) {
    inner = value;
  }

  /* boolean isCommandEnabled (in string command); */
  PRBool IsCommandEnabled(char*command){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(command, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean supportsCommand (in string command); */
  PRBool SupportsCommand(char*command){
    PRBool _retval;
    nsresult __result = inner.SupportsCommand(command, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void doCommand (in string command); */
  void DoCommand(char*command){
    nsresult __result = inner.DoCommand(command);
    CheckException(__result);
  }

  /* void onEvent (in string eventName); */
  void OnEvent(char*eventName){
    nsresult __result = inner.OnEvent(eventName);
    CheckException(__result);
  }

private:
  nsIController inner;

}

public import mozilla.xpcom.nsICommandParams;

public import mozilla.dxpcom.nsICommandParamsD;


/* starting wrapper class:    nsICommandController */
class nsICommandControllerD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDCONTROLLER_IID;


  alias nsICommandController InnerType;

  this(nsICommandController intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandController opCast() {
    return inner;
  }

  void opAssign(nsICommandController value) {
    inner = value;
  }

  /* void getCommandStateWithParams (in string command, in nsICommandParams aCommandParams); */
  void GetCommandStateWithParams(char*command, nsICommandParamsD aCommandParams){
    nsresult __result = inner.GetCommandStateWithParams(command, aCommandParams ? cast(nsICommandParams)aCommandParams : null);
    CheckException(__result);
  }

  /* void doCommandWithParams (in string command, in nsICommandParams aCommandParams); */
  void DoCommandWithParams(char*command, nsICommandParamsD aCommandParams){
    nsresult __result = inner.DoCommandWithParams(command, aCommandParams ? cast(nsICommandParams)aCommandParams : null);
    CheckException(__result);
  }

private:
  nsICommandController inner;

}

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIControllerCommandGroup */
class nsIControllerCommandGroupD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLERCOMMANDGROUP_IID;


  alias nsIControllerCommandGroup InnerType;

  this(nsIControllerCommandGroup intr){
    super(intr);
    this.inner = intr;
  }

  nsIControllerCommandGroup opCast() {
    return inner;
  }

  void opAssign(nsIControllerCommandGroup value) {
    inner = value;
  }

  /* void addCommandToGroup (in string aCommand, in string aGroup); */
  void AddCommandToGroup(char*aCommand, char*aGroup){
    nsresult __result = inner.AddCommandToGroup(aCommand, aGroup);
    CheckException(__result);
  }

  /* void removeCommandFromGroup (in string aCommand, in string aGroup); */
  void RemoveCommandFromGroup(char*aCommand, char*aGroup){
    nsresult __result = inner.RemoveCommandFromGroup(aCommand, aGroup);
    CheckException(__result);
  }

  /* boolean isCommandInGroup (in string aCommand, in string aGroup); */
  PRBool IsCommandInGroup(char*aCommand, char*aGroup){
    PRBool _retval;
    nsresult __result = inner.IsCommandInGroup(aCommand, aGroup, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISimpleEnumerator getGroupsEnumerator (); */
  nsISimpleEnumeratorD  GetGroupsEnumerator(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetGroupsEnumerator(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* nsISimpleEnumerator getEnumeratorForGroup (in string aGroup); */
  nsISimpleEnumeratorD  GetEnumeratorForGroup(char*aGroup){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetEnumeratorForGroup(aGroup, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIControllerCommandGroup inner;

}

