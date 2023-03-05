/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComm4xProfile.idl
 */

module mozilla.xpcom.nsIComm4xProfile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILocalFile;


/* starting interface:    nsIComm4xProfile */
const char[] NS_ICOMM4XPROFILE_IID_STR = "c66c1060-2bdc-11d6-92a0-0010a4b26cda";

const nsIID NS_ICOMM4XPROFILE_IID= 
  {0xc66c1060, 0x2bdc, 0x11d6, 
    [ 0x92, 0xa0, 0x00, 0x10, 0xa4, 0xb2, 0x6c, 0xda ]};

/**
 * This interface provides support for getting 4.x profile information
 * This interface can be used to get the existing 4.x profiles
 * and for getting the mail directory for the profile.
 * 
 */
extern(Windows)
interface nsIComm4xProfile : nsISupports {
  static const char[] IID_STR = NS_ICOMM4XPROFILE_IID_STR;
  static const nsIID IID = NS_ICOMM4XPROFILE_IID;

  /**
    *  Parses the 4.x registry file and returns a list of profiles. 
    */
  /* void getProfileList (out unsigned long length, [array, size_is (length), retval] out wstring selectList); */
  nsresult GetProfileList(PRUint32 *length, PRUnichar ***selectList);

  /**
    *  Searches the preferences file of the given profile for the pref mail.directory
    *  If the pref does not exist it, returns the default value.
    *  @param profileName  name of the profile in the profiles array 
    *  @return             The path to the mail directory for the profile with the name profileName
    *   
    */
  /* wstring getMailDir (in wstring profileName); */
  nsresult GetMailDir(PRUnichar *profileName, PRUnichar **_retval);

}

