/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitProfileService.idl
 */

module mozilla.dxpcom.nsIToolkitProfileServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIToolkitProfileService;


public import mozilla.dxpcom.nsIToolkitProfileServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIToolkitProfile;

public import mozilla.dxpcom.nsIToolkitProfileD;

public import mozilla.xpcom.nsIToolkitProfile;

import mozilla.dxpcom.nsIToolkitProfileD;


/* starting wrapper class:    nsIToolkitProfileService */
class nsIToolkitProfileServiceD : public nsISupportsD {

  static const nsIID IID = NS_ITOOLKITPROFILESERVICE_IID;


  alias nsIToolkitProfileService InnerType;

  this(nsIToolkitProfileService intr){
    super(intr);
    this.inner = intr;
  }

  nsIToolkitProfileService opCast() {
    return inner;
  }

  void opAssign(nsIToolkitProfileService value) {
    inner = value;
  }

  /* attribute boolean startWithLastProfile; */
  PRBool StartWithLastProfile(){
    PRBool value;
    nsresult __result = inner.GetStartWithLastProfile(&value);
    CheckException(__result);
    return value;
  }
  void StartWithLastProfile(PRBool aStartWithLastProfile){
    nsresult __result = inner.SetStartWithLastProfile(aStartWithLastProfile);
    CheckException(__result);
  }

  /* attribute boolean startOffline; */
  PRBool StartOffline(){
    PRBool value;
    nsresult __result = inner.GetStartOffline(&value);
    CheckException(__result);
    return value;
  }
  void StartOffline(PRBool aStartOffline){
    nsresult __result = inner.SetStartOffline(aStartOffline);
    CheckException(__result);
  }

  /* readonly attribute nsISimpleEnumerator profiles; */
  nsISimpleEnumeratorD  Profiles(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetProfiles(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /* attribute nsIToolkitProfile selectedProfile; */
  nsIToolkitProfileD  SelectedProfile(){
    nsIToolkitProfile value;
    nsresult __result = inner.GetSelectedProfile(&value);
    CheckException(__result);
    return new nsIToolkitProfileD(value);
  }
  void SelectedProfile(nsIToolkitProfileD  aSelectedProfile){
    nsIToolkitProfile value;
    nsresult __result = inner.SetSelectedProfile(value);
    CheckException(__result);
  }

  /**
     * Get a profile by name. This is mainly for use by the -P
     * commandline flag.
     *
     * @param aName The profile name to find.
     */
  /* nsIToolkitProfile getProfileByName (in AUTF8String aName); */
  nsIToolkitProfileD  GetProfileByName(char[] aName){
    scope auto _aName = new ACString(aName);
    nsIToolkitProfile _retval;
    nsresult __result = inner.GetProfileByName(cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return new nsIToolkitProfileD(_retval);
  }

  /**
     * Lock an arbitrary path as a profile. If the path does not exist, it
     * will be created and the defaults copied from the application directory.
     */
  /* nsIProfileLock lockProfilePath (in nsILocalFile aDirectory, in nsILocalFile aTempDirectory); */
  nsIProfileLockD  LockProfilePath(nsILocalFileD aDirectory, nsILocalFileD aTempDirectory){
    nsIProfileLock _retval;
    nsresult __result = inner.LockProfilePath(aDirectory ? cast(nsILocalFile)aDirectory : null, aTempDirectory ? cast(nsILocalFile)aTempDirectory : null, &_retval);
    CheckException(__result);
    return new nsIProfileLockD(_retval);
  }

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
  nsIToolkitProfileD  CreateProfile(nsILocalFileD aRootDir, nsILocalFileD aTempDir, char[] aName){
    scope auto _aName = new ACString(aName);
    nsIToolkitProfile _retval;
    nsresult __result = inner.CreateProfile(aRootDir ? cast(nsILocalFile)aRootDir : null, aTempDir ? cast(nsILocalFile)aTempDir : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return new nsIToolkitProfileD(_retval);
  }

  /**
     * Returns the number of profiles.
     * @return 0, 1, or 2. More than 2 profiles will always return 2.
     */
  /* readonly attribute unsigned long profileCount; */
  PRUint32 ProfileCount(){
    PRUint32 value;
    nsresult __result = inner.GetProfileCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Flush the profiles list file.
     */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

private:
  nsIToolkitProfileService inner;

}

