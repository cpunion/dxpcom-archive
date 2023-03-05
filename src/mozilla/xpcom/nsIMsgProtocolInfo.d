/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgProtocolInfo.idl
 */

module mozilla.xpcom.nsIMsgProtocolInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIMsgProtocolInfo */
const char[] NS_IMSGPROTOCOLINFO_IID_STR = "53d0214a-689c-11d3-80f5-00a0c900d445";

const nsIID NS_IMSGPROTOCOLINFO_IID= 
  {0x53d0214a, 0x689c, 0x11d3, 
    [ 0x80, 0xf5, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsIMsgProtocolInfo : nsISupports {
  static const char[] IID_STR = NS_IMSGPROTOCOLINFO_IID_STR;
  static const nsIID IID = NS_IMSGPROTOCOLINFO_IID;

  /**
     * the default path to store local data for this type of
     * server. Each server is usually in a subdirectory below this
     */
  /* attribute nsIFileSpec defaultLocalPath; */
  nsresult GetDefaultLocalPath(nsIFileSpec  *aDefaultLocalPath);
  nsresult SetDefaultLocalPath(nsIFileSpec  aDefaultLocalPath);

  /**
     * the IID of the protocol-specific interface for this server
     * usually used from JS to dynamically get server-specific attributes
     */
  /* readonly attribute nsIIDPtr serverIID; */
  nsresult GetServerIID(nsIID * *aServerIID);

  /**
     * does this server type require a username?
     * for instance, news does not but IMAP/POP do
     */
  /* readonly attribute boolean requiresUsername; */
  nsresult GetRequiresUsername(PRBool *aRequiresUsername);

  /**
     * if the pretty name of the server should
     * just be the e-mail address. Otherwise it usually
     * ends up being something like "news on hostname"
     */
  /* readonly attribute boolean preflightPrettyNameWithEmailAddress; */
  nsresult GetPreflightPrettyNameWithEmailAddress(PRBool *aPreflightPrettyNameWithEmailAddress);

  /**
     * can this type of server be removed from the account manager?
     * for instance, local mail is not removable
     */
  /* readonly attribute boolean canDelete; */
  nsresult GetCanDelete(PRBool *aCanDelete);

  /**
     * can this type of server log in at startup?
     */
  /* readonly attribute boolean canLoginAtStartUp; */
  nsresult GetCanLoginAtStartUp(PRBool *aCanLoginAtStartUp);

  /**
     * can you duplicate this server?
     * for instance, local mail is unique and should not be duplicated.
     */
  /* readonly attribute boolean canDuplicate; */
  nsresult GetCanDuplicate(PRBool *aCanDuplicate);

  /* long getDefaultServerPort (in boolean isSecure); */
  nsresult GetDefaultServerPort(PRBool isSecure, PRInt32 *_retval);

  /**
     * An attribute that tell us whether on not we can 
     * get messages for the given server type 
	 * this is poorly named right now.
	 * it's really is there an inbox for this type?
	 * XXX todo, rename this.
     */
  /* readonly attribute boolean canGetMessages; */
  nsresult GetCanGetMessages(PRBool *aCanGetMessages);

  /** 
	 * do messages arrive for this server
	 * if they do, we can use our junk controls on it.
	 */
  /* readonly attribute boolean canGetIncomingMessages; */
  nsresult GetCanGetIncomingMessages(PRBool *aCanGetIncomingMessages);

  /**
     * do biff by default?
     */
  /* readonly attribute boolean defaultDoBiff; */
  nsresult GetDefaultDoBiff(PRBool *aDefaultDoBiff);

  /**
     * do we need to show compose message link in the AccountCentral page ? 
     */
  /* readonly attribute boolean showComposeMsgLink; */
  nsresult GetShowComposeMsgLink(PRBool *aShowComposeMsgLink);

  /**
     * do we need to build special folder URIs ? In case of IMAP, special folders
     * like 'Sent', 'Drafts' and 'Templates' are not created unless needed.
     * But, we do need to create folder URIs to reflect the choices in the UI in
     * copies and folders settings panel.
     */
  /* readonly attribute boolean needToBuildSpecialFolderURIs; */
  nsresult GetNeedToBuildSpecialFolderURIs(PRBool *aNeedToBuildSpecialFolderURIs);

  /**
     * do we allow special folder deletion ?
     */
  /* readonly attribute boolean specialFoldersDeletionAllowed; */
  nsresult GetSpecialFoldersDeletionAllowed(PRBool *aSpecialFoldersDeletionAllowed);

}

