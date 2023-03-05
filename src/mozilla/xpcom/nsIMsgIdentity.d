/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgIdentity.idl
 */

module mozilla.xpcom.nsIMsgIdentity;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgSignature;
public import mozilla.xpcom.nsILocalFile;


/* starting interface:    nsIMsgIdentity */
const char[] NS_IMSGIDENTITY_IID_STR = "e823535a-66b8-4bd4-99cd-cb1cafbfedb6";

const nsIID NS_IMSGIDENTITY_IID= 
  {0xe823535a, 0x66b8, 0x4bd4, 
    [ 0x99, 0xcd, 0xcb, 0x1c, 0xaf, 0xbf, 0xed, 0xb6 ]};

extern(Windows)
interface nsIMsgIdentity : nsISupports {
  static const char[] IID_STR = NS_IMSGIDENTITY_IID_STR;
  static const nsIID IID = NS_IMSGIDENTITY_IID;

  /* attribute string key; */
  nsresult GetKey(char * *aKey);
  nsresult SetKey(char * aKey);

  /* attribute wstring identityName; */
  nsresult GetIdentityName(PRUnichar * *aIdentityName);
  nsresult SetIdentityName(PRUnichar * aIdentityName);

  /* attribute wstring fullName; */
  nsresult GetFullName(PRUnichar * *aFullName);
  nsresult SetFullName(PRUnichar * aFullName);

  /* attribute string email; */
  nsresult GetEmail(char * *aEmail);
  nsresult SetEmail(char * aEmail);

  /* attribute string replyTo; */
  nsresult GetReplyTo(char * *aReplyTo);
  nsresult SetReplyTo(char * aReplyTo);

  /* attribute wstring organization; */
  nsresult GetOrganization(PRUnichar * *aOrganization);
  nsresult SetOrganization(PRUnichar * aOrganization);

  /* attribute boolean composeHtml; */
  nsresult GetComposeHtml(PRBool *aComposeHtml);
  nsresult SetComposeHtml(PRBool aComposeHtml);

  /* attribute boolean attachSignature; */
  nsresult GetAttachSignature(PRBool *aAttachSignature);
  nsresult SetAttachSignature(PRBool aAttachSignature);

  /* attribute boolean attachVCard; */
  nsresult GetAttachVCard(PRBool *aAttachVCard);
  nsresult SetAttachVCard(PRBool aAttachVCard);

  /* attribute boolean autoQuote; */
  nsresult GetAutoQuote(PRBool *aAutoQuote);
  nsresult SetAutoQuote(PRBool aAutoQuote);

  /* attribute long replyOnTop; */
  nsresult GetReplyOnTop(PRInt32 *aReplyOnTop);
  nsresult SetReplyOnTop(PRInt32 aReplyOnTop);

  /* attribute boolean sigBottom; */
  nsresult GetSigBottom(PRBool *aSigBottom);
  nsresult SetSigBottom(PRBool aSigBottom);

  /* attribute nsILocalFile signature; */
  nsresult GetSignature(nsILocalFile  *aSignature);
  nsresult SetSignature(nsILocalFile  aSignature);

  /* attribute long signatureDate; */
  nsresult GetSignatureDate(PRInt32 *aSignatureDate);
  nsresult SetSignatureDate(PRInt32 aSignatureDate);

  /* attribute string escapedVCard; */
  nsresult GetEscapedVCard(char * *aEscapedVCard);
  nsresult SetEscapedVCard(char * aEscapedVCard);

  /* attribute boolean doFcc; */
  nsresult GetDoFcc(PRBool *aDoFcc);
  nsresult SetDoFcc(PRBool aDoFcc);

  /* attribute string fccFolder; */
  nsresult GetFccFolder(char * *aFccFolder);
  nsresult SetFccFolder(char * aFccFolder);

  /* attribute string fccFolderPickerMode; */
  nsresult GetFccFolderPickerMode(char * *aFccFolderPickerMode);
  nsresult SetFccFolderPickerMode(char * aFccFolderPickerMode);

  /* attribute string draftsFolderPickerMode; */
  nsresult GetDraftsFolderPickerMode(char * *aDraftsFolderPickerMode);
  nsresult SetDraftsFolderPickerMode(char * aDraftsFolderPickerMode);

  /* attribute string tmplFolderPickerMode; */
  nsresult GetTmplFolderPickerMode(char * *aTmplFolderPickerMode);
  nsresult SetTmplFolderPickerMode(char * aTmplFolderPickerMode);

  /* attribute boolean bccSelf; */
  nsresult GetBccSelf(PRBool *aBccSelf);
  nsresult SetBccSelf(PRBool aBccSelf);

