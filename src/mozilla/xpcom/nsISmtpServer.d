/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpServer.idl
 */

module mozilla.xpcom.nsISmtpServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */


/* starting interface:    nsISmtpServer */
const char[] NS_ISMTPSERVER_IID_STR = "556ee1e9-8221-4c00-a502-8ce44f029b47";

const nsIID NS_ISMTPSERVER_IID= 
  {0x556ee1e9, 0x8221, 0x4c00, 
    [ 0xa5, 0x02, 0x8c, 0xe4, 0x4f, 0x02, 0x9b, 0x47 ]};

extern(Windows)
interface nsISmtpServer : nsISupports {
  static const char[] IID_STR = NS_ISMTPSERVER_IID_STR;
  static const nsIID IID = NS_ISMTPSERVER_IID;

  /* attribute string key; */
  nsresult GetKey(char * *aKey);
  nsresult SetKey(char * aKey);

  /* attribute AUTF8String description; */
  nsresult GetDescription(nsACString * aDescription);
  nsresult SetDescription(nsACString * aDescription);

  /* attribute string hostname; */
  nsresult GetHostname(char * *aHostname);
  nsresult SetHostname(char * aHostname);

  /* attribute PRInt32 port; */
  nsresult GetPort(PRInt32 *aPort);
  nsresult SetPort(PRInt32 aPort);

  /* attribute string username; */
  nsresult GetUsername(char * *aUsername);
  nsresult SetUsername(char * aUsername);

  /* attribute string password; */
  nsresult GetPassword(char * *aPassword);
  nsresult SetPassword(char * aPassword);

  /* readonly attribute string displayname; */
  nsresult GetDisplayname(char * *aDisplayname);

  /* attribute string redirectorType; */
  nsresult GetRedirectorType(char * *aRedirectorType);
  nsresult SetRedirectorType(char * aRedirectorType);

  /* attribute long authMethod; */
  nsresult GetAuthMethod(PRInt32 *aAuthMethod);
  nsresult SetAuthMethod(PRInt32 aAuthMethod);

  /* readonly attribute boolean trySecAuth; */
  nsresult GetTrySecAuth(PRBool *aTrySecAuth);

  /* attribute long trySSL; */
  nsresult GetTrySSL(PRInt32 *aTrySSL);
  nsresult SetTrySSL(PRInt32 aTrySSL);

  /* readonly attribute string serverURI; */
  nsresult GetServerURI(char * *aServerURI);

  /* string getPasswordWithUI (in wstring promptString, in wstring promptTitle, in nsIAuthPrompt netPrompt); */
  nsresult GetPasswordWithUI(PRUnichar *promptString, PRUnichar *promptTitle, nsIAuthPrompt netPrompt, char **_retval);

  /* void getUsernamePasswordWithUI (in wstring promptString, in wstring promptTitle, in nsIAuthPrompt netPrompt, out string userid, out string password); */
  nsresult GetUsernamePasswordWithUI(PRUnichar *promptString, PRUnichar *promptTitle, nsIAuthPrompt netPrompt, char **userid, char **password);

  /* void forgetPassword (); */
  nsresult ForgetPassword();

  /* void clearAllValues (); */
  nsresult ClearAllValues();

}

