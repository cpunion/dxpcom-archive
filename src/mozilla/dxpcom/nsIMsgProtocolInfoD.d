/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgProtocolInfo.idl
 */

module mozilla.dxpcom.nsIMsgProtocolInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgProtocolInfo;


public import mozilla.dxpcom.nsIMsgProtocolInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIMsgProtocolInfo */
class nsIMsgProtocolInfoD : public nsISupportsD {

  static const nsIID IID = NS_IMSGPROTOCOLINFO_IID;


  alias nsIMsgProtocolInfo InnerType;

  this(nsIMsgProtocolInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgProtocolInfo opCast() {
    return inner;
  }

  void opAssign(nsIMsgProtocolInfo value) {
    inner = value;
  }

  /**
     * the default path to store local data for this type of
     * server. Each server is usually in a subdirectory below this
     */
  /* attribute nsIFileSpec defaultLocalPath; */
  nsIFileSpecD  DefaultLocalPath(){
    nsIFileSpec value;
    nsresult __result = inner.GetDefaultLocalPath(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void DefaultLocalPath(nsIFileSpecD  aDefaultLocalPath){
    nsIFileSpec value;
    nsresult __result = inner.SetDefaultLocalPath(value);
    CheckException(__result);
  }

  /**
     * the IID of the protocol-specific interface for this server
     * usually used from JS to dynamically get server-specific attributes
     */
  /* readonly attribute nsIIDPtr serverIID; */
  nsIID * ServerIID(){
    nsIID * value;
    nsresult __result = inner.GetServerIID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * does this server type require a username?
     * for instance, news does not but IMAP/POP do
     */
  /* readonly attribute boolean requiresUsername; */
  PRBool RequiresUsername(){
    PRBool value;
    nsresult __result = inner.GetRequiresUsername(&value);
    CheckException(__result);
    return value;
  }

  /**
     * if the pretty name of the server should
     * just be the e-mail address. Otherwise it usually
     * ends up being something like "news on hostname"
     */
  /* readonly attribute boolean preflightPrettyNameWithEmailAddress; */
  PRBool PreflightPrettyNameWithEmailAddress(){
    PRBool value;
    nsresult __result = inner.GetPreflightPrettyNameWithEmailAddress(&value);
    CheckException(__result);
    return value;
  }

  /**
     * can this type of server be removed from the account manager?
     * for instance, local mail is not removable
     */
  /* readonly attribute boolean canDelete; */
  PRBool CanDelete(){
    PRBool value;
    nsresult __result = inner.GetCanDelete(&value);
    CheckException(__result);
    return value;
  }

  /**
     * can this type of server log in at startup?
     */
  /* readonly attribute boolean canLoginAtStartUp; */
  PRBool CanLoginAtStartUp(){
    PRBool value;
    nsresult __result = inner.GetCanLoginAtStartUp(&value);
    CheckException(__result);
    return value;
  }

  /**
     * can you duplicate this server?
     * for instance, local mail is unique and should not be duplicated.
     */
  /* readonly attribute boolean canDuplicate; */
  PRBool CanDuplicate(){
    PRBool value;
    nsresult __result = inner.GetCanDuplicate(&value);
    CheckException(__result);
    return value;
  }

  /* long getDefaultServerPort (in boolean isSecure); */
  PRInt32 GetDefaultServerPort(PRBool isSecure){
    PRInt32 _retval;
    nsresult __result = inner.GetDefaultServerPort(isSecure, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * An attribute that tell us whether on not we can 
     * get messages for the given server type 
	 * this is poorly named right now.
	 * it's really is there an inbox for this type?
	 * XXX todo, rename this.
     */
  /* readonly attribute boolean canGetMessages; */
  PRBool CanGetMessages(){
    PRBool value;
    nsresult __result = inner.GetCanGetMessages(&value);
    CheckException(__result);
    return value;
  }

  /** 
	 * do messages arrive for this server
	 * if they do, we can use our junk controls on it.
	 */
  /* readonly attribute boolean canGetIncomingMessages; */
  PRBool CanGetIncomingMessages(){
    PRBool value;
    nsresult __result = inner.GetCanGetIncomingMessages(&value);
    CheckException(__result);
    return value;
  }

  /**
     * do biff by default?
     */
  /* readonly attribute boolean defaultDoBiff; */
  PRBool DefaultDoBiff(){
    PRBool value;
    nsresult __result = inner.GetDefaultDoBiff(&value);
    CheckException(__result);
    return value;
  }

  /**
     * do we need to show compose message link in the AccountCentral page ? 
     */
  /* readonly attribute boolean showComposeMsgLink; */
  PRBool ShowComposeMsgLink(){
    PRBool value;
    nsresult __result = inner.GetShowComposeMsgLink(&value);
    CheckException(__result);
    return value;
  }

  /**
     * do we need to build special folder URIs ? In case of IMAP, special folders
     * like 'Sent', 'Drafts' and 'Templates' are not created unless needed.
     * But, we do need to create folder URIs to reflect the choices in the UI in
     * copies and folders settings panel.
     */
  /* readonly attribute boolean needToBuildSpecialFolderURIs; */
  PRBool NeedToBuildSpecialFolderURIs(){
    PRBool value;
    nsresult __result = inner.GetNeedToBuildSpecialFolderURIs(&value);
    CheckException(__result);
    return value;
  }

  /**
     * do we allow special folder deletion ?
     */
  /* readonly attribute boolean specialFoldersDeletionAllowed; */
  PRBool SpecialFoldersDeletionAllowed(){
    PRBool value;
    nsresult __result = inner.GetSpecialFoldersDeletionAllowed(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgProtocolInfo inner;

}

