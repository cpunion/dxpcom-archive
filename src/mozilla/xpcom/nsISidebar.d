/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISidebar.idl
 */

module mozilla.xpcom.nsISidebar;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISidebar */
const char[] NS_ISIDEBAR_IID_STR = "577cb745-8caf-11d3-aaef-00805f8a4905";

const nsIID NS_ISIDEBAR_IID= 
  {0x577cb745, 0x8caf, 0x11d3, 
    [ 0xaa, 0xef, 0x00, 0x80, 0x5f, 0x8a, 0x49, 0x05 ]};

extern(Windows)
interface nsISidebar : nsISupports {
  static const char[] IID_STR = NS_ISIDEBAR_IID_STR;
  static const nsIID IID = NS_ISIDEBAR_IID;

  /* void addPanel (in wstring aTitle, in string aContentURL, in string aCustomizeURL); */
  nsresult AddPanel(PRUnichar *aTitle, char *aContentURL, char *aCustomizeURL);

  /* void addPersistentPanel (in wstring aTitle, in string aContentURL, in string aCustomizeURL); */
  nsresult AddPersistentPanel(PRUnichar *aTitle, char *aContentURL, char *aCustomizeURL);

  /* void addSearchEngine (in string engineURL, in string iconURL, in wstring suggestedTitle, in wstring suggestedCategory); */
  nsresult AddSearchEngine(char *engineURL, char *iconURL, PRUnichar *suggestedTitle, PRUnichar *suggestedCategory);

}


/* starting interface:    nsISidebar_MOZILLA_1_8_BRANCH */
const char[] NS_ISIDEBAR_MOZILLA_1_8_BRANCH_IID_STR = "2efb7dc9-e7b3-44b7-8557-60b1485cfd6e";

const nsIID NS_ISIDEBAR_MOZILLA_1_8_BRANCH_IID= 
  {0x2efb7dc9, 0xe7b3, 0x44b7, 
    [ 0x85, 0x57, 0x60, 0xb1, 0x48, 0x5c, 0xfd, 0x6e ]};

extern(Windows)
interface nsISidebar_MOZILLA_1_8_BRANCH : nsISidebar {
  static const char[] IID_STR = NS_ISIDEBAR_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ISIDEBAR_MOZILLA_1_8_BRANCH_IID;

  /* void addMicrosummaryGenerator (in string generatorURL); */
  nsresult AddMicrosummaryGenerator(char *generatorURL);

}


/* starting interface:    nsISidebarExternal */
const char[] NS_ISIDEBAREXTERNAL_IID_STR = "4350fb73-9305-41df-a669-11d26222d420";

const nsIID NS_ISIDEBAREXTERNAL_IID= 
  {0x4350fb73, 0x9305, 0x41df, 
    [ 0xa6, 0x69, 0x11, 0xd2, 0x62, 0x22, 0xd4, 0x20 ]};

extern(Windows)
interface nsISidebarExternal : nsISupports {
  static const char[] IID_STR = NS_ISIDEBAREXTERNAL_IID_STR;
  static const nsIID IID = NS_ISIDEBAREXTERNAL_IID;

  /* void AddSearchProvider (in string aDescriptionURL); */
  nsresult AddSearchProvider(char *aDescriptionURL);

  /* unsigned long IsSearchProviderInstalled (in string aSearchURL); */
  nsresult IsSearchProviderInstalled(char *aSearchURL, PRUint32 *_retval);

}

