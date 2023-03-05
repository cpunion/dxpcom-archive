/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIVersionComparator.idl
 */

module mozilla.xpcom.nsIVersionComparator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIVersionComparator */
const char[] NS_IVERSIONCOMPARATOR_IID_STR = "e6cd620a-edbb-41d2-9e42-9a2ffc8107f3";

const nsIID NS_IVERSIONCOMPARATOR_IID= 
  {0xe6cd620a, 0xedbb, 0x41d2, 
    [ 0x9e, 0x42, 0x9a, 0x2f, 0xfc, 0x81, 0x07, 0xf3 ]};

/**
 * Version strings are dot-separated sequences of version-parts.
 *
 * A version-part consists of up to four parts, all of which are optional:
 *
 * <number-a><string-b><number-c><string-d (everything else)>
 *
 * A version-part may also consist of a single asterisk "*" which indicates
 * "infinity".
 *
 * Numbers are base-10, and are zero if left out.
 * Strings are compared bytewise.
 *
 * For additional backwards compatibility, if "string-b" is "+" then
 * "number-a" is incremented by 1 and "string-b" becomes "pre".
 *
 * 1.0pre1
 * < 1.0pre2  
 *   < 1.0 == 1.0.0 == 1.0.0.0
 *     < 1.1pre == 1.1pre0 == 1.0+
 *       < 1.1pre1a
 *         < 1.1pre1
 *           < 1.1pre10a
 *             < 1.1pre10
 *
 * Although not required by this interface, it is recommended that
 * numbers remain within the limits of a signed char, i.e. -127 to 128.
 */
extern(Windows)
interface nsIVersionComparator : nsISupports {
  static const char[] IID_STR = NS_IVERSIONCOMPARATOR_IID_STR;
  static const nsIID IID = NS_IVERSIONCOMPARATOR_IID;

  /**
   * Compare two version strings
   * @param   A   The first version
   * @param   B   The second version
   * @returns < 0 if A < B
   *          = 0 if A == B
   *          > 0 if A > B
   */
  /* long compare (in ACString A, in ACString B); */
  nsresult Compare(nsACString * A, nsACString * B, PRInt32 *_retval);

}

