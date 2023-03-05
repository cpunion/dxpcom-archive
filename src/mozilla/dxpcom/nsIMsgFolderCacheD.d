/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCache.idl
 */

module mozilla.dxpcom.nsIMsgFolderCacheD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFolderCache;


public import mozilla.dxpcom.nsIMsgFolderCacheD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgFolderCacheElement;

public import mozilla.dxpcom.nsIMsgFolderCacheElementD;


/* starting wrapper class:    nsIMsgFolderCache */
class nsIMsgFolderCacheD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFOLDERCACHE_IID;


  alias nsIMsgFolderCache InnerType;

  this(nsIMsgFolderCache intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFolderCache opCast() {
    return inner;
  }

  void opAssign(nsIMsgFolderCache value) {
    inner = value;
  }

  /* void Init (in nsIFileSpec fileSpec); */
  void Init(nsIFileSpecD fileSpec){
    nsresult __result = inner.Init(fileSpec ? cast(nsIFileSpec)fileSpec : null);
    CheckException(__result);
  }

  /* nsIMsgFolderCacheElement GetCacheElement (in string key, in boolean createIfMissing); */
  nsIMsgFolderCacheElementD  GetCacheElement(char*key, PRBool createIfMissing){
    nsIMsgFolderCacheElement _retval;
    nsresult __result = inner.GetCacheElement(key, createIfMissing, &_retval);
    CheckException(__result);
    return new nsIMsgFolderCacheElementD(_retval);
  }

  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /* void commit (in boolean compress); */
  void Commit(PRBool compress){
    nsresult __result = inner.Commit(compress);
    CheckException(__result);
  }

  /* void removeElement (in string key); */
  void RemoveElement(char*key){
    nsresult __result = inner.RemoveElement(key);
    CheckException(__result);
  }

private:
  nsIMsgFolderCache inner;

}

