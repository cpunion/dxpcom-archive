/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICollation.idl
 */

module mozilla.xpcom.nsICollation;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsILocale;

public import mozilla.xpcom.nsICollation; /* forward declaration */


/* starting interface:    nsICollationFactory */
const char[] NS_ICOLLATIONFACTORY_IID_STR = "04971e14-d6b3-4ada-8cbb-c3a13842b349";

const nsIID NS_ICOLLATIONFACTORY_IID= 
  {0x04971e14, 0xd6b3, 0x4ada, 
    [ 0x8c, 0xbb, 0xc3, 0xa1, 0x38, 0x42, 0xb3, 0x49 ]};

extern(Windows)
interface nsICollationFactory : nsISupports {
  static const char[] IID_STR = NS_ICOLLATIONFACTORY_IID_STR;
  static const nsIID IID = NS_ICOLLATIONFACTORY_IID;

  /* nsICollation CreateCollation (in nsILocale locale); */
  nsresult CreateCollation(nsILocale locale, nsICollation *_retval);

}


/* starting interface:    nsICollation */
const char[] NS_ICOLLATION_IID_STR = "b0132cc0-3786-4557-9874-910d7def5f93";

const nsIID NS_ICOLLATION_IID= 
  {0xb0132cc0, 0x3786, 0x4557, 
    [ 0x98, 0x74, 0x91, 0x0d, 0x7d, 0xef, 0x5f, 0x93 ]};

extern(Windows)
interface nsICollation : nsISupports {
  static const char[] IID_STR = NS_ICOLLATION_IID_STR;
  static const nsIID IID = NS_ICOLLATION_IID;

  enum { kCollationStrengthDefault = 0 };

  enum { kCollationCaseInsensitiveAscii = 1 };

  enum { kCollationAccentInsenstive = 2 };

  enum { kCollationCaseSensitive = 0 };

  enum { kCollationCaseInSensitive = 3 };

  /* void initialize (in nsILocale locale); */
  nsresult Initialize(nsILocale locale);

  /* long compareString (in long strength, in AString string1, in AString string2); */
  nsresult CompareString(PRInt32 strength, nsAString * string1, nsAString * string2, PRInt32 *_retval);

  /* [noscript] void allocateRawSortKey (in long strength, in AString stringIn, [array, size_is (outLen)] out octet key, out unsigned long outLen); */
  nsresult AllocateRawSortKey(PRInt32 strength, nsAString * stringIn, PRUint8 **key, PRUint32 *outLen);

  /* [noscript] long compareRawSortKey ([array, size_is (len1), const] in octet key1, in unsigned long len1, [array, size_is (len2), const] in octet key2, in unsigned long len2); */
  nsresult CompareRawSortKey(PRUint8 *key1, PRUint32 len1, PRUint8 *key2, PRUint32 len2, PRInt32 *_retval);

}

