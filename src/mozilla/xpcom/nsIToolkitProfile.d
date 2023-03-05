/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitProfile.idl
 */

module mozilla.xpcom.nsIToolkitProfile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIToolkitProfile; /* forward declaration */

public import mozilla.xpcom.nsIProfileUnlocker; /* forward declaration */


/* starting interface:    nsIProfileLock */
const char[] NS_IPROFILELOCK_IID_STR = "50e07b0a-f338-4da3-bcdb-f4bb0db94dbe";

const nsIID NS_IPROFILELOCK_IID= 
  {0x50e07b0a, 0xf338, 0x4da3, 
    [ 0xbc, 0xdb, 0xf4, 0xbb, 0x0d, 0xb9, 0x4d, 0xbe ]};

/**
 * Hold on to a profile lock. Once you release the last reference to this
 * interface, the profile lock is released.
 */
extern(Windows)
interface nsIProfileLock : nsISupports {
  static const char[] IID_STR = NS_IPROFILELOCK_IID_STR;
  static const nsIID IID = NS_IPROFILELOCK_IID;

  /**
     * The main profile directory.
     */
  /* readonly attribute nsILocalFile directory; */
  nsresult GetDirectory(nsILocalFile  *aDirectory);

  /**
     * A directory corresponding to the main profile directory that exists for
     * the purpose of storing data on the local filesystem, including cache
     * files or other data files that may not represent critical user data.
     * (e.g., this directory may not be included as part of a backup scheme.)
     *
     * In some cases, this directory may just be the main profile directory.
     */
  /* readonly attribute nsILocalFile localDirectory; */
  nsresult GetLocalDirectory(nsILocalFile  *aLocalDirectory);

  /**
     * Unlock the profile.
     */
  /* void unlock (); */
  nsresult Unlock();

}


/* starting interface:    nsIToolkitProfile */
const char[] NS_ITOOLKITPROFILE_IID_STR = "7422b090-4a86-4407-972e-75468a625388";

const nsIID NS_ITOOLKITPROFILE_IID= 
  {0x7422b090, 0x4a86, 0x4407, 
    [ 0x97, 0x2e, 0x75, 0x46, 0x8a, 0x62, 0x53, 0x88 ]};

extern(Windows)
interface nsIToolkitProfile : nsISupports {
  static const char[] IID_STR = NS_ITOOLKITPROFILE_IID_STR;
  static const nsIID IID = NS_ITOOLKITPROFILE_IID;

  /**
 * A interface representing a profile.
 * @note THIS INTERFACE SHOULD BE IMPLEMENTED BY THE TOOLKIT CODE ONLY! DON'T
 *       EVEN THINK ABOUT IMPLEMENTING THIS IN JAVASCRIPT!
 */
/**
     * The location of the profile directory.
     */
  /* readonly attribute nsILocalFile rootDir; */
  nsresult GetRootDir(nsILocalFile  *aRootDir);

  /**
     * The location of the profile local directory, which may be the same as
     * the root directory.  See nsIProfileLock::localDirectory.
     */
  /* readonly attribute nsILocalFile localDir; */
  nsresult GetLocalDir(nsILocalFile  *aLocalDir);

  /**
     * The name of the profile.
     */
  /* attribute AUTF8String name; */
  nsresult GetName(nsACString * aName);
  nsresult SetName(nsACString * aName);

  /**
     * Removes the profile from the registry of profiles.
     *
     * @param removeFiles
     *        Indicates whether or not the profile directory should be
     *        removed in addition.
     */
  /* void remove (in boolean removeFiles); */
  nsresult Remove(PRBool removeFiles);

  /**
     * Lock this profile using platform-specific locking methods.
     *
     * @param lockFile If locking fails, this may return a lockFile object
     *                 which can be used in platform-specific ways to
     *                 determine which process has the file locked. Null
     *                 may be passed.
     * @return An interface which holds a profile lock as long as you reference
     *         it.
     * @throws NS_ERROR_FILE_ACCESS_DENIED if the profile was already locked.
     */
  /* nsIProfileLock lock (out nsIProfileUnlocker aUnlocker); */
  nsresult Lock(nsIProfileUnlocker *aUnlocker, nsIProfileLock *_retval);

}

