/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIController.idl
 */

module mozilla.xpcom.nsIController;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIController */
const char[] NS_ICONTROLLER_IID_STR = "d5b61b82-1da4-11d3-bf87-00105a1b0627";

const nsIID NS_ICONTROLLER_IID= 
  {0xd5b61b82, 0x1da4, 0x11d3, 
    [ 0xbf, 0x87, 0x00, 0x10, 0x5a, 0x1b, 0x06, 0x27 ]};

extern(Windows)
interface nsIController : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLER_IID_STR;
  static const nsIID IID = NS_ICONTROLLER_IID;

  /* boolean isCommandEnabled (in string command); */
  nsresult IsCommandEnabled(char *command, PRBool *_retval);

  /* boolean supportsCommand (in string command); */
  nsresult SupportsCommand(char *command, PRBool *_retval);

  /* void doCommand (in string command); */
  nsresult DoCommand(char *command);

  /* void onEvent (in string eventName); */
  nsresult OnEvent(char *eventName);

}

public import mozilla.xpcom.nsICommandParams; /* forward declaration */


/* starting interface:    nsICommandController */
const char[] NS_ICOMMANDCONTROLLER_IID_STR = "ebe55080-c8a9-11d5-a73c-dd620d6e04bc";

const nsIID NS_ICOMMANDCONTROLLER_IID= 
  {0xebe55080, 0xc8a9, 0x11d5, 
    [ 0xa7, 0x3c, 0xdd, 0x62, 0x0d, 0x6e, 0x04, 0xbc ]};

extern(Windows)
interface nsICommandController : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDCONTROLLER_IID_STR;
  static const nsIID IID = NS_ICOMMANDCONTROLLER_IID;

  /* void getCommandStateWithParams (in string command, in nsICommandParams aCommandParams); */
  nsresult GetCommandStateWithParams(char *command, nsICommandParams aCommandParams);

  /* void doCommandWithParams (in string command, in nsICommandParams aCommandParams); */
  nsresult DoCommandWithParams(char *command, nsICommandParams aCommandParams);

}

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIControllerCommandGroup */
const char[] NS_ICONTROLLERCOMMANDGROUP_IID_STR = "9f82c404-1c7b-11d5-a73c-eca43ca836fc";

const nsIID NS_ICONTROLLERCOMMANDGROUP_IID= 
  {0x9f82c404, 0x1c7b, 0x11d5, 
    [ 0xa7, 0x3c, 0xec, 0xa4, 0x3c, 0xa8, 0x36, 0xfc ]};

extern(Windows)
interface nsIControllerCommandGroup : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLERCOMMANDGROUP_IID_STR;
  static const nsIID IID = NS_ICONTROLLERCOMMANDGROUP_IID;

  /* void addCommandToGroup (in string aCommand, in string aGroup); */
  nsresult AddCommandToGroup(char *aCommand, char *aGroup);

  /* void removeCommandFromGroup (in string aCommand, in string aGroup); */
  nsresult RemoveCommandFromGroup(char *aCommand, char *aGroup);

  /* boolean isCommandInGroup (in string aCommand, in string aGroup); */
  nsresult IsCommandInGroup(char *aCommand, char *aGroup, PRBool *_retval);

  /* nsISimpleEnumerator getGroupsEnumerator (); */
  nsresult GetGroupsEnumerator(nsISimpleEnumerator *_retval);

  /* nsISimpleEnumerator getEnumeratorForGroup (in string aGroup); */
  nsresult GetEnumeratorForGroup(char *aGroup, nsISimpleEnumerator *_retval);

}

