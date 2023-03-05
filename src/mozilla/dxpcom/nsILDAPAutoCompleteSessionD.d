/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPAutoCompleteSession.idl
 */

module mozilla.dxpcom.nsILDAPAutoCompleteSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPAutoCompleteSession;


public import mozilla.dxpcom.nsILDAPAutoCompleteSessionD;

public import mozilla.xpcom.nsIAutoCompleteSession;
public import mozilla.dxpcom.nsIAutoCompleteSessionD;

public import mozilla.xpcom.nsILDAPURL;

public import mozilla.dxpcom.nsILDAPURLD;

public import mozilla.xpcom.nsILDAPAutoCompFormatter;

public import mozilla.dxpcom.nsILDAPAutoCompFormatterD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.xpcom.nsIArray;

import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsILDAPAutoCompleteSession */
/**
 * Extends nsIAutoCompleteSession to have various LDAP-specific parameters.
 * and output format.
 */
class nsILDAPAutoCompleteSessionD : public nsIAutoCompleteSessionD {

  static const nsIID IID = NS_ILDAPAUTOCOMPLETESESSION_IID;


  alias nsILDAPAutoCompleteSession InnerType;

  this(nsILDAPAutoCompleteSession intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPAutoCompleteSession opCast() {
    return inner;
  }

  void opAssign(nsILDAPAutoCompleteSession value) {
    inner = value;
  }

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
  char[] FilterTemplate(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFilterTemplate(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FilterTemplate(char[] aFilterTemplate){
    scope auto value = new ACString(aFilterTemplate);
    nsresult __result = inner.SetFilterTemplate(cast(nsACString*)value);
    CheckException(__result);
  }

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
  PRInt32 MaxHits(){
    PRInt32 value;
    nsresult __result = inner.GetMaxHits(&value);
    CheckException(__result);
    return value;
  }
  void MaxHits(PRInt32 aMaxHits){
    nsresult __result = inner.SetMaxHits(aMaxHits);
    CheckException(__result);
  }

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
  PRUint32 MinStringLength(){
    PRUint32 value;
    nsresult __result = inner.GetMinStringLength(&value);
    CheckException(__result);
    return value;
  }
  void MinStringLength(PRUint32 aMinStringLength){
    nsresult __result = inner.SetMinStringLength(aMinStringLength);
    CheckException(__result);
  }

  /* attribute unsigned long cjkMinStringLength; */
  PRUint32 CjkMinStringLength(){
    PRUint32 value;
    nsresult __result = inner.GetCjkMinStringLength(&value);
    CheckException(__result);
    return value;
  }
  void CjkMinStringLength(PRUint32 aCjkMinStringLength){
    nsresult __result = inner.SetCjkMinStringLength(aCjkMinStringLength);
    CheckException(__result);
  }

  /**
     * LDAP server to complete against, in ldap: URL format.  
     * May change to an nsILDAPServer once that infrastructure lands.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter    
     */
  /* attribute nsILDAPURL serverURL; */
  nsILDAPURLD  ServerURL(){
    nsILDAPURL value;
    nsresult __result = inner.GetServerURL(&value);
    CheckException(__result);
    return new nsILDAPURLD(value);
  }
  void ServerURL(nsILDAPURLD  aServerURL){
    nsILDAPURL value;
    nsresult __result = inner.SetServerURL(value);
    CheckException(__result);
  }

  /** 
     * Callback used to format an individual LDAP message into an
     * nsIAutoCompleteItem.  
     */
  /* attribute nsILDAPAutoCompFormatter formatter; */
  nsILDAPAutoCompFormatterD  Formatter(){
    nsILDAPAutoCompFormatter value;
    nsresult __result = inner.GetFormatter(&value);
    CheckException(__result);
    return new nsILDAPAutoCompFormatterD(value);
  }
  void Formatter(nsILDAPAutoCompFormatterD  aFormatter){
    nsILDAPAutoCompFormatter value;
    nsresult __result = inner.SetFormatter(value);
    CheckException(__result);
  }

  /**
     * "Login as..." this ID.  Currently, this must be specified as a DN.
     * In the future, we may support userid and/or email address as well.
     * If unset, bind anonymously.
     */
  /* attribute AUTF8String login; */
  char[] Login(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLogin(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Login(char[] aLogin){
    scope auto value = new ACString(aLogin);
    nsresult __result = inner.SetLogin(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * If set, use this object to get a password for logging in to the server.
     */
  /* attribute nsIAuthPrompt authPrompter; */
  nsIAuthPromptD  AuthPrompter(){
    nsIAuthPrompt value;
    nsresult __result = inner.GetAuthPrompter(&value);
    CheckException(__result);
    return new nsIAuthPromptD(value);
  }
  void AuthPrompter(nsIAuthPromptD  aAuthPrompter){
    nsIAuthPrompt value;
    nsresult __result = inner.SetAuthPrompter(value);
    CheckException(__result);
  }

  /**
     * What version of the LDAP protocol should be used?  Allowed version
     * number constants are defined in nsILDAPConnection.idl.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE  illegal version num passed to setter
     * @exception NS_ERROR_NULL_POINTER   null pointer passed to getter
     */
  /* attribute unsigned long version; */
  PRUint32 Version(){
    PRUint32 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }
  void Version(PRUint32 aVersion){
    nsresult __result = inner.SetVersion(aVersion);
    CheckException(__result);
  }

  /**
     * If set, these arrays of nsILDAPControls are passed through to the
     * nsILDAPOperation that searchExt is called on.
     */
  /* attribute nsIMutableArray searchServerControls; */
  nsIMutableArrayD  SearchServerControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetSearchServerControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void SearchServerControls(nsIMutableArrayD  aSearchServerControls){
    nsIMutableArray value;
    nsresult __result = inner.SetSearchServerControls(value);
    CheckException(__result);
  }

  /* attribute nsIMutableArray searchClientControls; */
  nsIMutableArrayD  SearchClientControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetSearchClientControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void SearchClientControls(nsIMutableArrayD  aSearchClientControls){
    nsIMutableArray value;
    nsresult __result = inner.SetSearchClientControls(value);
    CheckException(__result);
  }

private:
  nsILDAPAutoCompleteSession inner;

}

