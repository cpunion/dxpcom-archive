/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComm4xProfile.idl
 */

module mozilla.dxpcom.nsIComm4xProfileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComm4xProfile;


public import mozilla.dxpcom.nsIComm4xProfileD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILocalFile;
public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIComm4xProfile */
/**
 * This interface provides support for getting 4.x profile information
 * This interface can be used to get the existing 4.x profiles
 * and for getting the mail directory for the profile.
 * 
 */
class nsIComm4xProfileD : public nsISupportsD {

  static const nsIID IID = NS_ICOMM4XPROFILE_IID;


  alias nsIComm4xProfile InnerType;

  this(nsIComm4xProfile intr){
    super(intr);
    this.inner = intr;
  }

  nsIComm4xProfile opCast() {
    return inner;
  }

  void opAssign(nsIComm4xProfile value) {
    inner = value;
  }

  /**
    *  Parses the 4.x registry file and returns a list of profiles. 
    */
  /* void getProfileList (out unsigned long length, [array, size_is (length), retval] out wstring selectList); */
  void GetProfileList(out PRUint32 length, out PRUnichar**selectList){
    nsresult __result = inner.GetProfileList(&length, &selectList);
    CheckException(__result);
  }

  /**
    *  Searches the preferences file of the given profile for the pref mail.directory
    *  If the pref does not exist it, returns the default value.
    *  @param profileName  name of the profile in the profiles array 
    *  @return             The path to the mail directory for the profile with the name profileName
    *   
    */
  /* wstring getMailDir (in wstring profileName); */
  PRUnichar* GetMailDir(PRUnichar*profileName){
    PRUnichar* _retval;
    nsresult __result = inner.GetMailDir(profileName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIComm4xProfile inner;

}

