/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfile.idl
 */

module mozilla.xpcom.nsIProfile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsIProfile */
const char[] NS_IPROFILE_IID_STR = "02b0625a-e7f3-11d2-9f5a-006008a6efe9";

const nsIID NS_IPROFILE_IID= 
  {0x02b0625a, 0xe7f3, 0x11d2, 
    [ 0x9f, 0x5a, 0x00, 0x60, 0x08, 0xa6, 0xef, 0xe9 ]};

/**
 * nsIProfile
 * 
 * @status FROZEN
 * @version 1.0
 */
extern(Windows)
interface nsIProfile : nsISupports {
  static const char[] IID_STR = NS_IPROFILE_IID_STR;
  static const nsIID IID = NS_IPROFILE_IID;

  /* readonly attribute long profileCount; */
  nsresult GetProfileCount(PRInt32 *aProfileCount);

  /* void getProfileList (out unsigned long length, [array, size_is (length), retval] out wstring profileNames); */
  nsresult GetProfileList(PRUint32 *length, PRUnichar ***profileNames);

  /* boolean profileExists (in wstring profileName); */
  nsresult ProfileExists(PRUnichar *profileName, PRBool *_retval);

  /* attribute wstring currentProfile; */
  nsresult GetCurrentProfile(PRUnichar * *aCurrentProfile);
  nsresult SetCurrentProfile(PRUnichar * aCurrentProfile);

  enum { SHUTDOWN_PERSIST = 1U };

  enum { SHUTDOWN_CLEANSE = 2U };

  /* void shutDownCurrentProfile (in unsigned long shutDownType); */
  nsresult ShutDownCurrentProfile(PRUint32 shutDownType);

  /* void createNewProfile (in wstring profileName, in wstring nativeProfileDir, in wstring langcode, in boolean useExistingDir); */
  nsresult CreateNewProfile(PRUnichar *profileName, PRUnichar *nativeProfileDir, PRUnichar *langcode, PRBool useExistingDir);

  /* void renameProfile (in wstring oldName, in wstring newName); */
  nsresult RenameProfile(PRUnichar *oldName, PRUnichar *newName);

  /* void deleteProfile (in wstring name, in boolean canDeleteFiles); */
  nsresult DeleteProfile(PRUnichar *name, PRBool canDeleteFiles);

  /* void cloneProfile (in wstring profileName); */
  nsresult CloneProfile(PRUnichar *profileName);

}

