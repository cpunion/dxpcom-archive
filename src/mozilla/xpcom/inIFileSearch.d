/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIFileSearch.idl
 */

module mozilla.xpcom.inIFileSearch;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.inISearchProcess;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */


/* starting interface:    inIFileSearch */
const char[] INIFILESEARCH_IID_STR = "efa53257-526d-4350-9088-343a510346b8";

const nsIID INIFILESEARCH_IID= 
  {0xefa53257, 0x526d, 0x4350, 
    [ 0x90, 0x88, 0x34, 0x3a, 0x51, 0x03, 0x46, 0xb8 ]};

extern(Windows)
interface inIFileSearch : inISearchProcess {
  static const char[] IID_STR = INIFILESEARCH_IID_STR;
  static const nsIID IID = INIFILESEARCH_IID;

  /* attribute wstring basePath; */
  nsresult GetBasePath(PRUnichar * *aBasePath);
  nsresult SetBasePath(PRUnichar * aBasePath);

  /* attribute boolean returnRelativePaths; */
  nsresult GetReturnRelativePaths(PRBool *aReturnRelativePaths);
  nsresult SetReturnRelativePaths(PRBool aReturnRelativePaths);

  /* unsigned long getDirectoryDepth (in nsIFile aDir); */
  nsresult GetDirectoryDepth(nsIFile aDir, PRUint32 *_retval);

  /* nsISupportsArray getSubDirectories (in nsIFile aDir); */
  nsresult GetSubDirectories(nsIFile aDir, nsISupportsArray *_retval);

  /* attribute wstring filenameCriteria; */
  nsresult GetFilenameCriteria(PRUnichar * *aFilenameCriteria);
  nsresult SetFilenameCriteria(PRUnichar * aFilenameCriteria);

  /* attribute wstring textCriteria; */
  nsresult GetTextCriteria(PRUnichar * *aTextCriteria);
  nsresult SetTextCriteria(PRUnichar * aTextCriteria);

  /* attribute nsIFile searchPath; */
  nsresult GetSearchPath(nsIFile  *aSearchPath);
  nsresult SetSearchPath(nsIFile  aSearchPath);

  /* attribute boolean searchRecursive; */
  nsresult GetSearchRecursive(PRBool *aSearchRecursive);
  nsresult SetSearchRecursive(PRBool aSearchRecursive);

  /* readonly attribute unsigned long directoriesSearched; */
  nsresult GetDirectoriesSearched(PRUint32 *aDirectoriesSearched);

  /* readonly attribute nsIFile currentDirectory; */
  nsresult GetCurrentDirectory(nsIFile  *aCurrentDirectory);

  /* nsIFile getFileResultAt (in long aIndex); */
  nsresult GetFileResultAt(PRInt32 aIndex, nsIFile *_retval);

}

