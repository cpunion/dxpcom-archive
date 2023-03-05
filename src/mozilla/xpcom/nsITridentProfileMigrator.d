/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITridentProfileMigrator.idl
 */

module mozilla.xpcom.nsITridentProfileMigrator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITridentProfileMigrator */
const char[] NS_ITRIDENTPROFILEMIGRATOR_IID_STR = "5e8711d6-9caa-44a0-bfaa-1da45232fafb";

const nsIID NS_ITRIDENTPROFILEMIGRATOR_IID= 
  {0x5e8711d6, 0x9caa, 0x44a0, 
    [ 0xbf, 0xaa, 0x1d, 0xa4, 0x52, 0x32, 0xfa, 0xfb ]};

extern(Windows)
interface nsITridentProfileMigrator : nsISupports {
  static const char[] IID_STR = NS_ITRIDENTPROFILEMIGRATOR_IID_STR;
  static const nsIID IID = NS_ITRIDENTPROFILEMIGRATOR_IID;

  /**
   * profile items to migrate. use with migrateTridentProfile().
   */
  enum { PREFERENCES = 1U };

  enum { COOKIES = 2U };

  /**
   * Copy Trident user profile information to the current active profile.
   * @param aItems list of data items to migrate. see above for values.
   */
  /* void migrateTridentProfile (in unsigned long aItems); */
  nsresult MigrateTridentProfile(PRUint32 aItems);

}

