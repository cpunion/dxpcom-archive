/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectElement.idl
 */

module mozilla.xpcom.nsISelectElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMHTMLOptionElement; /* forward declaration */


/* starting interface:    nsISelectElement */
const char[] NS_ISELECTELEMENT_IID_STR = "35bd8ed5-5f34-4126-8c4f-38ba01681836";

const nsIID NS_ISELECTELEMENT_IID= 
  {0x35bd8ed5, 0x5f34, 0x4126, 
    [ 0x8c, 0x4f, 0x38, 0xba, 0x01, 0x68, 0x18, 0x36 ]};

/** 
 * This interface is used to notify a SELECT when OPTION
 * elements are added and removed from its subtree.
 * Note that the nsIDOMHTMLSelectElement and nsIContent 
 * interfaces are the ones to use to access and enumerate
 * OPTIONs within a SELECT element.
 */
extern(Windows)
interface nsISelectElement : nsISupports {
  static const char[] IID_STR = NS_ISELECTELEMENT_IID_STR;
  static const nsIID IID = NS_ISELECTELEMENT_IID;

  /**
   * To be called when stuff is added under a child of the select--but *before*
   * they are actually added.
   *
   * @param aOptions the content that was added (usually just an option, but
   *        could be an optgroup node with many child options)
   * @param aParent the parent the options were added to (could be an optgroup)
   * @param aContentIndex the index where the options are being added within the
   *        parent (if the parent is an optgroup, the index within the optgroup)
   */
  /* [noscript] void willAddOptions (in nsIContent aOptions, in nsIContent aParent, in long aContentIndex); */
  nsresult WillAddOptions(nsIContent aOptions, nsIContent aParent, PRInt32 aContentIndex);

  /**
   * To be called when stuff is removed under a child of the select--but
   * *before* they are actually removed.
   *
   * @param aParent the parent the option(s) are being removed from
   * @param aContentIndex the index of the option(s) within the parent (if the
   *        parent is an optgroup, the index within the optgroup)
   */
  /* [noscript] void willRemoveOptions (in nsIContent aParent, in long aContentIndex); */
  nsresult WillRemoveOptions(nsIContent aParent, PRInt32 aContentIndex);

  /**
   * Checks whether an option is disabled (even if it's part of an optgroup)
   *
   * @param aIndex the index of the option to check
   * @return whether the option is disabled
   */
  /* boolean isOptionDisabled (in long aIndex); */
  nsresult IsOptionDisabled(PRInt32 aIndex, PRBool *_retval);

  /**
   * Sets multiple options (or just sets startIndex if select is single)
   * and handles notifications and cleanup and everything under the sun.
   * When this method exits, the select will be in a consistent state.  i.e.
   * if you set the last option to false, it will select an option anyway.
   *
   * @param aStartIndex the first index to set
   * @param aEndIndex the last index to set (set same as first index for one
   *        option)
   * @param aIsSelected whether to set the option(s) to true or false
   * @param aClearAll whether to clear all other options (for example, if you
   *        are normal-clicking on the current option)
   * @param aSetDisabled whether it is permissible to set disabled options
   *        (for JavaScript)
   * @param aNotify whether to notify frames and such
   * @return whether any options were actually changed
   */
  /* boolean setOptionsSelectedByIndex (in long aStartIndex, in long aEndIndex, in boolean aIsSelected, in boolean aClearAll, in boolean aSetDisabled, in boolean aNotify); */
  nsresult SetOptionsSelectedByIndex(PRInt32 aStartIndex, PRInt32 aEndIndex, PRBool aIsSelected, PRBool aClearAll, PRBool aSetDisabled, PRBool aNotify, PRBool *_retval);

  /**
   * Finds the index of a given option element
   *
   * @param aOption the option to get the index of
   * @param aStartIndex the index to start looking at
   * @param aForward TRUE to look forward, FALSE to look backward
   * @return the option index
   */
  /* long getOptionIndex (in nsIDOMHTMLOptionElement aOption, in long aStartIndex, in boolean aForward); */
  nsresult GetOptionIndex(nsIDOMHTMLOptionElement aOption, PRInt32 aStartIndex, PRBool aForward, PRInt32 *_retval);

  /** Whether or not there are optgroups in this select */
  /* readonly attribute boolean hasOptGroups; */
  nsresult GetHasOptGroups(PRBool *aHasOptGroups);

}

