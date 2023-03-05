/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResult.idl
 */

module mozilla.xpcom.nsIAutoCompleteResult;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAutoCompleteResult */
const char[] NS_IAUTOCOMPLETERESULT_IID_STR = "eb43e1dc-2060-4d8e-aebf-3efec4e21cf8";

const nsIID NS_IAUTOCOMPLETERESULT_IID= 
  {0xeb43e1dc, 0x2060, 0x4d8e, 
    [ 0xae, 0xbf, 0x3e, 0xfe, 0xc4, 0xe2, 0x1c, 0xf8 ]};

extern(Windows)
interface nsIAutoCompleteResult : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETERESULT_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETERESULT_IID;

  /**
   * Possible values for the searchResult attribute
   */
  enum { RESULT_IGNORED = 1U };

  enum { RESULT_FAILURE = 2U };

  enum { RESULT_NOMATCH = 3U };

  enum { RESULT_SUCCESS = 4U };

  /**
   * The original search string
   */
  /* readonly attribute AString searchString; */
  nsresult GetSearchString(nsAString * aSearchString);

  /**
   * The result of the search
   */
  /* readonly attribute unsigned short searchResult; */
  nsresult GetSearchResult(PRUint16 *aSearchResult);

  /**
   * Index of the default item that should be entered if none is selected
   */
  /* readonly attribute long defaultIndex; */
  nsresult GetDefaultIndex(PRInt32 *aDefaultIndex);

  /**
   * A string describing the cause of a search failure
   */
  /* readonly attribute AString errorDescription; */
  nsresult GetErrorDescription(nsAString * aErrorDescription);

  /**
   * The number of matches
   */
  /* readonly attribute unsigned long matchCount; */
  nsresult GetMatchCount(PRUint32 *aMatchCount);

  /**
   * Get the value of the result at the given index
   */
  /* AString getValueAt (in long index); */
  nsresult GetValueAt(PRInt32 index, nsAString * _retval);

  /**
   * Get the comment of the result at the given index
   */
  /* AString getCommentAt (in long index); */
  nsresult GetCommentAt(PRInt32 index, nsAString * _retval);

  /**
   * Get the style hint for the result at the given index
   */
  /* AString getStyleAt (in long index); */
  nsresult GetStyleAt(PRInt32 index, nsAString * _retval);

  /**
   * Remove the value at the given index from the autocomplete results.
   * If removeFromDb is set to true, the value should be removed from
   * persistent storage as well.
   */
  /* void removeValueAt (in long rowIndex, in boolean removeFromDb); */
  nsresult RemoveValueAt(PRInt32 rowIndex, PRBool removeFromDb);

}

