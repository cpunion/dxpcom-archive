/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBookmarksService.idl
 */

module mozilla.xpcom.nsIBookmarksService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */


/* starting interface:    nsIBookmarksService */
const char[] NS_IBOOKMARKSSERVICE_IID_STR = "4342a6ac-1b43-4121-b606-4bdf62de71ff";

const nsIID NS_IBOOKMARKSSERVICE_IID= 
  {0x4342a6ac, 0x1b43, 0x4121, 
    [ 0xb6, 0x06, 0x4b, 0xdf, 0x62, 0xde, 0x71, 0xff ]};

extern(Windows)
interface nsIBookmarksService : nsISupports {
  static const char[] IID_STR = NS_IBOOKMARKSSERVICE_IID_STR;
  static const nsIID IID = NS_IBOOKMARKSSERVICE_IID;

  enum { BOOKMARK_DEFAULT_TYPE = 0U };

  enum { BOOKMARK_SEARCH_TYPE = 1U };

  enum { BOOKMARK_FIND_TYPE = 2U };

  enum { SORT_DESCENDING = -1 };

  enum { SORT_ASCENDING = 1 };

  /* boolean readBookmarks (); */
  nsresult ReadBookmarks(PRBool *_retval);

  /* boolean isBookmarked (in string aURL); */
  nsresult IsBookmarked(char *aURL, PRBool *_retval);

  /* boolean isBookmarkedResource (in nsIRDFResource aSource); */
  nsresult IsBookmarkedResource(nsIRDFResource aSource, PRBool *_retval);

  /* void addBookmarkImmediately (in wstring aURI, in wstring aTitle, in long bmType, in wstring docCharset); */
  nsresult AddBookmarkImmediately(PRUnichar *aURI, PRUnichar *aTitle, PRInt32 bmType, PRUnichar *docCharset);

  /* nsIRDFResource createFolder (in wstring aName); */
  nsresult CreateFolder(PRUnichar *aName, nsIRDFResource *_retval);

  /* nsIRDFResource createFolderInContainer (in wstring aName, in nsIRDFResource aParentFolder, in long aIndex); */
  nsresult CreateFolderInContainer(PRUnichar *aName, nsIRDFResource aParentFolder, PRInt32 aIndex, nsIRDFResource *_retval);

  /* nsIRDFResource createGroup (in wstring aName); */
  nsresult CreateGroup(PRUnichar *aName, nsIRDFResource *_retval);

  /* nsIRDFResource createGroupInContainer (in wstring aName, in nsIRDFResource aParentFolder, in long aIndex); */
  nsresult CreateGroupInContainer(PRUnichar *aName, nsIRDFResource aParentFolder, PRInt32 aIndex, nsIRDFResource *_retval);

  /* void sortFolder (in nsIRDFResource aFolder, in nsIRDFResource aProperty, in long aDirection, in boolean aFoldersFirst, in boolean aRecurse); */
  nsresult SortFolder(nsIRDFResource aFolder, nsIRDFResource aProperty, PRInt32 aDirection, PRBool aFoldersFirst, PRBool aRecurse);

  /* nsIRDFResource createBookmark (in wstring aName, in wstring aURL, in wstring aShortcutURL, in wstring aDescription, in wstring aDocCharSet); */
  nsresult CreateBookmark(PRUnichar *aName, PRUnichar *aURL, PRUnichar *aShortcutURL, PRUnichar *aDescription, PRUnichar *aDocCharSet, nsIRDFResource *_retval);

  /* nsIRDFResource createBookmarkInContainer (in wstring aName, in wstring aURL, in wstring aShortcutURL, in wstring aDescription, in wstring aDocCharSet, in nsIRDFResource aFolder, in long aIndex); */
  nsresult CreateBookmarkInContainer(PRUnichar *aName, PRUnichar *aURL, PRUnichar *aShortcutURL, PRUnichar *aDescription, PRUnichar *aDocCharSet, nsIRDFResource aFolder, PRInt32 aIndex, nsIRDFResource *_retval);

  /* nsIRDFResource createSeparator (); */
  nsresult CreateSeparator(nsIRDFResource *_retval);

  /* nsIRDFResource cloneResource (in nsIRDFResource aSource); */
  nsresult CloneResource(nsIRDFResource aSource, nsIRDFResource *_retval);

  /* void updateBookmarkIcon (in string aURL, in wstring aIconURL); */
  nsresult UpdateBookmarkIcon(char *aURL, PRUnichar *aIconURL);

  /* void removeBookmarkIcon (in string aURL, in wstring aIconURL); */
  nsresult RemoveBookmarkIcon(char *aURL, PRUnichar *aIconURL);

  /* void updateLastVisitedDate (in string aURL, in wstring docCharset); */
  nsresult UpdateLastVisitedDate(char *aURL, PRUnichar *docCharset);

  /* AString getLastCharset (in AUTF8String aURL); */
  nsresult GetLastCharset(nsACString * aURL, nsAString * _retval);

  /* string resolveKeyword (in wstring aName); */
  nsresult ResolveKeyword(PRUnichar *aName, char **_retval);

  /* void importSystemBookmarks (in nsIRDFResource aParentFolder); */
  nsresult ImportSystemBookmarks(nsIRDFResource aParentFolder);

  /* readonly attribute nsITransactionManager transactionManager; */
  nsresult GetTransactionManager(nsITransactionManager  *aTransactionManager);

}

