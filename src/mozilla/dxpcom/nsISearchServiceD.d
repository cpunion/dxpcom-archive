/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISearchService.idl
 */

module mozilla.dxpcom.nsISearchServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISearchService;


public import mozilla.dxpcom.nsISearchServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;


/* starting wrapper class:    nsILocalSearchService */
class nsILocalSearchServiceD : public nsISupportsD {

  static const nsIID IID = NS_ILOCALSEARCHSERVICE_IID;


  alias nsILocalSearchService InnerType;

  this(nsILocalSearchService intr){
    super(intr);
    this.inner = intr;
  }

  nsILocalSearchService opCast() {
    return inner;
  }

  void opAssign(nsILocalSearchService value) {
    inner = value;
  }

private:
  nsILocalSearchService inner;

}


/* starting wrapper class:    nsIInternetSearchService */
class nsIInternetSearchServiceD : public nsISupportsD {

  static const nsIID IID = NS_IINTERNETSEARCHSERVICE_IID;


  alias nsIInternetSearchService InnerType;

  this(nsIInternetSearchService intr){
    super(intr);
    this.inner = intr;
  }

  nsIInternetSearchService opCast() {
    return inner;
  }

  void opAssign(nsIInternetSearchService value) {
    inner = value;
  }

  enum { kHaveNext = 1U }

  enum { kHavePrev = 2U }

  /* string GetInternetSearchURL (in string searchEngineURI, in wstring searchStr, in short direction, in unsigned short pageNumber, out unsigned short whichButtons); */
  char* GetInternetSearchURL(char*searchEngineURI, PRUnichar*searchStr, PRInt16 direction, PRUint16 pageNumber, out PRUint16 whichButtons){
    char* _retval;
    nsresult __result = inner.GetInternetSearchURL(searchEngineURI, searchStr, direction, pageNumber, &whichButtons, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void RememberLastSearchText (in wstring escapedSearchStr); */
  void RememberLastSearchText(PRUnichar*escapedSearchStr){
    nsresult __result = inner.RememberLastSearchText(escapedSearchStr);
    CheckException(__result);
  }

  /* boolean FindInternetSearchResults (in string url); */
  PRBool FindInternetSearchResults(char*url){
    PRBool _retval;
    nsresult __result = inner.FindInternetSearchResults(url, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Stop (); */
  void Stop(){
    nsresult __result = inner.Stop();
    CheckException(__result);
  }

  /* void ClearResults (in boolean flushLastSearchRef); */
  void ClearResults(PRBool flushLastSearchRef){
    nsresult __result = inner.ClearResults(flushLastSearchRef);
    CheckException(__result);
  }

  /* void ClearResultSearchSites (); */
  void ClearResultSearchSites(){
    nsresult __result = inner.ClearResultSearchSites();
    CheckException(__result);
  }

  /* nsIRDFDataSource GetCategoryDataSource (); */
  nsIRDFDataSourceD  GetCategoryDataSource(){
    nsIRDFDataSource _retval;
    nsresult __result = inner.GetCategoryDataSource(&_retval);
    CheckException(__result);
    return new nsIRDFDataSourceD(_retval);
  }

  /* void AddSearchEngine (in string engineURL, in string iconURL, in wstring suggestedTitle, in wstring suggestedCategory); */
  void AddSearchEngine(char*engineURL, char*iconURL, PRUnichar*suggestedTitle, PRUnichar*suggestedCategory){
    nsresult __result = inner.AddSearchEngine(engineURL, iconURL, suggestedTitle, suggestedCategory);
    CheckException(__result);
  }

private:
  nsIInternetSearchService inner;

}


/* starting wrapper class:    nsIInternetSearchContext */
class nsIInternetSearchContextD : public nsISupportsD {

  static const nsIID IID = NS_IINTERNETSEARCHCONTEXT_IID;


  alias nsIInternetSearchContext InnerType;

  this(nsIInternetSearchContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIInternetSearchContext opCast() {
    return inner;
  }

  void opAssign(nsIInternetSearchContext value) {
    inner = value;
  }

  enum { WEB_SEARCH_CONTEXT = 1U }

  enum { ENGINE_DOWNLOAD_NEW_CONTEXT = 2U }

  enum { ICON_DOWNLOAD_NEW_CONTEXT = 3U }

  enum { ENGINE_UPDATE_HEAD_CONTEXT = 4U }

  enum { ENGINE_DOWNLOAD_UPDATE_CONTEXT = 5U }

  enum { ICON_DOWNLOAD_UPDATE_CONTEXT = 6U }

  /* readonly attribute unsigned long ContextType; */
  PRUint32 ContextType(){
    PRUint32 value;
    nsresult __result = inner.GetContextType(&value);
    CheckException(__result);
    return value;
  }

  /* nsIUnicodeDecoder GetUnicodeDecoder (); */
  nsIUnicodeDecoderD  GetUnicodeDecoder(){
    nsIUnicodeDecoder _retval;
    nsresult __result = inner.GetUnicodeDecoder(&_retval);
    CheckException(__result);
    return new nsIUnicodeDecoderD(_retval);
  }

  /* nsIRDFResource GetParent (); */
  nsIRDFResourceD  GetParent(){
    nsIRDFResource _retval;
    nsresult __result = inner.GetParent(&_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource GetEngine (); */
  nsIRDFResourceD  GetEngine(){
    nsIRDFResource _retval;
    nsresult __result = inner.GetEngine(&_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* void GetHintConst ([shared] out wstring buffer); */
  void GetHintConst(out PRUnichar*buffer){
    nsresult __result = inner.GetHintConst(&buffer);
    CheckException(__result);
  }

  /* void AppendBytes (in string buffer, in long numBytes); */
  void AppendBytes(char*buffer, PRInt32 numBytes){
    nsresult __result = inner.AppendBytes(buffer, numBytes);
    CheckException(__result);
  }

  /* void AppendUnicodeBytes (in wstring buffer, in long numUniBytes); */
  void AppendUnicodeBytes(PRUnichar*buffer, PRInt32 numUniBytes){
    nsresult __result = inner.AppendUnicodeBytes(buffer, numUniBytes);
    CheckException(__result);
  }

  /* long GetBufferLength (); */
  PRInt32 GetBufferLength(){
    PRInt32 _retval;
    nsresult __result = inner.GetBufferLength(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void GetBufferConst ([shared] out wstring buffer); */
  void GetBufferConst(out PRUnichar*buffer){
    nsresult __result = inner.GetBufferConst(&buffer);
    CheckException(__result);
  }

  /* void Truncate (); */
  void Truncate(){
    nsresult __result = inner.Truncate();
    CheckException(__result);
  }

private:
  nsIInternetSearchContext inner;

}

