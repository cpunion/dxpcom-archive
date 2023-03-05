/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPAutoCompleteSession.idl
 */

module mozilla.xpcom.nsILDAPAutoCompleteSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAutoCompleteSession;

public import mozilla.xpcom.nsILDAPURL; /* forward declaration */

public import mozilla.xpcom.nsILDAPAutoCompFormatter; /* forward declaration */

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */

public import mozilla.xpcom.nsIArray;


/* starting interface:    nsILDAPAutoCompleteSession */
const char[] NS_ILDAPAUTOCOMPLETESESSION_IID_STR = "e7f26534-f96c-4c87-803c-30cdf0bc2973";

const nsIID NS_ILDAPAUTOCOMPLETESESSION_IID= 
  {0xe7f26534, 0xf96c, 0x4c87, 
    [ 0x80, 0x3c, 0x30, 0xcd, 0xf0, 0xbc, 0x29, 0x73 ]};

/**
 * Extends nsIAutoCompleteSession to have various LDAP-specific parameters.
 * and output format.
 */
extern(Windows)
interface nsILDAPAutoCompleteSession : nsIAutoCompleteSession {
  static const char[] IID_STR = NS_ILDAPAUTOCOMPLETESESSION_IID_STR;
  static const nsIID IID = NS_ILDAPAUTOCOMPLETESESSION_IID;

  /**
     * A template used to construct the RFC 1960 LDAP search filter to use 
     * while autocompleting.  
     *
     * The authoritative documentation for the format in use can be found at 
     * at <http://docs.iplanet.com/docs/manuals/dirsdk/csdk41/html/filter.htm>.
     * The Linux/OpenLDAP man page for ldapfilter.conf(5) does a pretty decent
     * job as well, however.
     *
     * As of this writing, the "@mozilla.org/autocompleteSession;1?type=ldap" 
     * contractid happens to use a default value of 
     * (|(cn=%v1*%v2-*)(mail=%v1*%v2-*)(sn=%v1*%v2-*))
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter
     * @exception NS_ERROR_OUT_OF_MEMORY    Getter couldn't allocate string
     */
  /* attribute AUTF8String filterTemplate; */
  nsresult GetFilterTemplate(nsACString * aFilterTemplate);
  nsresult SetFilterTemplate(nsACString * aFilterTemplate);

  /**
     * At most this many nsIAutoCompleteItems will be returned.  This
     * is useful for keeping bandwidth usage over slow-speed
     * connections as well as ensuring that the number of choices
     * offered in the UI is manageble.
     *
     * 1-65535 are interpreted literally
     * 0 means "unlimited"
     * -1 uses the default limit for the LDAP connection in use
     * 
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter
     * @exception NS_ERROR_ILLEGAL_VALUE    Out-of-range value passed to setter
     */
  /* attribute long maxHits; */
  nsresult GetMaxHits(PRInt32 *aMaxHits);
  nsresult SetMaxHits(PRInt32 aMaxHits);

  /**
     * Strings shorter than this will return |nsIAutoCompleteStatus::ignored|
     * rather than triggering a search.  This allows browsers to be
     * configured to not search on substrings so short that they
     * aren't indexed by the LDAP server (such searches can use
     * significantly more server resources and return a very large
     * number of entries).  cjkMinStringLength is used for CJK
     * languages, and minStringLength for everything else.  As of this
     * writing, the "@mozilla.org/autocompleteSession;1?type=ldap"
     * contractid uses defaults of two and zero, respectively.  This
     * avoids most unindexed searches with at least one widely-deployed
     * webserver, but allows CJK languages, where a single glyph can be an
     * an entire name to still get results.
     * 
     * @exception NS_ERROR_NULL_POINTER  NULL pointer passed to getter
     */
  /* attribute unsigned long minStringLength; */
  nsresult GetMinStringLength(PRUint32 *aMinStringLength);
  nsresult SetMinStringLength(PRUint32 aMinStringLength);

  /* attribute unsigned long cjkMinStringLength; */
  nsresult GetCjkMinStringLength(PRUint32 *aCjkMinStringLength);
  nsresult SetCjkMinStringLength(PRUint32 aCjkMinStringLength);

  /**
     * LDAP server to complete against, in ldap: URL format.  
     * May change to an nsILDAPServer once that infrastructure lands.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter    
     */
  /* attribute nsILDAPURL serverURL; */
  nsresult GetServerURL(nsILDAPURL  *aServerURL);
  nsresult SetServerURL(nsILDAPURL  aServerURL);

  /** 
     * Callback used to format an individual LDAP message into an
     * nsIAutoCompleteItem.  
     */
  /* attribute nsILDAPAutoCompFormatter formatter; */
  nsresult GetFormatter(nsILDAPAutoCompFormatter  *aFormatter);
  nsresult SetFormatter(nsILDAPAutoCompFormatter  aFormatter);

  /**
     * "Login as..." this ID.  Currently, this must be specified as a DN.
     * In the future, we may support userid and/or email address as well.
     * If unset, bind anonymously.
     */
  /* attribute AUTF8String login; */
  nsresult GetLogin(nsACString * aLogin);
  nsresult SetLogin(nsACString * aLogin);

  /**
     * If set, use this object to get a password for logging in to the server.
     */
  /* attribute nsIAuthPrompt authPrompter; */
  nsresult GetAuthPrompter(nsIAuthPrompt  *aAuthPrompter);
  nsresult SetAuthPrompter(nsIAuthPrompt  aAuthPrompter);

  /**
     * What version of the LDAP protocol should be used?  Allowed version
     * number constants are defined in nsILDAPConnection.idl.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE  illegal version num passed to setter
     * @exception NS_ERROR_NULL_POINTER   null pointer passed to getter
     */
  /* attribute unsigned long version; */
  nsresult GetVersion(PRUint32 *aVersion);
  nsresult SetVersion(PRUint32 aVersion);

  /**
     * If set, these arrays of nsILDAPControls are passed through to the
     * nsILDAPOperation that searchExt is called on.
     */
  /* attribute nsIMutableArray searchServerControls; */
  nsresult GetSearchServerControls(nsIMutableArray  *aSearchServerControls);
  nsresult SetSearchServerControls(nsIMutableArray  aSearchServerControls);

  /* attribute nsIMutableArray searchClientControls; */
  nsresult GetSearchClientControls(nsIMutableArray  *aSearchClientControls);
  nsresult SetSearchClientControls(nsIMutableArray  aSearchClientControls);

}

