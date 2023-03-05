/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISpamSettings.idl
 */

module mozilla.dxpcom.nsISpamSettingsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISpamSettings;


public import mozilla.dxpcom.nsISpamSettingsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIMsgIncomingServer;

public import mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsISpamSettings */
class nsISpamSettingsD : public nsISupportsD {

  static const nsIID IID = NS_ISPAMSETTINGS_IID;


  alias nsISpamSettings InnerType;

  this(nsISpamSettings intr){
    super(intr);
    this.inner = intr;
  }

  nsISpamSettings opCast() {
    return inner;
  }

  void opAssign(nsISpamSettings value) {
    inner = value;
  }

  /**
   * 0 for nothing, 100 for highest
   */
  /* attribute long level; */
  PRInt32 Level(){
    PRInt32 value;
    nsresult __result = inner.GetLevel(&value);
    CheckException(__result);
    return value;
  }
  void Level(PRInt32 aLevel){
    nsresult __result = inner.SetLevel(aLevel);
    CheckException(__result);
  }

  /* attribute boolean moveOnSpam; */
  PRBool MoveOnSpam(){
    PRBool value;
    nsresult __result = inner.GetMoveOnSpam(&value);
    CheckException(__result);
    return value;
  }
  void MoveOnSpam(PRBool aMoveOnSpam){
    nsresult __result = inner.SetMoveOnSpam(aMoveOnSpam);
    CheckException(__result);
  }

