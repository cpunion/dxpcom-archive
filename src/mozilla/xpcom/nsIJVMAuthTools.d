/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMAuthTools.idl
 */

module mozilla.xpcom.nsIJVMAuthTools;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAuthenticationInfo */
const char[] NS_IAUTHENTICATIONINFO_IID_STR = "078a1b99-6be2-4a57-a749-378f4a506097";

const nsIID NS_IAUTHENTICATIONINFO_IID= 
  {0x078a1b99, 0x6be2, 0x4a57, 
    [ 0xa7, 0x49, 0x37, 0x8f, 0x4a, 0x50, 0x60, 0x97 ]};

extern(Windows)
interface nsIAuthenticationInfo : nsISupports {
  static const char[] IID_STR = NS_IAUTHENTICATIONINFO_IID_STR;
  static const nsIID IID = NS_IAUTHENTICATIONINFO_IID;

  /** 
    * AuthenticationInfo (username/password pair)
    */
  /* readonly attribute const_char_ptr username; */
  nsresult GetUsername(char * *aUsername);

  /* readonly attribute const_char_ptr password; */
  nsresult GetPassword(char * *aPassword);

}


/* starting interface:    nsIJVMAuthTools */
const char[] NS_IJVMAUTHTOOLS_IID_STR = "82274a32-a196-42ee-8e3b-fcb73e339518";

const nsIID NS_IJVMAUTHTOOLS_IID= 
  {0x82274a32, 0xa196, 0x42ee, 
    [ 0x8e, 0x3b, 0xfc, 0xb7, 0x3e, 0x33, 0x95, 0x18 ]};

extern(Windows)
interface nsIJVMAuthTools : nsISupports {
  static const char[] IID_STR = NS_IJVMAUTHTOOLS_IID_STR;
  static const nsIID IID = NS_IJVMAUTHTOOLS_IID;

  /**
     * Export AuthenticationInfo interface to JPI.
     *
     * @param protocol               the protocol that support (http/https)
     * @param host                   host name
     * @param port                   port number
     * @param scheme                 scheme
     * @param realm                  realm
     * @param nsIAuthenticationInfo  the AuthenticationInfo interface
     *                               that export
     *
     * @return  	             NS_OK if success, other if fail
     */
  /* nsIAuthenticationInfo GetAuthenticationInfo (in string protocol, in string host, in PRInt32 port, in string scheme, in string realm); */
  nsresult GetAuthenticationInfo(char *protocol, char *host, PRInt32 port, char *scheme, char *realm, nsIAuthenticationInfo *_retval);

  /**
     * Import username/password pair from JPI.
     *
     * @param protocol  the protocol that support (http/https)
     * @param host      host name
     * @param port      port number
     * @param scheme    scheme
     * @param realm     realm
     * @param username  user name
     * @param password  password
     *
     * @return          NS_OK if success, other if fail
     */
  /* void SetAuthenticationInfo (in string protocol, in string host, in PRInt32 port, in string scheme, in string realm, in string username, in string password); */
  nsresult SetAuthenticationInfo(char *protocol, char *host, PRInt32 port, char *scheme, char *realm, char *username, char *password);

}

