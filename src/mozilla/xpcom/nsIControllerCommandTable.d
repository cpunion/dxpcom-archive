/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerCommandTable.idl
 */

module mozilla.xpcom.nsIControllerCommandTable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIControllerCommand;
public import mozilla.xpcom.nsICommandParams;


/* starting interface:    nsIControllerCommandTable */
const char[] NS_ICONTROLLERCOMMANDTABLE_IID_STR = "d1a47834-6ad4-11d7-bfad-000393636592";

const nsIID NS_ICONTROLLERCOMMANDTABLE_IID= 
  {0xd1a47834, 0x6ad4, 0x11d7, 
    [ 0xbf, 0xad, 0x00, 0x03, 0x93, 0x63, 0x65, 0x92 ]};

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
extern(Windows)
interface nsIControllerCommandTable : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLERCOMMANDTABLE_IID_STR;
  static const nsIID IID = NS_ICONTROLLERCOMMANDTABLE_IID;

  /**
   * Make this command table immutable, so that commands cannot
   * be registered or unregistered. Some command tables are made
   * mutable after command registration so that they can be 
   * used as singletons.
   */
  /* void makeImmutable (); */
  nsresult MakeImmutable();

  /**
   * Register and unregister commands with the command table.
   *
   * @param aCommandName  the name of the command under which to register or
   *                      unregister the given command handler.
   *
   * @param aCommand      the handler for this command.
   */
  /* void registerCommand (in string aCommandName, in nsIControllerCommand aCommand); */
  nsresult RegisterCommand(char *aCommandName, nsIControllerCommand aCommand);

  /* void unregisterCommand (in string aCommandName, in nsIControllerCommand aCommand); */
  nsresult UnregisterCommand(char *aCommandName, nsIControllerCommand aCommand);

  /**
   * Find the command handler which has been registered to handle the named command.
   *
   * @param aCommandName  the name of the command to find the handler for.
   */
  /* nsIControllerCommand findCommandHandler (in string aCommandName); */
  nsresult FindCommandHandler(char *aCommandName, nsIControllerCommand *_retval);

  /**
   * Get whether the named command is enabled.
   *
   * @param aCommandName    the name of the command to test
   * @param aCommandRefCon  the command context data
   */
  /* boolean isCommandEnabled (in string aCommandName, in nsISupports aCommandRefCon); */
  nsresult IsCommandEnabled(char *aCommandName, nsISupports aCommandRefCon, PRBool *_retval);

  /**
   * Tell the command to udpate its state (if it is a state updating command)
   *
   * @param aCommandName    the name of the command to update
   * @param aCommandRefCon  the command context data
   */
  /* void updateCommandState (in string aCommandName, in nsISupports aCommandRefCon); */
  nsresult UpdateCommandState(char *aCommandName, nsISupports aCommandRefCon);

  /**
   * Get whether the named command is supported.
   *
   * @param aCommandName    the name of the command to test
   * @param aCommandRefCon  the command context data
   */
  /* boolean supportsCommand (in string aCommandName, in nsISupports aCommandRefCon); */
  nsresult SupportsCommand(char *aCommandName, nsISupports aCommandRefCon, PRBool *_retval);

  /**
   * Execute the named command.
   *
   * @param aCommandName    the name of the command to execute
   * @param aCommandRefCon  the command context data
   */
  /* void doCommand (in string aCommandName, in nsISupports aCommandRefCon); */
  nsresult DoCommand(char *aCommandName, nsISupports aCommandRefCon);

  /* void doCommandParams (in string aCommandName, in nsICommandParams aParam, in nsISupports aCommandRefCon); */
  nsresult DoCommandParams(char *aCommandName, nsICommandParams aParam, nsISupports aCommandRefCon);

  /* void getCommandState (in string aCommandName, in nsICommandParams aParam, in nsISupports aCommandRefCon); */
  nsresult GetCommandState(char *aCommandName, nsICommandParams aParam, nsISupports aCommandRefCon);

}

