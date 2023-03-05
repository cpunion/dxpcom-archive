/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerCommand.idl
 */

module mozilla.xpcom.nsIControllerCommand;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICommandParams;


/* starting interface:    nsIControllerCommand */
const char[] NS_ICONTROLLERCOMMAND_IID_STR = "0eae9a46-1dd2-11b2-aca0-9176f05fe9db";

const nsIID NS_ICONTROLLERCOMMAND_IID= 
  {0x0eae9a46, 0x1dd2, 0x11b2, 
    [ 0xac, 0xa0, 0x91, 0x76, 0xf0, 0x5f, 0xe9, 0xdb ]};

/**
 * nsIControllerCommand
 *
 * A generic command interface. You can register an nsIControllerCommand
 * with the nsIControllerCommandTable.
 */
extern(Windows)
interface nsIControllerCommand : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLERCOMMAND_IID_STR;
  static const nsIID IID = NS_ICONTROLLERCOMMAND_IID;

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
  nsresult IsCommandEnabled(char *aCommandName, nsISupports aCommandContext, PRBool *_retval);

  /* void getCommandStateParams (in string aCommandName, in nsICommandParams aParams, in nsISupports aCommandContext); */
  nsresult GetCommandStateParams(char *aCommandName, nsICommandParams aParams, nsISupports aCommandContext);

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
  nsresult DoCommand(char *aCommandName, nsISupports aCommandContext);

  /* void doCommandParams (in string aCommandName, in nsICommandParams aParams, in nsISupports aCommandContext); */
  nsresult DoCommandParams(char *aCommandName, nsICommandParams aParams, nsISupports aCommandContext);

}

