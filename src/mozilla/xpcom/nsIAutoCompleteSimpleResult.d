/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSimpleResult.idl
 */

module mozilla.xpcom.nsIAutoCompleteSimpleResult;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAutoCompleteResult;


/* starting interface:    nsIAutoCompleteSimpleResult */
const char[] NS_IAUTOCOMPLETESIMPLERESULT_IID_STR = "cc79f293-7114-4287-870b-d28aa61aa7df";

const nsIID NS_IAUTOCOMPLETESIMPLERESULT_IID= 
  {0xcc79f293, 0x7114, 0x4287, 
    [ 0x87, 0x0b, 0xd2, 0x8a, 0xa6, 0x1a, 0xa7, 0xdf ]};

/**
 * This class implements nsIAutoCompleteResult and provides simple methods
 * for setting the value and result items. It can be used whenever some basic
 * auto complete results are needed that can be pre-generated and filled into
 * an array.
 */
extern(Windows)
interface nsIAutoCompleteSimpleResult : nsIAutoCompleteResult {
  static const char[] IID_STR = NS_IAUTOCOMPLETESIMPLERESULT_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETESIMPLERESULT_IID;

  /**
   * A writer for the readonly attribute 'searchString' which should contain
   * the string that the user typed.
   */
  /* void setSearchString (in AString aSearchString); */
  nsresult SetSearchString(nsAString * aSearchString);

  /**
   * A writer for the readonly attribute 'errorDescription'.
   */
  /* void setErrorDescription (in AString aErrorDescription); */
  nsresult SetErrorDescription(nsAString * aErrorDescription);

  /**
   * A writer for the readonly attribute 'defaultIndex' which should contain
   * the index of the list that will be selected by default (normally 0).
   */
  /* void setDefaultIndex (in long aDefaultIndex); */
  nsresult SetDefaultIndex(PRInt32 aDefaultIndex);

  /**
   * A writer for the readonly attribute 'searchResult' which should contain
   * one of the constants nsIAutoCompleteResult.RESULT_* indicating the success
   * of the search.
   */
  /* void setSearchResult (in unsigned short aSearchResult); */
  nsresult SetSearchResult(PRUint16 aSearchResult);

  /**
   * Appends a result item consisting of the given value and comment. This is
   * how you add results.
   */
  /* void appendMatch (in AString aValue, in AString aComment); */
  nsresult AppendMatch(nsAString * aValue, nsAString * aComment);

}

