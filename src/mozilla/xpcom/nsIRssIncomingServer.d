/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRssIncomingServer.idl
 */

module mozilla.xpcom.nsIRssIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsIRssIncomingServer */
const char[] NS_IRSSINCOMINGSERVER_IID_STR = "6d744e7f-2218-45c6-8734-998a56cb3c6d";

const nsIID NS_IRSSINCOMINGSERVER_IID= 
  {0x6d744e7f, 0x2218, 0x45c6, 
    [ 0x87, 0x34, 0x99, 0x8a, 0x56, 0xcb, 0x3c, 0x6d ]};

extern(Windows)
interface nsIRssIncomingServer : nsISupports {
  static const char[] IID_STR = NS_IRSSINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_IRSSINCOMINGSERVER_IID;

  /* readonly attribute nsILocalFile subscriptionsDataSourcePath; */
  nsresult GetSubscriptionsDataSourcePath(nsILocalFile  *aSubscriptionsDataSourcePath);

  /* readonly attribute nsILocalFile feedItemsDataSourcePath; */
  nsresult GetFeedItemsDataSourcePath(nsILocalFile  *aFeedItemsDataSourcePath);

}

