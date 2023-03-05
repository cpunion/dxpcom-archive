/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPArticleList.idl
 */

module mozilla.dxpcom.nsINNTPArticleListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINNTPArticleList;


public import mozilla.dxpcom.nsINNTPArticleListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgNewsFolder;

public import mozilla.dxpcom.nsIMsgNewsFolderD;


/* starting wrapper class:    nsINNTPArticleList */
class nsINNTPArticleListD : public nsISupportsD {

  static const nsIID IID = NS_INNTPARTICLELIST_IID;


  alias nsINNTPArticleList InnerType;

  this(nsINNTPArticleList intr){
    super(intr);
    this.inner = intr;
  }

  nsINNTPArticleList opCast() {
    return inner;
  }

  void opAssign(nsINNTPArticleList value) {
    inner = value;
  }

  /* void initialize (in nsIMsgNewsFolder newsFolder); */
  void Initialize(nsIMsgNewsFolderD newsFolder){
    nsresult __result = inner.Initialize(newsFolder ? cast(nsIMsgNewsFolder)newsFolder : null);
    CheckException(__result);
  }

  /* void addArticleKey (in long key); */
  void AddArticleKey(PRInt32 key){
    nsresult __result = inner.AddArticleKey(key);
    CheckException(__result);
  }

  /* void finishAddingArticleKeys (); */
  void FinishAddingArticleKeys(){
    nsresult __result = inner.FinishAddingArticleKeys();
    CheckException(__result);
  }

private:
  nsINNTPArticleList inner;

}

