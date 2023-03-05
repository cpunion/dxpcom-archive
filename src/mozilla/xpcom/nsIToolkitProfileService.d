/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitProfileService.idl
 */

module mozilla.xpcom.nsIToolkitProfileService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIToolkitProfile; /* forward declaration */

public import mozilla.xpcom.nsIToolkitProfile;


/* starting interface:    nsIToolkitProfileService */
const char[] NS_ITOOLKITPROFILESERVICE_IID_STR = "9b434f48-438c-4f85-89de-b7f321a45341";

const nsIID NS_ITOOLKITPROFILESERVICE_IID= 
  {0x9b434f48, 0x438c, 0x4f85, 
    [ 0x89, 0xde, 0xb7, 0xf3, 0x21, 0xa4, 0x53, 0x41 ]};

extern(Windows)
interface nsIToolkitProfileService : nsISupports {
  static const char[] IID_STR = NS_ITOOLKITPROFILESERVICE_IID_STR;
  static const nsIID IID = NS_ITOOLKITPROFILESERVICE_IID;

  /* attribute boolean startWithLastProfile; */
  nsresult GetStartWithLastProfile(PRBool *aStartWithLastProfile);
  nsresult SetStartWithLastProfile(PRBool aStartWithLastProfile);

  /* attribute boolean startOffline; */
  nsresult GetStartOffline(PRBool *aStartOffline);
  nsresult SetStartOffline(PRBool aStartOffline);

  /* readonly attribute nsISimpleEnumerator profiles; */
  nsresult GetProfiles(nsISimpleEnumerator  *aProfiles);

  /* attribute nsIToolkitProfile selectedProfile; */
  nsresult GetSelectedProfile(nsIToolkitProfile  *aSelectedProfile);
  nsresult SetSelectedProfile(nsIToolkitProfile  aSelectedProfile);

  /**
     * Get a profile by name. This is mainly for use by the -P
     * commandline flag.
     *
     * @param aName The profile name to find.
     */
  /* nsIToolkitProfile getProfileByName (in AUTF8String aName); */
  nsresult GetProfileByName(nsACString * aName, nsIToolkitProfile *_retval);

  /**
     * Lock an arbitrary path as a profile. If the path does not exist, it
     * will be created and the defaults copied from the application directory.
     */
  /* nsIProfileLock lockProfilePath (in nsILocalFile aDirectory, in nsILocalFile aTempDirectory); */
  nsresult LockProfilePath(nsILocalFile aDirectory, nsILocalFile aTempDirectory, nsIProfileLock *_retval);

  /**
     * Create a new profile.
     * 
     * @param aRootDir
     *        The profile directory. May be null, in which case a suitable
     *        default will be chosen based on the profile name.
     * @param aTempDir
     *        The profile temporary directory. May be null, in which case a
     *        suitable default will be chosen based either on the profile name
     *        if aRootDir is null or aRootDir itself.
     * @param aName
     *        The profile name.
     */
  /* nsIToolkitProfile createProfile (in nsILocalFile aRootDir, in nsILocalFile aTempDir, in AUTF8String aName); */
  nsresult CreateProfile(nsILocalFile aRootDir, nsILocalFile aTempDir, nsACString * aName, nsIToolkitProfile *_retval);

  /**
     * Returns the number of profiles.
     * @return 0, 1, or 2. More than 2 profiles will always return 2.
     */
  /* readonly attribute unsigned long profileCount; */
  nsresult GetProfileCount(PRUint32 *aProfileCount);

  /**
     * Flush the profiles list file.
     */
  /* void flush (); */
  nsresult Flush();

}

