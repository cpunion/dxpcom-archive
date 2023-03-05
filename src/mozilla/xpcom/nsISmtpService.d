/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpService.idl
 */

module mozilla.xpcom.nsISmtpService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISmtpServer; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgStatusFeedback; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsISmtpService */
const char[] NS_ISMTPSERVICE_IID_STR = "fbaf0f10-ca9b-11d2-8063-006008128c4e";

const nsIID NS_ISMTPSERVICE_IID= 
  {0xfbaf0f10, 0xca9b, 0x11d2, 
    [ 0x80, 0x63, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsISmtpService : nsISupports {
  static const char[] IID_STR = NS_ISMTPSERVICE_IID_STR;
  static const nsIID IID = NS_ISMTPSERVICE_IID;

  /* void SendMailMessage (in nsIFileSpec aFilePath, in string aRecipients, in nsIMsgIdentity aSenderIdentity, in string aPassword, in nsIUrlListener aUrlListener, in nsIMsgStatusFeedback aStatusListener, in nsIInterfaceRequestor aNotificationCallbacks, out nsIURI aURL, out nsIRequest aRequest); */
  nsresult SendMailMessage(nsIFileSpec aFilePath, char *aRecipients, nsIMsgIdentity aSenderIdentity, char *aPassword, nsIUrlListener aUrlListener, nsIMsgStatusFeedback aStatusListener, nsIInterfaceRequestor aNotificationCallbacks, nsIURI *aURL, nsIRequest *aRequest);

  /**
   * Return the SMTP server that is associated with an identity.
   */
  /* void GetSmtpServerByIdentity (in nsIMsgIdentity aSenderIdentity, out nsISmtpServer aServer); */
  nsresult GetSmtpServerByIdentity(nsIMsgIdentity aSenderIdentity, nsISmtpServer *aServer);

  /**
   * A copy of the array of SMTP servers, as stored in the preferences
   */
  /* readonly attribute nsISupportsArray smtpServers; */
  nsresult GetSmtpServers(nsISupportsArray  *aSmtpServers);

  /**
   * The default server, across sessions of the app
   * (eventually there will be a session default which does not
   * persist past shutdown)
   */
  /* attribute nsISmtpServer defaultServer; */
  nsresult GetDefaultServer(nsISmtpServer  *aDefaultServer);
  nsresult SetDefaultServer(nsISmtpServer  aDefaultServer);

  /**
   * The "session default" server - this is never saved, and only used
   * for the current session. Always falls back to the default server
   * unless explicitly set.
   */
  /* attribute nsISmtpServer sessionDefaultServer; */
  nsresult GetSessionDefaultServer(nsISmtpServer  *aSessionDefaultServer);
  nsresult SetSessionDefaultServer(nsISmtpServer  aSessionDefaultServer);

  /**
   * create a new SMTP server.
   * Use this instead of createInstance(), so that the SMTP Service can
   * be aware of this server
   */
  /* nsISmtpServer createSmtpServer (); */
  nsresult CreateSmtpServer(nsISmtpServer *_retval);

  /**
   * find the server with the given hostname.
   * @param hostname the hostname of the server
   * @returns null if no server is found
   */
  /* nsISmtpServer findServer (in string username, in string hostname); */
  nsresult FindServer(char *username, char *hostname, nsISmtpServer *_retval);

  /**
   * look up the server with the given key
   * if the server does not exist, create it and add it to our list
   */
  /* nsISmtpServer getServerByKey (in string key); */
  nsresult GetServerByKey(char *key, nsISmtpServer *_retval);

  /**
   * delete the given server from the server list.
   * does nothing if the server does not exist
   * @param server the server to delete. Use findServer() if you only know
   *   the hostname
   */
  /* void deleteSmtpServer (in nsISmtpServer server); */
  nsresult DeleteSmtpServer(nsISmtpServer server);

}

