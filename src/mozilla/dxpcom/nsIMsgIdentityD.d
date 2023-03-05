/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgIdentity.idl
 */

module mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgIdentity;


public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgSignature;
public import mozilla.dxpcom.nsIMsgSignatureD;
public import mozilla.xpcom.nsILocalFile;
public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIMsgIdentity */
class nsIMsgIdentityD : public nsISupportsD {

  static const nsIID IID = NS_IMSGIDENTITY_IID;


  alias nsIMsgIdentity InnerType;

  this(nsIMsgIdentity intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgIdentity opCast() {
    return inner;
  }

  void opAssign(nsIMsgIdentity value) {
    inner = value;
  }

  /* attribute string key; */
  char* Key(){
    char* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(char* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /* attribute wstring identityName; */
  PRUnichar* IdentityName(){
    PRUnichar* value;
    nsresult __result = inner.GetIdentityName(&value);
    CheckException(__result);
    return value;
  }
  void IdentityName(PRUnichar* aIdentityName){
    nsresult __result = inner.SetIdentityName(aIdentityName);
    CheckException(__result);
  }

  /* attribute wstring fullName; */
  PRUnichar* FullName(){
    PRUnichar* value;
    nsresult __result = inner.GetFullName(&value);
    CheckException(__result);
    return value;
  }
  void FullName(PRUnichar* aFullName){
    nsresult __result = inner.SetFullName(aFullName);
    CheckException(__result);
  }

  /* attribute string email; */
  char* Email(){
    char* value;
    nsresult __result = inner.GetEmail(&value);
    CheckException(__result);
    return value;
  }
  void Email(char* aEmail){
    nsresult __result = inner.SetEmail(aEmail);
    CheckException(__result);
  }

  /* attribute string replyTo; */
  char* ReplyTo(){
    char* value;
    nsresult __result = inner.GetReplyTo(&value);
    CheckException(__result);
    return value;
  }
  void ReplyTo(char* aReplyTo){
    nsresult __result = inner.SetReplyTo(aReplyTo);
    CheckException(__result);
  }

  /* attribute wstring organization; */
  PRUnichar* Organization(){
    PRUnichar* value;
    nsresult __result = inner.GetOrganization(&value);
    CheckException(__result);
    return value;
  }
  void Organization(PRUnichar* aOrganization){
    nsresult __result = inner.SetOrganization(aOrganization);
    CheckException(__result);
  }

  /* attribute boolean composeHtml; */
  PRBool ComposeHtml(){
    PRBool value;
    nsresult __result = inner.GetComposeHtml(&value);
    CheckException(__result);
    return value;
  }
  void ComposeHtml(PRBool aComposeHtml){
    nsresult __result = inner.SetComposeHtml(aComposeHtml);
    CheckException(__result);
  }

  /* attribute boolean attachSignature; */
  PRBool AttachSignature(){
    PRBool value;
    nsresult __result = inner.GetAttachSignature(&value);
    CheckException(__result);
    return value;
  }
  void AttachSignature(PRBool aAttachSignature){
    nsresult __result = inner.SetAttachSignature(aAttachSignature);
    CheckException(__result);
  }

  /* attribute boolean attachVCard; */
  PRBool AttachVCard(){
    PRBool value;
    nsresult __result = inner.GetAttachVCard(&value);
    CheckException(__result);
    return value;
  }
  void AttachVCard(PRBool aAttachVCard){
    nsresult __result = inner.SetAttachVCard(aAttachVCard);
    CheckException(__result);
  }

  /* attribute boolean autoQuote; */
  PRBool AutoQuote(){
    PRBool value;
    nsresult __result = inner.GetAutoQuote(&value);
    CheckException(__result);
    return value;
  }
  void AutoQuote(PRBool aAutoQuote){
    nsresult __result = inner.SetAutoQuote(aAutoQuote);
    CheckException(__result);
  }

  /* attribute long replyOnTop; */
  PRInt32 ReplyOnTop(){
    PRInt32 value;
    nsresult __result = inner.GetReplyOnTop(&value);
    CheckException(__result);
    return value;
  }
  void ReplyOnTop(PRInt32 aReplyOnTop){
    nsresult __result = inner.SetReplyOnTop(aReplyOnTop);
    CheckException(__result);
  }

  /* attribute boolean sigBottom; */
  PRBool SigBottom(){
    PRBool value;
    nsresult __result = inner.GetSigBottom(&value);
    CheckException(__result);
    return value;
  }
  void SigBottom(PRBool aSigBottom){
    nsresult __result = inner.SetSigBottom(aSigBottom);
    CheckException(__result);
  }

  /* attribute nsILocalFile signature; */
  nsILocalFileD  Signature(){
    nsILocalFile value;
    nsresult __result = inner.GetSignature(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }
  void Signature(nsILocalFileD  aSignature){
    nsILocalFile value;
    nsresult __result = inner.SetSignature(value);
    CheckException(__result);
  }

  /* attribute long signatureDate; */
  PRInt32 SignatureDate(){
    PRInt32 value;
    nsresult __result = inner.GetSignatureDate(&value);
    CheckException(__result);
    return value;
  }
  void SignatureDate(PRInt32 aSignatureDate){
    nsresult __result = inner.SetSignatureDate(aSignatureDate);
    CheckException(__result);
  }

  /* attribute string escapedVCard; */
  char* EscapedVCard(){
    char* value;
    nsresult __result = inner.GetEscapedVCard(&value);
    CheckException(__result);
    return value;
  }
  void EscapedVCard(char* aEscapedVCard){
    nsresult __result = inner.SetEscapedVCard(aEscapedVCard);
    CheckException(__result);
  }

  /* attribute boolean doFcc; */
  PRBool DoFcc(){
    PRBool value;
    nsresult __result = inner.GetDoFcc(&value);
    CheckException(__result);
    return value;
  }
  void DoFcc(PRBool aDoFcc){
    nsresult __result = inner.SetDoFcc(aDoFcc);
    CheckException(__result);
  }

  /* attribute string fccFolder; */
  char* FccFolder(){
    char* value;
    nsresult __result = inner.GetFccFolder(&value);
    CheckException(__result);
    return value;
  }
  void FccFolder(char* aFccFolder){
    nsresult __result = inner.SetFccFolder(aFccFolder);
    CheckException(__result);
  }

  /* attribute string fccFolderPickerMode; */
  char* FccFolderPickerMode(){
    char* value;
    nsresult __result = inner.GetFccFolderPickerMode(&value);
    CheckException(__result);
    return value;
  }
  void FccFolderPickerMode(char* aFccFolderPickerMode){
    nsresult __result = inner.SetFccFolderPickerMode(aFccFolderPickerMode);
    CheckException(__result);
  }

  /* attribute string draftsFolderPickerMode; */
  char* DraftsFolderPickerMode(){
    char* value;
    nsresult __result = inner.GetDraftsFolderPickerMode(&value);
    CheckException(__result);
    return value;
  }
  void DraftsFolderPickerMode(char* aDraftsFolderPickerMode){
    nsresult __result = inner.SetDraftsFolderPickerMode(aDraftsFolderPickerMode);
    CheckException(__result);
  }

  /* attribute string tmplFolderPickerMode; */
  char* TmplFolderPickerMode(){
    char* value;
    nsresult __result = inner.GetTmplFolderPickerMode(&value);
    CheckException(__result);
    return value;
  }
  void TmplFolderPickerMode(char* aTmplFolderPickerMode){
    nsresult __result = inner.SetTmplFolderPickerMode(aTmplFolderPickerMode);
    CheckException(__result);
  }

  /* attribute boolean bccSelf; */
  PRBool BccSelf(){
    PRBool value;
    nsresult __result = inner.GetBccSelf(&value);
    CheckException(__result);
    return value;
  }
  void BccSelf(PRBool aBccSelf){
    nsresult __result = inner.SetBccSelf(aBccSelf);
    CheckException(__result);
  }

  /* attribute boolean bccOthers; */
  PRBool BccOthers(){
    PRBool value;
    nsresult __result = inner.GetBccOthers(&value);
    CheckException(__result);
    return value;
  }
  void BccOthers(PRBool aBccOthers){
    nsresult __result = inner.SetBccOthers(aBccOthers);
    CheckException(__result);
  }

  /* attribute string bccList; */
  char* BccList(){
    char* value;
    nsresult __result = inner.GetBccList(&value);
    CheckException(__result);
    return value;
  }
  void BccList(char* aBccList){
    nsresult __result = inner.SetBccList(aBccList);
    CheckException(__result);
  }

  /* attribute boolean doBcc; */
  PRBool DoBcc(){
    PRBool value;
    nsresult __result = inner.GetDoBcc(&value);
    CheckException(__result);
    return value;
  }
  void DoBcc(PRBool aDoBcc){
    nsresult __result = inner.SetDoBcc(aDoBcc);
    CheckException(__result);
  }

  /* attribute string doBccList; */
  char* DoBccList(){
    char* value;
    nsresult __result = inner.GetDoBccList(&value);
    CheckException(__result);
    return value;
  }
  void DoBccList(char* aDoBccList){
    nsresult __result = inner.SetDoBccList(aDoBccList);
    CheckException(__result);
  }

  /* attribute string draftFolder; */
  char* DraftFolder(){
    char* value;
    nsresult __result = inner.GetDraftFolder(&value);
    CheckException(__result);
    return value;
  }
  void DraftFolder(char* aDraftFolder){
    nsresult __result = inner.SetDraftFolder(aDraftFolder);
    CheckException(__result);
  }

  /* attribute string stationeryFolder; */
  char* StationeryFolder(){
    char* value;
    nsresult __result = inner.GetStationeryFolder(&value);
    CheckException(__result);
    return value;
  }
  void StationeryFolder(char* aStationeryFolder){
    nsresult __result = inner.SetStationeryFolder(aStationeryFolder);
    CheckException(__result);
  }

  /* attribute boolean showSaveMsgDlg; */
  PRBool ShowSaveMsgDlg(){
    PRBool value;
    nsresult __result = inner.GetShowSaveMsgDlg(&value);
    CheckException(__result);
    return value;
  }
  void ShowSaveMsgDlg(PRBool aShowSaveMsgDlg){
    nsresult __result = inner.SetShowSaveMsgDlg(aShowSaveMsgDlg);
    CheckException(__result);
  }

  /* attribute string directoryServer; */
  char* DirectoryServer(){
    char* value;
    nsresult __result = inner.GetDirectoryServer(&value);
    CheckException(__result);
    return value;
  }
  void DirectoryServer(char* aDirectoryServer){
    nsresult __result = inner.SetDirectoryServer(aDirectoryServer);
    CheckException(__result);
  }

  /* attribute boolean overrideGlobalPref; */
  PRBool OverrideGlobalPref(){
    PRBool value;
    nsresult __result = inner.GetOverrideGlobalPref(&value);
    CheckException(__result);
    return value;
  }
  void OverrideGlobalPref(PRBool aOverrideGlobalPref){
    nsresult __result = inner.SetOverrideGlobalPref(aOverrideGlobalPref);
    CheckException(__result);
  }

  /**
   * If this is false, don't append the user's domain
   * to an autocomplete address with no matches
   */
  /* attribute boolean autocompleteToMyDomain; */
  PRBool AutocompleteToMyDomain(){
    PRBool value;
    nsresult __result = inner.GetAutocompleteToMyDomain(&value);
    CheckException(__result);
    return value;
  }
  void AutocompleteToMyDomain(PRBool aAutocompleteToMyDomain){
    nsresult __result = inner.SetAutocompleteToMyDomain(aAutocompleteToMyDomain);
    CheckException(__result);
  }

  /**
   * valid determines if the UI should use this identity
   * and the wizard uses this to determine whether or not
   * to ask the user to complete all the fields
   */
  /* attribute boolean valid; */
  PRBool Valid(){
    PRBool value;
    nsresult __result = inner.GetValid(&value);
    CheckException(__result);
    return value;
  }
  void Valid(PRBool aValid){
    nsresult __result = inner.SetValid(aValid);
    CheckException(__result);
  }

  /**
   * this is really dangerous. this destroys all pref values
   * do not call this unless you know what you're doing!
   */
  /* void clearAllValues (); */
  void ClearAllValues(){
    nsresult __result = inner.ClearAllValues();
    CheckException(__result);
  }

  /**
   * the preferred smtp server for this identity.
   * if this is set, this the smtp server that should be used
   * for the message send
   */
  /* attribute string smtpServerKey; */
  char* SmtpServerKey(){
    char* value;
    nsresult __result = inner.GetSmtpServerKey(&value);
    CheckException(__result);
    return value;
  }
  void SmtpServerKey(char* aSmtpServerKey){
    nsresult __result = inner.SetSmtpServerKey(aSmtpServerKey);
    CheckException(__result);
  }

  /**
   * default request for return receipt option for this identity
   * if this is set, the Return Receipt menu item on the compose
   * window will be checked
   */
  /* readonly attribute boolean requestReturnReceipt; */
  PRBool RequestReturnReceipt(){
    PRBool value;
    nsresult __result = inner.GetRequestReturnReceipt(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long receiptHeaderType; */
  PRInt32 ReceiptHeaderType(){
    PRInt32 value;
    nsresult __result = inner.GetReceiptHeaderType(&value);
    CheckException(__result);
    return value;
  }

  /* void copy (in nsIMsgIdentity identity); */
  void Copy(nsIMsgIdentityD identity){
    nsresult __result = inner.Copy(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /** 
   * these generic getter / setters, useful for extending mailnews 
   * note, these attributes persist across sessions
   */
  /* wstring getUnicharAttribute (in string name); */
  PRUnichar* GetUnicharAttribute(char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetUnicharAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setUnicharAttribute (in string name, in wstring value); */
  void SetUnicharAttribute(char*name, PRUnichar*value){
    nsresult __result = inner.SetUnicharAttribute(name, value);
    CheckException(__result);
  }

  /* string getCharAttribute (in string name); */
  char* GetCharAttribute(char*name){
    char* _retval;
    nsresult __result = inner.GetCharAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCharAttribute (in string name, in string value); */
  void SetCharAttribute(char*name, char*value){
    nsresult __result = inner.SetCharAttribute(name, value);
    CheckException(__result);
  }

  /* boolean getBoolAttribute (in string name); */
  PRBool GetBoolAttribute(char*name){
    PRBool _retval;
    nsresult __result = inner.GetBoolAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setBoolAttribute (in string name, in boolean value); */
  void SetBoolAttribute(char*name, PRBool value){
    nsresult __result = inner.SetBoolAttribute(name, value);
    CheckException(__result);
  }

  /* long getIntAttribute (in string name); */
  PRInt32 GetIntAttribute(char*name){
    PRInt32 _retval;
    nsresult __result = inner.GetIntAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setIntAttribute (in string name, in long value); */
  void SetIntAttribute(char*name, PRInt32 value){
    nsresult __result = inner.SetIntAttribute(name, value);
    CheckException(__result);
  }

  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean fccReplyFollowsParent; */
  PRBool FccReplyFollowsParent(){
    PRBool value;
    nsresult __result = inner.GetFccReplyFollowsParent(&value);
    CheckException(__result);
    return value;
  }
  void FccReplyFollowsParent(PRBool aFccReplyFollowsParent){
    nsresult __result = inner.SetFccReplyFollowsParent(aFccReplyFollowsParent);
    CheckException(__result);
  }

private:
  nsIMsgIdentity inner;

}