  /* readonly attribute boolean markAsReadOnSpam; */
  PRBool MarkAsReadOnSpam(){
    PRBool value;
    nsresult __result = inner.GetMarkAsReadOnSpam(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Most consumers will just use spamFolderURI rather than accessing any of
   * target attributes directly.
   */
  /* attribute long moveTargetMode; */
  PRInt32 MoveTargetMode(){
    PRInt32 value;
    nsresult __result = inner.GetMoveTargetMode(&value);
    CheckException(__result);
    return value;
  }
  void MoveTargetMode(PRInt32 aMoveTargetMode){
    nsresult __result = inner.SetMoveTargetMode(aMoveTargetMode);
    CheckException(__result);
  }

  enum { MOVE_TARGET_MODE_ACCOUNT = 0 }

  enum { MOVE_TARGET_MODE_FOLDER = 1 }

  /* attribute string actionTargetAccount; */
  char* ActionTargetAccount(){
    char* value;
    nsresult __result = inner.GetActionTargetAccount(&value);
    CheckException(__result);
    return value;
  }
  void ActionTargetAccount(char* aActionTargetAccount){
    nsresult __result = inner.SetActionTargetAccount(aActionTargetAccount);
    CheckException(__result);
  }

  /* attribute string actionTargetFolder; */
  char* ActionTargetFolder(){
    char* value;
    nsresult __result = inner.GetActionTargetFolder(&value);
    CheckException(__result);
    return value;
  }
  void ActionTargetFolder(char* aActionTargetFolder){
    nsresult __result = inner.SetActionTargetFolder(aActionTargetFolder);
    CheckException(__result);
  }

  /**
   * built from moveTargetMode, actionTargetAccount, actionTargetFolder
   */
  /* readonly attribute string spamFolderURI; */
  char* SpamFolderURI(){
    char* value;
    nsresult __result = inner.GetSpamFolderURI(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean purge; */
  PRBool Purge(){
    PRBool value;
    nsresult __result = inner.GetPurge(&value);
    CheckException(__result);
    return value;
  }
  void Purge(PRBool aPurge){
    nsresult __result = inner.SetPurge(aPurge);
    CheckException(__result);
  }

  /**
   * interval, in days
   */
  /* attribute long purgeInterval; */
  PRInt32 PurgeInterval(){
    PRInt32 value;
    nsresult __result = inner.GetPurgeInterval(&value);
    CheckException(__result);
    return value;
  }
  void PurgeInterval(PRInt32 aPurgeInterval){
    nsresult __result = inner.SetPurgeInterval(aPurgeInterval);
    CheckException(__result);
  }

  /* attribute boolean useWhiteList; */
  PRBool UseWhiteList(){
    PRBool value;
    nsresult __result = inner.GetUseWhiteList(&value);
    CheckException(__result);
    return value;
  }
  void UseWhiteList(PRBool aUseWhiteList){
    nsresult __result = inner.SetUseWhiteList(aUseWhiteList);
    CheckException(__result);
  }

  /* attribute string whiteListAbURI; */
  char* WhiteListAbURI(){
    char* value;
    nsresult __result = inner.GetWhiteListAbURI(&value);
    CheckException(__result);
    return value;
  }
  void WhiteListAbURI(char* aWhiteListAbURI){
    nsresult __result = inner.SetWhiteListAbURI(aWhiteListAbURI);
    CheckException(__result);
  }

  /**
   * should we do something (move or delete)
   * when the user manually marks a message as junk?
   */
  /* readonly attribute boolean manualMark; */
  PRBool ManualMark(){
    PRBool value;
    nsresult __result = inner.GetManualMark(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long manualMarkMode; */
  PRInt32 ManualMarkMode(){
    PRInt32 value;
    nsresult __result = inner.GetManualMarkMode(&value);
    CheckException(__result);
    return value;
  }

  enum { MANUAL_MARK_MODE_MOVE = 0 }

  enum { MANUAL_MARK_MODE_DELETE = 1 }

  /**
   * integrate with server-side spam detection programs
   */
  /* attribute boolean useServerFilter; */
  PRBool UseServerFilter(){
    PRBool value;
    nsresult __result = inner.GetUseServerFilter(&value);
    CheckException(__result);
    return value;
  }
  void UseServerFilter(PRBool aUseServerFilter){
    nsresult __result = inner.SetUseServerFilter(aUseServerFilter);
    CheckException(__result);
  }

  /* attribute ACString serverFilterName; */
  char[] ServerFilterName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetServerFilterName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ServerFilterName(char[] aServerFilterName){
    scope auto value = new ACString(aServerFilterName);
    nsresult __result = inner.SetServerFilterName(cast(nsACString*)value);
    CheckException(__result);
  }

  enum { TRUST_POSITIVES = 1 }

  enum { TRUST_NEGATIVES = 2 }

  /* attribute long serverFilterTrustFlags; */
  PRInt32 ServerFilterTrustFlags(){
    PRInt32 value;
    nsresult __result = inner.GetServerFilterTrustFlags(&value);
    CheckException(__result);
    return value;
  }
  void ServerFilterTrustFlags(PRInt32 aServerFilterTrustFlags){
    nsresult __result = inner.SetServerFilterTrustFlags(aServerFilterTrustFlags);
    CheckException(__result);
  }

  /* readonly attribute boolean loggingEnabled; */
  PRBool LoggingEnabled(){
    PRBool value;
    nsresult __result = inner.GetLoggingEnabled(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIOutputStream logStream; */
  nsIOutputStreamD  LogStream(){
    nsIOutputStream value;
    nsresult __result = inner.GetLogStream(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }
  void LogStream(nsIOutputStreamD  aLogStream){
    nsIOutputStream value;
    nsresult __result = inner.SetLogStream(value);
    CheckException(__result);
  }

  /* void logJunkHit (in nsIMsgDBHdr aMsgHdr, in boolean aMoveMessage); */
  void LogJunkHit(nsIMsgDBHdrD aMsgHdr, PRBool aMoveMessage){
    nsresult __result = inner.LogJunkHit(aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null, aMoveMessage);
    CheckException(__result);
  }

  /* void logJunkString (in string aLogText); */
  void LogJunkString(char*aLogText){
    nsresult __result = inner.LogJunkString(aLogText);
    CheckException(__result);
  }

  /* void clone (in nsISpamSettings aSpamSettings); */
  void Clone(nsISpamSettingsD aSpamSettings){
    nsresult __result = inner.Clone(aSpamSettings ? cast(nsISpamSettings)aSpamSettings : null);
    CheckException(__result);
  }

  /* void initialize (in nsIMsgIncomingServer aServer); */
  void Initialize(nsIMsgIncomingServerD aServer){
    nsresult __result = inner.Initialize(aServer ? cast(nsIMsgIncomingServer)aServer : null);
    CheckException(__result);
  }

private:
  nsISpamSettings inner;

}

