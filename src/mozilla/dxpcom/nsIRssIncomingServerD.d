/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRssIncomingServer.idl
 */

module mozilla.dxpcom.nsIRssIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRssIncomingServer;


public import mozilla.dxpcom.nsIRssIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIRssIncomingServer */
class nsIRssIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_IRSSINCOMINGSERVER_IID;


  alias nsIRssIncomingServer InnerType;

  this(nsIRssIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsIRssIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsIRssIncomingServer value) {
    inner = value;
  }

  /* readonly attribute nsILocalFile subscriptionsDataSourcePath; */
  nsILocalFileD  SubscriptionsDataSourcePath(){
    nsILocalFile value;
    nsresult __result = inner.GetSubscriptionsDataSourcePath(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /* readonly attribute nsILocalFile feedItemsDataSourcePath; */
  nsILocalFileD  FeedItemsDataSourcePath(){
    nsILocalFile value;
    nsresult __result = inner.GetFeedItemsDataSourcePath(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

private:
  nsIRssIncomingServer inner;

}

