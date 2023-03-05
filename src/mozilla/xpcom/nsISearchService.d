/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISearchService.idl
 */

module mozilla.xpcom.nsISearchService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFDataSource;


/* starting interface:    nsILocalSearchService */
const char[] NS_ILOCALSEARCHSERVICE_IID_STR = "1222e6f0-a5e3-11d2-8b7c-00805f8a7db6";

const nsIID NS_ILOCALSEARCHSERVICE_IID= 
  {0x1222e6f0, 0xa5e3, 0x11d2, 
    [ 0x8b, 0x7c, 0x00, 0x80, 0x5f, 0x8a, 0x7d, 0xb6 ]};

extern(Windows)
interface nsILocalSearchService : nsISupports {
  static const char[] IID_STR = NS_ILOCALSEARCHSERVICE_IID_STR;
  static const nsIID IID = NS_ILOCALSEARCHSERVICE_IID;

}


/* starting interface:    nsIInternetSearchService */
const char[] NS_IINTERNETSEARCHSERVICE_IID_STR = "6bd1d803-1c67-11d3-9820-ed1b357eb3c4";

const nsIID NS_IINTERNETSEARCHSERVICE_IID= 
  {0x6bd1d803, 0x1c67, 0x11d3, 
    [ 0x98, 0x20, 0xed, 0x1b, 0x35, 0x7e, 0xb3, 0xc4 ]};

extern(Windows)
interface nsIInternetSearchService : nsISupports {
  static const char[] IID_STR = NS_IINTERNETSEARCHSERVICE_IID_STR;
  static const nsIID IID = NS_IINTERNETSEARCHSERVICE_IID;

  enum { kHaveNext = 1U };

  enum { kHavePrev = 2U };

  /* string GetInternetSearchURL (in string searchEngineURI, in wstring searchStr, in short direction, in unsigned short pageNumber, out unsigned short whichButtons); */
  nsresult GetInternetSearchURL(char *searchEngineURI, PRUnichar *searchStr, PRInt16 direction, PRUint16 pageNumber, PRUint16 *whichButtons, char **_retval);

  /* void RememberLastSearchText (in wstring escapedSearchStr); */
  nsresult RememberLastSearchText(PRUnichar *escapedSearchStr);

  /* boolean FindInternetSearchResults (in string url); */
  nsresult FindInternetSearchResults(char *url, PRBool *_retval);

  /* void Stop (); */
  nsresult Stop();

  /* void ClearResults (in boolean flushLastSearchRef); */
  nsresult ClearResults(PRBool flushLastSearchRef);

  /* void ClearResultSearchSites (); */
  nsresult ClearResultSearchSites();

  /* nsIRDFDataSource GetCategoryDataSource (); */
  nsresult GetCategoryDataSource(nsIRDFDataSource *_retval);

  /* void AddSearchEngine (in string engineURL, in string iconURL, in wstring suggestedTitle, in wstring suggestedCategory); */
  nsresult AddSearchEngine(char *engineURL, char *iconURL, PRUnichar *suggestedTitle, PRUnichar *suggestedCategory);

}


/* starting interface:    nsIInternetSearchContext */
const char[] NS_IINTERNETSEARCHCONTEXT_IID_STR = "7b171610-80ca-4d33-b16c-4186cd7b7e73";

const nsIID NS_IINTERNETSEARCHCONTEXT_IID= 
  {0x7b171610, 0x80ca, 0x4d33, 
    [ 0xb1, 0x6c, 0x41, 0x86, 0xcd, 0x7b, 0x7e, 0x73 ]};

extern(Windows)
interface nsIInternetSearchContext : nsISupports {
  static const char[] IID_STR = NS_IINTERNETSEARCHCONTEXT_IID_STR;
  static const nsIID IID = NS_IINTERNETSEARCHCONTEXT_IID;

  enum { WEB_SEARCH_CONTEXT = 1U };

  enum { ENGINE_DOWNLOAD_NEW_CONTEXT = 2U };

  enum { ICON_DOWNLOAD_NEW_CONTEXT = 3U };

  enum { ENGINE_UPDATE_HEAD_CONTEXT = 4U };

  enum { ENGINE_DOWNLOAD_UPDATE_CONTEXT = 5U };

  enum { ICON_DOWNLOAD_UPDATE_CONTEXT = 6U };

  /* readonly attribute unsigned long ContextType; */
  nsresult GetContextType(PRUint32 *aContextType);

  /* nsIUnicodeDecoder GetUnicodeDecoder (); */
  nsresult GetUnicodeDecoder(nsIUnicodeDecoder *_retval);

  /* nsIRDFResource GetParent (); */
  nsresult GetParent(nsIRDFResource *_retval);

  /* nsIRDFResource GetEngine (); */
  nsresult GetEngine(nsIRDFResource *_retval);

  /* void GetHintConst ([shared] out wstring buffer); */
  nsresult GetHintConst(PRUnichar **buffer);

  /* void AppendBytes (in string buffer, in long numBytes); */
  nsresult AppendBytes(char *buffer, PRInt32 numBytes);

  /* void AppendUnicodeBytes (in wstring buffer, in long numUniBytes); */
  nsresult AppendUnicodeBytes(PRUnichar *buffer, PRInt32 numUniBytes);

  /* long GetBufferLength (); */
  nsresult GetBufferLength(PRInt32 *_retval);

  /* void GetBufferConst ([shared] out wstring buffer); */
  nsresult GetBufferConst(PRUnichar **buffer);

  /* void Truncate (); */
  nsresult Truncate();

}