  /* attribute boolean bccOthers; */
  nsresult GetBccOthers(PRBool *aBccOthers);
  nsresult SetBccOthers(PRBool aBccOthers);

  /* attribute string bccList; */
  nsresult GetBccList(char * *aBccList);
  nsresult SetBccList(char * aBccList);

  /* attribute boolean doBcc; */
  nsresult GetDoBcc(PRBool *aDoBcc);
  nsresult SetDoBcc(PRBool aDoBcc);

  /* attribute string doBccList; */
  nsresult GetDoBccList(char * *aDoBccList);
  nsresult SetDoBccList(char * aDoBccList);

  /* attribute string draftFolder; */
  nsresult GetDraftFolder(char * *aDraftFolder);
  nsresult SetDraftFolder(char * aDraftFolder);

  /* attribute string stationeryFolder; */
  nsresult GetStationeryFolder(char * *aStationeryFolder);
  nsresult SetStationeryFolder(char * aStationeryFolder);

  /* attribute boolean showSaveMsgDlg; */
  nsresult GetShowSaveMsgDlg(PRBool *aShowSaveMsgDlg);
  nsresult SetShowSaveMsgDlg(PRBool aShowSaveMsgDlg);

  /* attribute string directoryServer; */
  nsresult GetDirectoryServer(char * *aDirectoryServer);
  nsresult SetDirectoryServer(char * aDirectoryServer);

  /* attribute boolean overrideGlobalPref; */
  nsresult GetOverrideGlobalPref(PRBool *aOverrideGlobalPref);
  nsresult SetOverrideGlobalPref(PRBool aOverrideGlobalPref);

  /**
   * If this is false, don't append the user's domain
   * to an autocomplete address with no matches
   */
  /* attribute boolean autocompleteToMyDomain; */
  nsresult GetAutocompleteToMyDomain(PRBool *aAutocompleteToMyDomain);
  nsresult SetAutocompleteToMyDomain(PRBool aAutocompleteToMyDomain);

  /**
   * valid determines if the UI should use this identity
   * and the wizard uses this to determine whether or not
   * to ask the user to complete all the fields
   */
  /* attribute boolean valid; */
  nsresult GetValid(PRBool *aValid);
  nsresult SetValid(PRBool aValid);

  /**
   * this is really dangerous. this destroys all pref values
   * do not call this unless you know what you're doing!
   */
  /* void clearAllValues (); */
  nsresult ClearAllValues();

  /**
   * the preferred smtp server for this identity.
   * if this is set, this the smtp server that should be used
   * for the message send
   */
  /* attribute string smtpServerKey; */
  nsresult GetSmtpServerKey(char * *aSmtpServerKey);
  nsresult SetSmtpServerKey(char * aSmtpServerKey);

  /**
   * default request for return receipt option for this identity
   * if this is set, the Return Receipt menu item on the compose
   * window will be checked
   */
  /* readonly attribute boolean requestReturnReceipt; */
  nsresult GetRequestReturnReceipt(PRBool *aRequestReturnReceipt);

  /* readonly attribute long receiptHeaderType; */
  nsresult GetReceiptHeaderType(PRInt32 *aReceiptHeaderType);

  /* void copy (in nsIMsgIdentity identity); */
  nsresult Copy(nsIMsgIdentity identity);

  /** 
   * these generic getter / setters, useful for extending mailnews 
   * note, these attributes persist across sessions
   */
  /* wstring getUnicharAttribute (in string name); */
  nsresult GetUnicharAttribute(char *name, PRUnichar **_retval);

  /* void setUnicharAttribute (in string name, in wstring value); */
  nsresult SetUnicharAttribute(char *name, PRUnichar *value);

  /* string getCharAttribute (in string name); */
  nsresult GetCharAttribute(char *name, char **_retval);

  /* void setCharAttribute (in string name, in string value); */
  nsresult SetCharAttribute(char *name, char *value);

  /* boolean getBoolAttribute (in string name); */
  nsresult GetBoolAttribute(char *name, PRBool *_retval);

  /* void setBoolAttribute (in string name, in boolean value); */
  nsresult SetBoolAttribute(char *name, PRBool value);

  /* long getIntAttribute (in string name); */
  nsresult GetIntAttribute(char *name, PRInt32 *_retval);

  /* void setIntAttribute (in string name, in long value); */
  nsresult SetIntAttribute(char *name, PRInt32 value);

  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

  /* attribute boolean fccReplyFollowsParent; */
  nsresult GetFccReplyFollowsParent(PRBool *aFccReplyFollowsParent);
  nsresult SetFccReplyFollowsParent(PRBool aFccReplyFollowsParent);

}

