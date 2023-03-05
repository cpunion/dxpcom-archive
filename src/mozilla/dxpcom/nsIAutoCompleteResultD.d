/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResult.idl
 */

module mozilla.dxpcom.nsIAutoCompleteResultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteResult;


public import mozilla.dxpcom.nsIAutoCompleteResultD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAutoCompleteResult */
class nsIAutoCompleteResultD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETERESULT_IID;


  alias nsIAutoCompleteResult InnerType;

  this(nsIAutoCompleteResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteResult opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteResult value) {
    inner = value;
  }

  /**
   * Possible values for the searchResult attribute
   */
  enum { RESULT_IGNORED = 1U }

  enum { RESULT_FAILURE = 2U }

  enum { RESULT_NOMATCH = 3U }

  enum { RESULT_SUCCESS = 4U }

  /**
   * The original search string
   */
  /* readonly attribute AString searchString; */
  wchar[] SearchString(){
    scope auto value = new AString();
    nsresult __result = inner.GetSearchString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The result of the search
   */
  /* readonly attribute unsigned short searchResult; */
  PRUint16 SearchResult(){
    PRUint16 value;
    nsresult __result = inner.GetSearchResult(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Index of the default item that should be entered if none is selected
   */
  /* readonly attribute long defaultIndex; */
  PRInt32 DefaultIndex(){
    PRInt32 value;
    nsresult __result = inner.GetDefaultIndex(&value);
    CheckException(__result);
    return value;
  }

  /**
   * A string describing the cause of a search failure
   */
  /* readonly attribute AString errorDescription; */
  wchar[] ErrorDescription(){
    scope auto value = new AString();
    nsresult __result = inner.GetErrorDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The number of matches
   */
  /* readonly attribute unsigned long matchCount; */
  PRUint32 MatchCount(){
    PRUint32 value;
    nsresult __result = inner.GetMatchCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the value of the result at the given index
   */
  /* AString getValueAt (in long index); */
  wchar[] GetValueAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetValueAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Get the comment of the result at the given index
   */
  /* AString getCommentAt (in long index); */
  wchar[] GetCommentAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCommentAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Get the style hint for the result at the given index
   */
  /* AString getStyleAt (in long index); */
  wchar[] GetStyleAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetStyleAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Remove the value at the given index from the autocomplete results.
   * If removeFromDb is set to true, the value should be removed from
   * persistent storage as well.
   */
  /* void removeValueAt (in long rowIndex, in boolean removeFromDb); */
  void RemoveValueAt(PRInt32 rowIndex, PRBool removeFromDb){
    nsresult __result = inner.RemoveValueAt(rowIndex, removeFromDb);
    CheckException(__result);
  }

private:
  nsIAutoCompleteResult inner;

}

