/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIFileSearch.idl
 */

module mozilla.dxpcom.inIFileSearchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inIFileSearch;


public import mozilla.dxpcom.inIFileSearchD;

public import mozilla.xpcom.inISearchProcess;
public import mozilla.dxpcom.inISearchProcessD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    inIFileSearch */
class inIFileSearchD : public inISearchProcessD {

  static const nsIID IID = INIFILESEARCH_IID;


  alias inIFileSearch InnerType;

  this(inIFileSearch intr){
    super(intr);
    this.inner = intr;
  }

  inIFileSearch opCast() {
    return inner;
  }

  void opAssign(inIFileSearch value) {
    inner = value;
  }

  /* attribute wstring basePath; */
  PRUnichar* BasePath(){
    PRUnichar* value;
    nsresult __result = inner.GetBasePath(&value);
    CheckException(__result);
    return value;
  }
  void BasePath(PRUnichar* aBasePath){
    nsresult __result = inner.SetBasePath(aBasePath);
    CheckException(__result);
  }

  /* attribute boolean returnRelativePaths; */
  PRBool ReturnRelativePaths(){
    PRBool value;
    nsresult __result = inner.GetReturnRelativePaths(&value);
    CheckException(__result);
    return value;
  }
  void ReturnRelativePaths(PRBool aReturnRelativePaths){
    nsresult __result = inner.SetReturnRelativePaths(aReturnRelativePaths);
    CheckException(__result);
  }

  /* unsigned long getDirectoryDepth (in nsIFile aDir); */
  PRUint32 GetDirectoryDepth(nsIFileD aDir){
    PRUint32 _retval;
    nsresult __result = inner.GetDirectoryDepth(aDir ? cast(nsIFile)aDir : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISupportsArray getSubDirectories (in nsIFile aDir); */
  nsISupportsArrayD  GetSubDirectories(nsIFileD aDir){
    nsISupportsArray _retval;
    nsresult __result = inner.GetSubDirectories(aDir ? cast(nsIFile)aDir : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* attribute wstring filenameCriteria; */
  PRUnichar* FilenameCriteria(){
    PRUnichar* value;
    nsresult __result = inner.GetFilenameCriteria(&value);
    CheckException(__result);
    return value;
  }
  void FilenameCriteria(PRUnichar* aFilenameCriteria){
    nsresult __result = inner.SetFilenameCriteria(aFilenameCriteria);
    CheckException(__result);
  }

  /* attribute wstring textCriteria; */
  PRUnichar* TextCriteria(){
    PRUnichar* value;
    nsresult __result = inner.GetTextCriteria(&value);
    CheckException(__result);
    return value;
  }
  void TextCriteria(PRUnichar* aTextCriteria){
    nsresult __result = inner.SetTextCriteria(aTextCriteria);
    CheckException(__result);
  }

  /* attribute nsIFile searchPath; */
  nsIFileD  SearchPath(){
    nsIFile value;
    nsresult __result = inner.GetSearchPath(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }
  void SearchPath(nsIFileD  aSearchPath){
    nsIFile value;
    nsresult __result = inner.SetSearchPath(value);
    CheckException(__result);
  }

  /* attribute boolean searchRecursive; */
  PRBool SearchRecursive(){
    PRBool value;
    nsresult __result = inner.GetSearchRecursive(&value);
    CheckException(__result);
    return value;
  }
  void SearchRecursive(PRBool aSearchRecursive){
    nsresult __result = inner.SetSearchRecursive(aSearchRecursive);
    CheckException(__result);
  }

  /* readonly attribute unsigned long directoriesSearched; */
  PRUint32 DirectoriesSearched(){
    PRUint32 value;
    nsresult __result = inner.GetDirectoriesSearched(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIFile currentDirectory; */
  nsIFileD  CurrentDirectory(){
    nsIFile value;
    nsresult __result = inner.GetCurrentDirectory(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /* nsIFile getFileResultAt (in long aIndex); */
  nsIFileD  GetFileResultAt(PRInt32 aIndex){
    nsIFile _retval;
    nsresult __result = inner.GetFileResultAt(aIndex, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

private:
  inIFileSearch inner;

}

