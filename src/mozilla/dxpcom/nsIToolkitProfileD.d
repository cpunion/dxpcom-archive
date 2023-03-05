/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitProfile.idl
 */

module mozilla.dxpcom.nsIToolkitProfileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIToolkitProfile;


public import mozilla.dxpcom.nsIToolkitProfileD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIToolkitProfile;

public import mozilla.dxpcom.nsIToolkitProfileD;

public import mozilla.xpcom.nsIProfileUnlocker;

public import mozilla.dxpcom.nsIProfileUnlockerD;


/* starting wrapper class:    nsIProfileLock */
/**
 * Hold on to a profile lock. Once you release the last reference to this
 * interface, the profile lock is released.
 */
class nsIProfileLockD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILELOCK_IID;


  alias nsIProfileLock InnerType;

  this(nsIProfileLock intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileLock opCast() {
    return inner;
  }

  void opAssign(nsIProfileLock value) {
    inner = value;
  }

  /**
     * The main profile directory.
     */
  /* readonly attribute nsILocalFile directory; */
  nsILocalFileD  Directory(){
    nsILocalFile value;
    nsresult __result = inner.GetDirectory(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
     * A directory corresponding to the main profile directory that exists for
     * the purpose of storing data on the local filesystem, including cache
     * files or other data files that may not represent critical user data.
     * (e.g., this directory may not be included as part of a backup scheme.)
     *
     * In some cases, this directory may just be the main profile directory.
     */
  /* readonly attribute nsILocalFile localDirectory; */
  nsILocalFileD  LocalDirectory(){
    nsILocalFile value;
    nsresult __result = inner.GetLocalDirectory(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
     * Unlock the profile.
     */
  /* void unlock (); */
  void Unlock(){
    nsresult __result = inner.Unlock();
    CheckException(__result);
  }

private:
  nsIProfileLock inner;

}


/* starting wrapper class:    nsIToolkitProfile */
class nsIToolkitProfileD : public nsISupportsD {

  static const nsIID IID = NS_ITOOLKITPROFILE_IID;


  alias nsIToolkitProfile InnerType;

  this(nsIToolkitProfile intr){
    super(intr);
    this.inner = intr;
  }

  nsIToolkitProfile opCast() {
    return inner;
  }

  void opAssign(nsIToolkitProfile value) {
    inner = value;
  }

  /**
 * A interface representing a profile.
 * @note THIS INTERFACE SHOULD BE IMPLEMENTED BY THE TOOLKIT CODE ONLY! DON'T
 *       EVEN THINK ABOUT IMPLEMENTING THIS IN JAVASCRIPT!
 */
/**
     * The location of the profile directory.
     */
  /* readonly attribute nsILocalFile rootDir; */
  nsILocalFileD  RootDir(){
    nsILocalFile value;
    nsresult __result = inner.GetRootDir(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
     * The location of the profile local directory, which may be the same as
     * the root directory.  See nsIProfileLock::localDirectory.
     */
  /* readonly attribute nsILocalFile localDir; */
  nsILocalFileD  LocalDir(){
    nsILocalFile value;
    nsresult __result = inner.GetLocalDir(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
     * The name of the profile.
     */
  /* attribute AUTF8String name; */
  char[] Name(){
    scope auto value = new ACString();
    nsresult __result = inner.GetName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(char[] aName){
    scope auto value = new ACString(aName);
    nsresult __result = inner.SetName(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Removes the profile from the registry of profiles.
     *
     * @param removeFiles
     *        Indicates whether or not the profile directory should be
     *        removed in addition.
     */
  /* void remove (in boolean removeFiles); */
  void Remove(PRBool removeFiles){
    nsresult __result = inner.Remove(removeFiles);
    CheckException(__result);
  }

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
  nsIProfileLockD  Lock(out nsIProfileUnlockerD aUnlocker){
    nsIProfileUnlocker _aUnlocker;
    nsIProfileLock _retval;
    nsresult __result = inner.Lock(&_aUnlocker, &_retval);
    CheckException(__result);
    aUnlocker = _aUnlocker ? new nsIProfileUnlockerD(_aUnlocker) : null;
    return new nsIProfileLockD(_retval);
  }

private:
  nsIToolkitProfile inner;

}

