/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISidebar.idl
 */

module mozilla.dxpcom.nsISidebarD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISidebar;


public import mozilla.dxpcom.nsISidebarD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISidebar */
class nsISidebarD : public nsISupportsD {

  static const nsIID IID = NS_ISIDEBAR_IID;


  alias nsISidebar InnerType;

  this(nsISidebar intr){
    super(intr);
    this.inner = intr;
  }

  nsISidebar opCast() {
    return inner;
  }

  void opAssign(nsISidebar value) {
    inner = value;
  }

  /* void addPanel (in wstring aTitle, in string aContentURL, in string aCustomizeURL); */
  void AddPanel(PRUnichar*aTitle, char*aContentURL, char*aCustomizeURL){
    nsresult __result = inner.AddPanel(aTitle, aContentURL, aCustomizeURL);
    CheckException(__result);
  }

  /* void addPersistentPanel (in wstring aTitle, in string aContentURL, in string aCustomizeURL); */
  void AddPersistentPanel(PRUnichar*aTitle, char*aContentURL, char*aCustomizeURL){
    nsresult __result = inner.AddPersistentPanel(aTitle, aContentURL, aCustomizeURL);
    CheckException(__result);
  }

  /* void addSearchEngine (in string engineURL, in string iconURL, in wstring suggestedTitle, in wstring suggestedCategory); */
  void AddSearchEngine(char*engineURL, char*iconURL, PRUnichar*suggestedTitle, PRUnichar*suggestedCategory){
    nsresult __result = inner.AddSearchEngine(engineURL, iconURL, suggestedTitle, suggestedCategory);
    CheckException(__result);
  }

private:
  nsISidebar inner;

}


/* starting wrapper class:    nsISidebar_MOZILLA_1_8_BRANCH */
class nsISidebar_MOZILLA_1_8_BRANCHD : public nsISidebarD {

  static const nsIID IID = NS_ISIDEBAR_MOZILLA_1_8_BRANCH_IID;


  alias nsISidebar_MOZILLA_1_8_BRANCH InnerType;

  this(nsISidebar_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsISidebar_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsISidebar_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* void addMicrosummaryGenerator (in string generatorURL); */
  void AddMicrosummaryGenerator(char*generatorURL){
    nsresult __result = inner.AddMicrosummaryGenerator(generatorURL);
    CheckException(__result);
  }

private:
  nsISidebar_MOZILLA_1_8_BRANCH inner;

}


/* starting wrapper class:    nsISidebarExternal */
class nsISidebarExternalD : public nsISupportsD {

  static const nsIID IID = NS_ISIDEBAREXTERNAL_IID;


  alias nsISidebarExternal InnerType;

  this(nsISidebarExternal intr){
    super(intr);
    this.inner = intr;
  }

  nsISidebarExternal opCast() {
    return inner;
  }

  void opAssign(nsISidebarExternal value) {
    inner = value;
  }

  /* void AddSearchProvider (in string aDescriptionURL); */
  void AddSearchProvider(char*aDescriptionURL){
    nsresult __result = inner.AddSearchProvider(aDescriptionURL);
    CheckException(__result);
  }

  /* unsigned long IsSearchProviderInstalled (in string aSearchURL); */
  PRUint32 IsSearchProviderInstalled(char*aSearchURL){
    PRUint32 _retval;
    nsresult __result = inner.IsSearchProviderInstalled(aSearchURL, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISidebarExternal inner;

}

