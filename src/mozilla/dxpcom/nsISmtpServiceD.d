/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpService.idl
 */

module mozilla.dxpcom.nsISmtpServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISmtpService;


public import mozilla.dxpcom.nsISmtpServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISmtpServer;

public import mozilla.dxpcom.nsISmtpServerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgStatusFeedback;

public import mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsISmtpService */
class nsISmtpServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISMTPSERVICE_IID;


  alias nsISmtpService InnerType;

  this(nsISmtpService intr){
    super(intr);
    this.inner = intr;
  }

  nsISmtpService opCast() {
    return inner;
  }

  void opAssign(nsISmtpService value) {
    inner = value;
  }

  /* void SendMailMessage (in nsIFileSpec aFilePath, in string aRecipients, in nsIMsgIdentity aSenderIdentity, in string aPassword, in nsIUrlListener aUrlListener, in nsIMsgStatusFeedback aStatusListener, in nsIInterfaceRequestor aNotificationCallbacks, out nsIURI aURL, out nsIRequest aRequest); */
  void SendMailMessage(nsIFileSpecD aFilePath, char*aRecipients, nsIMsgIdentityD aSenderIdentity, char*aPassword, nsIUrlListenerD aUrlListener, nsIMsgStatusFeedbackD aStatusListener, nsIInterfaceRequestorD aNotificationCallbacks, out nsIURID aURL, out nsIRequestD aRequest){
    nsIURI _aURL;
    nsIRequest _aRequest;
    nsresult __result = inner.SendMailMessage(aFilePath ? cast(nsIFileSpec)aFilePath : null, aRecipients, aSenderIdentity ? cast(nsIMsgIdentity)aSenderIdentity : null, aPassword, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aStatusListener ? cast(nsIMsgStatusFeedback)aStatusListener : null, aNotificationCallbacks ? cast(nsIInterfaceRequestor)aNotificationCallbacks : null, &_aURL, &_aRequest);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
    aRequest = _aRequest ? new nsIRequestD(_aRequest) : null;
  }

  /**
   * Return the SMTP server that is associated with an identity.
   */
  /* void GetSmtpServerByIdentity (in nsIMsgIdentity aSenderIdentity, out nsISmtpServer aServer); */
  void GetSmtpServerByIdentity(nsIMsgIdentityD aSenderIdentity, out nsISmtpServerD aServer){
    nsISmtpServer _aServer;
    nsresult __result = inner.GetSmtpServerByIdentity(aSenderIdentity ? cast(nsIMsgIdentity)aSenderIdentity : null, &_aServer);
    CheckException(__result);
    aServer = _aServer ? new nsISmtpServerD(_aServer) : null;
  }

  /**
   * A copy of the array of SMTP servers, as stored in the preferences
   */
  /* readonly attribute nsISupportsArray smtpServers; */
  nsISupportsArrayD  SmtpServers(){
    nsISupportsArray value;
    nsresult __result = inner.GetSmtpServers(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /**
   * The default server, across sessions of the app
   * (eventually there will be a session default which does not
   * persist past shutdown)
   */
  /* attribute nsISmtpServer defaultServer; */
  nsISmtpServerD  DefaultServer(){
    nsISmtpServer value;
    nsresult __result = inner.GetDefaultServer(&value);
    CheckException(__result);
    return new nsISmtpServerD(value);
  }
  void DefaultServer(nsISmtpServerD  aDefaultServer){
    nsISmtpServer value;
    nsresult __result = inner.SetDefaultServer(value);
    CheckException(__result);
  }

  /**
   * The "session default" server - this is never saved, and only used
   * for the current session. Always falls back to the default server
   * unless explicitly set.
   */
  /* attribute nsISmtpServer sessionDefaultServer; */
  nsISmtpServerD  SessionDefaultServer(){
    nsISmtpServer value;
    nsresult __result = inner.GetSessionDefaultServer(&value);
    CheckException(__result);
    return new nsISmtpServerD(value);
  }
  void SessionDefaultServer(nsISmtpServerD  aSessionDefaultServer){
    nsISmtpServer value;
    nsresult __result = inner.SetSessionDefaultServer(value);
    CheckException(__result);
  }

  /**
   * create a new SMTP server.
   * Use this instead of createInstance(), so that the SMTP Service can
   * be aware of this server
   */
  /* nsISmtpServer createSmtpServer (); */
  nsISmtpServerD  CreateSmtpServer(){
    nsISmtpServer _retval;
    nsresult __result = inner.CreateSmtpServer(&_retval);
    CheckException(__result);
    return new nsISmtpServerD(_retval);
  }

  /**
   * find the server with the given hostname.
   * @param hostname the hostname of the server
   * @returns null if no server is found
   */
  /* nsISmtpServer findServer (in string username, in string hostname); */
  nsISmtpServerD  FindServer(char*username, char*hostname){
    nsISmtpServer _retval;
    nsresult __result = inner.FindServer(username, hostname, &_retval);
    CheckException(__result);
    return new nsISmtpServerD(_retval);
  }

  /**
   * look up the server with the given key
   * if the server does not exist, create it and add it to our list
   */
  /* nsISmtpServer getServerByKey (in string key); */
  nsISmtpServerD  GetServerByKey(char*key){
    nsISmtpServer _retval;
    nsresult __result = inner.GetServerByKey(key, &_retval);
    CheckException(__result);
    return new nsISmtpServerD(_retval);
  }

  /**
   * delete the given server from the server list.
   * does nothing if the server does not exist
   * @param server the server to delete. Use findServer() if you only know
   *   the hostname
   */
  /* void deleteSmtpServer (in nsISmtpServer server); */
  void DeleteSmtpServer(nsISmtpServerD server){
    nsresult __result = inner.DeleteSmtpServer(server ? cast(nsISmtpServer)server : null);
    CheckException(__result);
  }

private:
  nsISmtpService inner;

}

