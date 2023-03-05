/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBookmarksService.idl
 */

module mozilla.dxpcom.nsIBookmarksServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBookmarksService;


public import mozilla.dxpcom.nsIBookmarksServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;


/* starting wrapper class:    nsIBookmarksService */
class nsIBookmarksServiceD : public nsISupportsD {

  static const nsIID IID = NS_IBOOKMARKSSERVICE_IID;


  alias nsIBookmarksService InnerType;

  this(nsIBookmarksService intr){
    super(intr);
    this.inner = intr;
  }

  nsIBookmarksService opCast() {
    return inner;
  }

  void opAssign(nsIBookmarksService value) {
    inner = value;
  }

  enum { BOOKMARK_DEFAULT_TYPE = 0U }

  enum { BOOKMARK_SEARCH_TYPE = 1U }

  enum { BOOKMARK_FIND_TYPE = 2U }

  enum { SORT_DESCENDING = -1 }

  enum { SORT_ASCENDING = 1 }

  /* boolean readBookmarks (); */
  PRBool ReadBookmarks(){
    PRBool _retval;
    nsresult __result = inner.ReadBookmarks(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isBookmarked (in string aURL); */
  PRBool IsBookmarked(char*aURL){
    PRBool _retval;
    nsresult __result = inner.IsBookmarked(aURL, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isBookmarkedResource (in nsIRDFResource aSource); */
  PRBool IsBookmarkedResource(nsIRDFResourceD aSource){
    PRBool _retval;
    nsresult __result = inner.IsBookmarkedResource(aSource ? cast(nsIRDFResource)aSource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addBookmarkImmediately (in wstring aURI, in wstring aTitle, in long bmType, in wstring docCharset); */
  void AddBookmarkImmediately(PRUnichar*aURI, PRUnichar*aTitle, PRInt32 bmType, PRUnichar*docCharset){
    nsresult __result = inner.AddBookmarkImmediately(aURI, aTitle, bmType, docCharset);
    CheckException(__result);
  }

  /* nsIRDFResource createFolder (in wstring aName); */
  nsIRDFResourceD  CreateFolder(PRUnichar*aName){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateFolder(aName, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource createFolderInContainer (in wstring aName, in nsIRDFResource aParentFolder, in long aIndex); */
  nsIRDFResourceD  CreateFolderInContainer(PRUnichar*aName, nsIRDFResourceD aParentFolder, PRInt32 aIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateFolderInContainer(aName, aParentFolder ? cast(nsIRDFResource)aParentFolder : null, aIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource createGroup (in wstring aName); */
  nsIRDFResourceD  CreateGroup(PRUnichar*aName){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateGroup(aName, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource createGroupInContainer (in wstring aName, in nsIRDFResource aParentFolder, in long aIndex); */
  nsIRDFResourceD  CreateGroupInContainer(PRUnichar*aName, nsIRDFResourceD aParentFolder, PRInt32 aIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateGroupInContainer(aName, aParentFolder ? cast(nsIRDFResource)aParentFolder : null, aIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* void sortFolder (in nsIRDFResource aFolder, in nsIRDFResource aProperty, in long aDirection, in boolean aFoldersFirst, in boolean aRecurse); */
  void SortFolder(nsIRDFResourceD aFolder, nsIRDFResourceD aProperty, PRInt32 aDirection, PRBool aFoldersFirst, PRBool aRecurse){
    nsresult __result = inner.SortFolder(aFolder ? cast(nsIRDFResource)aFolder : null, aProperty ? cast(nsIRDFResource)aProperty : null, aDirection, aFoldersFirst, aRecurse);
    CheckException(__result);
  }

  /* nsIRDFResource createBookmark (in wstring aName, in wstring aURL, in wstring aShortcutURL, in wstring aDescription, in wstring aDocCharSet); */
  nsIRDFResourceD  CreateBookmark(PRUnichar*aName, PRUnichar*aURL, PRUnichar*aShortcutURL, PRUnichar*aDescription, PRUnichar*aDocCharSet){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateBookmark(aName, aURL, aShortcutURL, aDescription, aDocCharSet, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource createBookmarkInContainer (in wstring aName, in wstring aURL, in wstring aShortcutURL, in wstring aDescription, in wstring aDocCharSet, in nsIRDFResource aFolder, in long aIndex); */
  nsIRDFResourceD  CreateBookmarkInContainer(PRUnichar*aName, PRUnichar*aURL, PRUnichar*aShortcutURL, PRUnichar*aDescription, PRUnichar*aDocCharSet, nsIRDFResourceD aFolder, PRInt32 aIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateBookmarkInContainer(aName, aURL, aShortcutURL, aDescription, aDocCharSet, aFolder ? cast(nsIRDFResource)aFolder : null, aIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource createSeparator (); */
  nsIRDFResourceD  CreateSeparator(){
    nsIRDFResource _retval;
    nsresult __result = inner.CreateSeparator(&_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource cloneResource (in nsIRDFResource aSource); */
  nsIRDFResourceD  CloneResource(nsIRDFResourceD aSource){
    nsIRDFResource _retval;
    nsresult __result = inner.CloneResource(aSource ? cast(nsIRDFResource)aSource : null, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* void updateBookmarkIcon (in string aURL, in wstring aIconURL); */
  void UpdateBookmarkIcon(char*aURL, PRUnichar*aIconURL){
    nsresult __result = inner.UpdateBookmarkIcon(aURL, aIconURL);
    CheckException(__result);
  }

  /* void removeBookmarkIcon (in string aURL, in wstring aIconURL); */
  void RemoveBookmarkIcon(char*aURL, PRUnichar*aIconURL){
    nsresult __result = inner.RemoveBookmarkIcon(aURL, aIconURL);
    CheckException(__result);
  }

  /* void updateLastVisitedDate (in string aURL, in wstring docCharset); */
  void UpdateLastVisitedDate(char*aURL, PRUnichar*docCharset){
    nsresult __result = inner.UpdateLastVisitedDate(aURL, docCharset);
    CheckException(__result);
  }

  /* AString getLastCharset (in AUTF8String aURL); */
  wchar[] GetLastCharset(char[] aURL){
    scope auto _aURL = new ACString(aURL);
    scope auto _retval = new AString;
    nsresult __result = inner.GetLastCharset(cast(nsACString*)_aURL, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* string resolveKeyword (in wstring aName); */
  char* ResolveKeyword(PRUnichar*aName){
    char* _retval;
    nsresult __result = inner.ResolveKeyword(aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void importSystemBookmarks (in nsIRDFResource aParentFolder); */
  void ImportSystemBookmarks(nsIRDFResourceD aParentFolder){
    nsresult __result = inner.ImportSystemBookmarks(aParentFolder ? cast(nsIRDFResource)aParentFolder : null);
    CheckException(__result);
  }

  /* readonly attribute nsITransactionManager transactionManager; */
  nsITransactionManagerD  TransactionManager(){
    nsITransactionManager value;
    nsresult __result = inner.GetTransactionManager(&value);
    CheckException(__result);
    return new nsITransactionManagerD(value);
  }

private:
  nsIBookmarksService inner;

}

