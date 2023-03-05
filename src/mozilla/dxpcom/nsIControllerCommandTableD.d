/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerCommandTable.idl
 */

module mozilla.dxpcom.nsIControllerCommandTableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIControllerCommandTable;


public import mozilla.dxpcom.nsIControllerCommandTableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIControllerCommand;
public import mozilla.dxpcom.nsIControllerCommandD;
public import mozilla.xpcom.nsICommandParams;
public import mozilla.dxpcom.nsICommandParamsD;


/* starting wrapper class:    nsIControllerCommandTable */
/**
 * nsIControllerCommandTable
 * 
 * An interface via which a controller can maintain a series of commands,
 * and efficiently dispatch commands to their respective handlers.
 *
 * Controllers that use an nsIControllerCommandTable should support
 * nsIInterfaceRequestor, and be able to return an interface to their
 * controller command table via getInterface().
 * 
 */
class nsIControllerCommandTableD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLERCOMMANDTABLE_IID;


  alias nsIControllerCommandTable InnerType;

  this(nsIControllerCommandTable intr){
    super(intr);
    this.inner = intr;
  }

  nsIControllerCommandTable opCast() {
    return inner;
  }

  void opAssign(nsIControllerCommandTable value) {
    inner = value;
  }

  /**
   * Make this command table immutable, so that commands cannot
   * be registered or unregistered. Some command tables are made
   * mutable after command registration so that they can be 
   * used as singletons.
   */
  /* void makeImmutable (); */
  void MakeImmutable(){
    nsresult __result = inner.MakeImmutable();
    CheckException(__result);
  }

  /**
   * Register and unregister commands with the command table.
   *
   * @param aCommandName  the name of the command under which to register or
   *                      unregister the given command handler.
   *
   * @param aCommand      the handler for this command.
   */
  /* void registerCommand (in string aCommandName, in nsIControllerCommand aCommand); */
  void RegisterCommand(char*aCommandName, nsIControllerCommandD aCommand){
    nsresult __result = inner.RegisterCommand(aCommandName, aCommand ? cast(nsIControllerCommand)aCommand : null);
    CheckException(__result);
  }

  /* void unregisterCommand (in string aCommandName, in nsIControllerCommand aCommand); */
  void UnregisterCommand(char*aCommandName, nsIControllerCommandD aCommand){
    nsresult __result = inner.UnregisterCommand(aCommandName, aCommand ? cast(nsIControllerCommand)aCommand : null);
    CheckException(__result);
  }

  /**
   * Find the command handler which has been registered to handle the named command.
   *
   * @param aCommandName  the name of the command to find the handler for.
   */
  /* nsIControllerCommand findCommandHandler (in string aCommandName); */
  nsIControllerCommandD  FindCommandHandler(char*aCommandName){
    nsIControllerCommand _retval;
    nsresult __result = inner.FindCommandHandler(aCommandName, &_retval);
    CheckException(__result);
    return new nsIControllerCommandD(_retval);
  }

  /**
   * Get whether the named command is enabled.
   *
   * @param aCommandName    the name of the command to test
   * @param aCommandRefCon  the command context data
   */
  /* boolean isCommandEnabled (in string aCommandName, in nsISupports aCommandRefCon); */
  PRBool IsCommandEnabled(char*aCommandName, nsISupportsD aCommandRefCon){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(aCommandName, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Tell the command to udpate its state (if it is a state updating command)
   *
   * @param aCommandName    the name of the command to update
   * @param aCommandRefCon  the command context data
   */
  /* void updateCommandState (in string aCommandName, in nsISupports aCommandRefCon); */
  void UpdateCommandState(char*aCommandName, nsISupportsD aCommandRefCon){
    nsresult __result = inner.UpdateCommandState(aCommandName, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null);
    CheckException(__result);
  }

  /**
   * Get whether the named command is supported.
   *
   * @param aCommandName    the name of the command to test
   * @param aCommandRefCon  the command context data
   */
  /* boolean supportsCommand (in string aCommandName, in nsISupports aCommandRefCon); */
  PRBool SupportsCommand(char*aCommandName, nsISupportsD aCommandRefCon){
    PRBool _retval;
    nsresult __result = inner.SupportsCommand(aCommandName, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Execute the named command.
   *
   * @param aCommandName    the name of the command to execute
   * @param aCommandRefCon  the command context data
   */
  /* void doCommand (in string aCommandName, in nsISupports aCommandRefCon); */
  void DoCommand(char*aCommandName, nsISupportsD aCommandRefCon){
    nsresult __result = inner.DoCommand(aCommandName, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null);
    CheckException(__result);
  }

  /* void doCommandParams (in string aCommandName, in nsICommandParams aParam, in nsISupports aCommandRefCon); */
  void DoCommandParams(char*aCommandName, nsICommandParamsD aParam, nsISupportsD aCommandRefCon){
    nsresult __result = inner.DoCommandParams(aCommandName, aParam ? cast(nsICommandParams)aParam : null, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null);
    CheckException(__result);
  }

  /* void getCommandState (in string aCommandName, in nsICommandParams aParam, in nsISupports aCommandRefCon); */
  void GetCommandState(char*aCommandName, nsICommandParamsD aParam, nsISupportsD aCommandRefCon){
    nsresult __result = inner.GetCommandState(aCommandName, aParam ? cast(nsICommandParams)aParam : null, aCommandRefCon ? cast(nsISupports)aCommandRefCon : null);
    CheckException(__result);
  }

private:
  nsIControllerCommandTable inner;

}

