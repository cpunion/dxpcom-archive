/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINoIncomingServer.idl
 */

module mozilla.xpcom.nsINoIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsINoIncomingServer */
const char[] NS_INOINCOMINGSERVER_IID_STR = "739b7fb0-5f37-11d3-896b-004005263078";

const nsIID NS_INOINCOMINGSERVER_IID= 
  {0x739b7fb0, 0x5f37, 0x11d3, 
    [ 0x89, 0x6b, 0x00, 0x40, 0x05, 0x26, 0x30, 0x78 ]};

extern(Windows)
interface nsINoIncomingServer : nsISupports {
  static const char[] IID_STR = NS_INOINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_INOINCOMINGSERVER_IID;

  /* void copyDefaultMessages (in string folderNameOnDisk, in nsIFileSpec parentDir); */
  nsresult CopyDefaultMessages(char *folderNameOnDisk, nsIFileSpec parentDir);

}

