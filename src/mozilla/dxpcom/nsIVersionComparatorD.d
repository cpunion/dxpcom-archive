/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIVersionComparator.idl
 */

module mozilla.dxpcom.nsIVersionComparatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIVersionComparator;


public import mozilla.dxpcom.nsIVersionComparatorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIVersionComparator */
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
class nsIVersionComparatorD : public nsISupportsD {

  static const nsIID IID = NS_IVERSIONCOMPARATOR_IID;


  alias nsIVersionComparator InnerType;

  this(nsIVersionComparator intr){
    super(intr);
    this.inner = intr;
  }

  nsIVersionComparator opCast() {
    return inner;
  }

  void opAssign(nsIVersionComparator value) {
    inner = value;
  }

  /**
   * Compare two version strings
   * @param   A   The first version
   * @param   B   The second version
   * @returns < 0 if A < B
   *          = 0 if A == B
   *          > 0 if A > B
   */
  /* long compare (in ACString A, in ACString B); */
  PRInt32 Compare(char[] A, char[] B){
    scope auto _A = new ACString(A);
    scope auto _B = new ACString(B);
    PRInt32 _retval;
    nsresult __result = inner.Compare(cast(nsACString*)_A, cast(nsACString*)_B, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIVersionComparator inner;

}

