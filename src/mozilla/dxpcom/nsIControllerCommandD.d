/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerCommand.idl
 */

module mozilla.dxpcom.nsIControllerCommandD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIControllerCommand;


public import mozilla.dxpcom.nsIControllerCommandD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICommandParams;
public import mozilla.dxpcom.nsICommandParamsD;


/* starting wrapper class:    nsIControllerCommand */
/**
 * nsIControllerCommand
 *
 * A generic command interface. You can register an nsIControllerCommand
 * with the nsIControllerCommandTable.
 */
class nsIControllerCommandD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLERCOMMAND_IID;


  alias nsIControllerCommand InnerType;

  this(nsIControllerCommand intr){
    super(intr);
    this.inner = intr;
  }

  nsIControllerCommand opCast() {
    return inner;
  }

  void opAssign(nsIControllerCommand value) {
    inner = value;
  }

  /**
   * Returns true if the command is currently enabled. An nsIControllerCommand
   * can implement more than one commands; say, a group of related commands
   * (e.g. delete left/delete right). Because of this, the command name is
   * passed to each method.
   *
   * @param aCommandName  the name of the command for which we want the enabled
   *                      state.
   * @param aCommandContext    a cookie held by the nsIControllerCommandTable,
   *                  allowing the command to get some context information.
   *                  The contents of this cookie are implementation-defined.
   */
  /* boolean isCommandEnabled (in string aCommandName, in nsISupports aCommandContext); */
  PRBool IsCommandEnabled(char*aCommandName, nsISupportsD aCommandContext){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(aCommandName, aCommandContext ? cast(nsISupports)aCommandContext : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getCommandStateParams (in string aCommandName, in nsICommandParams aParams, in nsISupports aCommandContext); */
  void GetCommandStateParams(char*aCommandName, nsICommandParamsD aParams, nsISupportsD aCommandContext){
    nsresult __result = inner.GetCommandStateParams(aCommandName, aParams ? cast(nsICommandParams)aParams : null, aCommandContext ? cast(nsISupports)aCommandContext : null);
    CheckException(__result);
  }

  /**
   * Execute the name command.
   *
   * @param aCommandName  the name of the command to execute.
   * 
   * @param aCommandContext    a cookie held by the nsIControllerCommandTable,
   *                  allowing the command to get some context information.
   *                  The contents of this cookie are implementation-defined.
   */
  /* void doCommand (in string aCommandName, in nsISupports aCommandContext); */
  void DoCommand(char*aCommandName, nsISupportsD aCommandContext){
    nsresult __result = inner.DoCommand(aCommandName, aCommandContext ? cast(nsISupports)aCommandContext : null);
    CheckException(__result);
  }

  /* void doCommandParams (in string aCommandName, in nsICommandParams aParams, in nsISupports aCommandContext); */
  void DoCommandParams(char*aCommandName, nsICommandParamsD aParams, nsISupportsD aCommandContext){
    nsresult __result = inner.DoCommandParams(aCommandName, aParams ? cast(nsICommandParams)aParams : null, aCommandContext ? cast(nsISupports)aCommandContext : null);
    CheckException(__result);
  }

private:
  nsIControllerCommand inner;

}

