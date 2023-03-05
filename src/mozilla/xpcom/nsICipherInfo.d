/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICipherInfo.idl
 */

module mozilla.xpcom.nsICipherInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsICipherInfo */
const char[] NS_ICIPHERINFO_IID_STR = "028e2b2a-1f0b-43a4-a1a7-365d2d7f35d0";

const nsIID NS_ICIPHERINFO_IID= 
  {0x028e2b2a, 0x1f0b, 0x43a4, 
    [ 0xa1, 0xa7, 0x36, 0x5d, 0x2d, 0x7f, 0x35, 0xd0 ]};

extern(Windows)
interface nsICipherInfo : nsISupports {
  static const char[] IID_STR = NS_ICIPHERINFO_IID_STR;
  static const nsIID IID = NS_ICIPHERINFO_IID;

  /* readonly attribute ACString longName; */
  nsresult GetLongName(nsACString * aLongName);

  /* readonly attribute PRBool isSSL2; */
  nsresult GetIsSSL2(PRBool *aIsSSL2);

  /* readonly attribute PRBool isFIPS; */
  nsresult GetIsFIPS(PRBool *aIsFIPS);

  /* readonly attribute PRBool isExportable; */
  nsresult GetIsExportable(PRBool *aIsExportable);

  /* readonly attribute PRBool nonStandard; */
  nsresult GetNonStandard(PRBool *aNonStandard);

  /* readonly attribute ACString symCipherName; */
  nsresult GetSymCipherName(nsACString * aSymCipherName);

  /* readonly attribute ACString authAlgorithmName; */
  nsresult GetAuthAlgorithmName(nsACString * aAuthAlgorithmName);

  /* readonly attribute ACString keaTypeName; */
  nsresult GetKeaTypeName(nsACString * aKeaTypeName);

  /* readonly attribute ACString macAlgorithmName; */
  nsresult GetMacAlgorithmName(nsACString * aMacAlgorithmName);

  /* readonly attribute PRInt32 effectiveKeyBits; */
  nsresult GetEffectiveKeyBits(PRInt32 *aEffectiveKeyBits);

}


/* starting interface:    nsICipherInfoService */
const char[] NS_ICIPHERINFOSERVICE_IID_STR = "766d47cb-6d8c-4e71-b6b7-336917629a69";

const nsIID NS_ICIPHERINFOSERVICE_IID= 
  {0x766d47cb, 0x6d8c, 0x4e71, 
    [ 0xb6, 0xb7, 0x33, 0x69, 0x17, 0x62, 0x9a, 0x69 ]};

extern(Windows)
interface nsICipherInfoService : nsISupports {
  static const char[] IID_STR = NS_ICIPHERINFOSERVICE_IID_STR;
  static const nsIID IID = NS_ICIPHERINFOSERVICE_IID;

  /* nsICipherInfo getCipherInfoByPrefString (in ACString aPrefString); */
  nsresult GetCipherInfoByPrefString(nsACString * aPrefString, nsICipherInfo *_retval);

}

