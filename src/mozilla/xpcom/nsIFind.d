/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFind.idl
 */

module mozilla.xpcom.nsIFind;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */


/* starting interface:    nsIFind */
const char[] NS_IFIND_IID_STR = "75125d55-37ee-4575-b9b5-f33bfa68c2a1";

const nsIID NS_IFIND_IID= 
  {0x75125d55, 0x37ee, 0x4575, 
    [ 0xb9, 0xb5, 0xf3, 0x3b, 0xfa, 0x68, 0xc2, 0xa1 ]};

extern(Windows)
interface nsIFind : nsISupports {
  static const char[] IID_STR = NS_IFIND_IID_STR;
  static const nsIID IID = NS_IFIND_IID;

  /* attribute boolean findBackwards; */
  nsresult GetFindBackwards(PRBool *aFindBackwards);
  nsresult SetFindBackwards(PRBool aFindBackwards);

  /* attribute boolean caseSensitive; */
  nsresult GetCaseSensitive(PRBool *aCaseSensitive);
  nsresult SetCaseSensitive(PRBool aCaseSensitive);

  /**
   * Use "find entire words" mode by setting to a word breaker
   * or null, to disable "entire words" mode.
   */
  /* attribute nsIWordBreaker wordBreaker; */
  nsresult GetWordBreaker(nsIWordBreaker  *aWordBreaker);
  nsresult SetWordBreaker(nsIWordBreaker  aWordBreaker);

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
  nsresult Find(PRUnichar *aPatText, nsIDOMRange aSearchRange, nsIDOMRange aStartPoint, nsIDOMRange aEndPoint, nsIDOMRange *_retval);

}

