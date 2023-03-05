/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISpamSettings.idl
 */

module mozilla.xpcom.nsISpamSettings;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIMsgIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsISpamSettings */
const char[] NS_ISPAMSETTINGS_IID_STR = "a2c3a171-5a1b-41e2-ab43-3c4f22e96638";

const nsIID NS_ISPAMSETTINGS_IID= 
  {0xa2c3a171, 0x5a1b, 0x41e2, 
    [ 0xab, 0x43, 0x3c, 0x4f, 0x22, 0xe9, 0x66, 0x38 ]};

extern(Windows)
interface nsISpamSettings : nsISupports {
  static const char[] IID_STR = NS_ISPAMSETTINGS_IID_STR;
  static const nsIID IID = NS_ISPAMSETTINGS_IID;

  /**
   * 0 for nothing, 100 for highest
   */
  /* attribute long level; */
  nsresult GetLevel(PRInt32 *aLevel);
  nsresult SetLevel(PRInt32 aLevel);

  /* attribute boolean moveOnSpam; */
  nsresult GetMoveOnSpam(PRBool *aMoveOnSpam);
  nsresult SetMoveOnSpam(PRBool aMoveOnSpam);

  /* readonly attribute boolean markAsReadOnSpam; */
  nsresult GetMarkAsReadOnSpam(PRBool *aMarkAsReadOnSpam);

  /**
   * Most consumers will just use spamFolderURI rather than accessing any of
   * target attributes directly.
   */
  /* attribute long moveTargetMode; */
  nsresult GetMoveTargetMode(PRInt32 *aMoveTargetMode);
  nsresult SetMoveTargetMode(PRInt32 aMoveTargetMode);

  enum { MOVE_TARGET_MODE_ACCOUNT = 0 };

  enum { MOVE_TARGET_MODE_FOLDER = 1 };

  /* attribute string actionTargetAccount; */
  nsresult GetActionTargetAccount(char * *aActionTargetAccount);
  nsresult SetActionTargetAccount(char * aActionTargetAccount);

  /* attribute string actionTargetFolder; */
  nsresult GetActionTargetFolder(char * *aActionTargetFolder);
  nsresult SetActionTargetFolder(char * aActionTargetFolder);

  /**
   * built from moveTargetMode, actionTargetAccount, actionTargetFolder
   */
  /* readonly attribute string spamFolderURI; */
  nsresult GetSpamFolderURI(char * *aSpamFolderURI);

  /* attribute boolean purge; */
  nsresult GetPurge(PRBool *aPurge);
  nsresult SetPurge(PRBool aPurge);

  /**
   * interval, in days
   */
  /* attribute long purgeInterval; */
  nsresult GetPurgeInterval(PRInt32 *aPurgeInterval);
  nsresult SetPurgeInterval(PRInt32 aPurgeInterval);

  /* attribute boolean useWhiteList; */
  nsresult GetUseWhiteList(PRBool *aUseWhiteList);
  nsresult SetUseWhiteList(PRBool aUseWhiteList);

  /* attribute string whiteListAbURI; */
  nsresult GetWhiteListAbURI(char * *aWhiteListAbURI);
  nsresult SetWhiteListAbURI(char * aWhiteListAbURI);

  /**
   * should we do something (move or delete)
   * when the user manually marks a message as junk?
   */
  /* readonly attribute boolean manualMark; */
  nsresult GetManualMark(PRBool *aManualMark);

  /* readonly attribute long manualMarkMode; */
  nsresult GetManualMarkMode(PRInt32 *aManualMarkMode);

  enum { MANUAL_MARK_MODE_MOVE = 0 };

  enum { MANUAL_MARK_MODE_DELETE = 1 };

  /**
   * integrate with server-side spam detection programs
   */
  /* attribute boolean useServerFilter; */
  nsresult GetUseServerFilter(PRBool *aUseServerFilter);
  nsresult SetUseServerFilter(PRBool aUseServerFilter);

  /* attribute ACString serverFilterName; */
  nsresult GetServerFilterName(nsACString * aServerFilterName);
  nsresult SetServerFilterName(nsACString * aServerFilterName);

  enum { TRUST_POSITIVES = 1 };

  enum { TRUST_NEGATIVES = 2 };

  /* attribute long serverFilterTrustFlags; */
  nsresult GetServerFilterTrustFlags(PRInt32 *aServerFilterTrustFlags);
  nsresult SetServerFilterTrustFlags(PRInt32 aServerFilterTrustFlags);

  /* readonly attribute boolean loggingEnabled; */
  nsresult GetLoggingEnabled(PRBool *aLoggingEnabled);

  /* attribute nsIOutputStream logStream; */
  nsresult GetLogStream(nsIOutputStream  *aLogStream);
  nsresult SetLogStream(nsIOutputStream  aLogStream);

  /* void logJunkHit (in nsIMsgDBHdr aMsgHdr, in boolean aMoveMessage); */
  nsresult LogJunkHit(nsIMsgDBHdr aMsgHdr, PRBool aMoveMessage);

  /* void logJunkString (in string aLogText); */
  nsresult LogJunkString(char *aLogText);

  /* void clone (in nsISpamSettings aSpamSettings); */
  nsresult Clone(nsISpamSettings aSpamSettings);

  /* void initialize (in nsIMsgIncomingServer aServer); */
  nsresult Initialize(nsIMsgIncomingServer aServer);

}

