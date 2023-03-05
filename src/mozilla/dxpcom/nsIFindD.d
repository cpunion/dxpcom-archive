/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFind.idl
 */

module mozilla.dxpcom.nsIFindD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFind;


public import mozilla.dxpcom.nsIFindD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;


/* starting wrapper class:    nsIFind */
class nsIFindD : public nsISupportsD {

  static const nsIID IID = NS_IFIND_IID;


  alias nsIFind InnerType;

  this(nsIFind intr){
    super(intr);
    this.inner = intr;
  }

  nsIFind opCast() {
    return inner;
  }

  void opAssign(nsIFind value) {
    inner = value;
  }

  /* attribute boolean findBackwards; */
  PRBool FindBackwards(){
    PRBool value;
    nsresult __result = inner.GetFindBackwards(&value);
    CheckException(__result);
    return value;
  }
  void FindBackwards(PRBool aFindBackwards){
    nsresult __result = inner.SetFindBackwards(aFindBackwards);
    CheckException(__result);
  }

  /* attribute boolean caseSensitive; */
  PRBool CaseSensitive(){
    PRBool value;
    nsresult __result = inner.GetCaseSensitive(&value);
    CheckException(__result);
    return value;
  }
  void CaseSensitive(PRBool aCaseSensitive){
    nsresult __result = inner.SetCaseSensitive(aCaseSensitive);
    CheckException(__result);
  }

  /**
   * Use "find entire words" mode by setting to a word breaker
   * or null, to disable "entire words" mode.
   */
  /* attribute nsIWordBreaker wordBreaker; */
  nsIWordBreakerD  WordBreaker(){
    nsIWordBreaker value;
    nsresult __result = inner.GetWordBreaker(&value);
    CheckException(__result);
    return new nsIWordBreakerD(value);
  }
  void WordBreaker(nsIWordBreakerD  aWordBreaker){
    nsIWordBreaker value;
    nsresult __result = inner.SetWordBreaker(value);
    CheckException(__result);
  }

  /**
   * Find some text in the current context. The implementation is
   * responsible for performing the find and highlighting the text.
   *
   * @param aPatText     The text to search for.
   * @param aSearchRange A Range specifying domain of search.
   * @param aStartPoint  A Range specifying search start point.
   *                     If not collapsed, we'll start from
   *                     end (forward) or start (backward).
   *                     May be null; if so, we'll start at the start
   *                     (forward) or end (back) of aSearchRange.
   * @param aEndPoint    A Range specifying search end point.
   *                     If not collapsed, we'll end at
   *                     end (forward) or start (backward).
   *                     May be null; if so, we'll end at the end
   *                     (forward) or start (back) of aSearchRange.
   * @retval             A range spanning the match that was found (or null).
   */
  /* nsIDOMRange Find (in wstring aPatText, in nsIDOMRange aSearchRange, in nsIDOMRange aStartPoint, in nsIDOMRange aEndPoint); */
  nsIDOMRangeD  Find(PRUnichar*aPatText, nsIDOMRangeD aSearchRange, nsIDOMRangeD aStartPoint, nsIDOMRangeD aEndPoint){
    nsIDOMRange _retval;
    nsresult __result = inner.Find(aPatText, aSearchRange ? cast(nsIDOMRange)aSearchRange : null, aStartPoint ? cast(nsIDOMRange)aStartPoint : null, aEndPoint ? cast(nsIDOMRange)aEndPoint : null, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

private:
  nsIFind inner;

}

