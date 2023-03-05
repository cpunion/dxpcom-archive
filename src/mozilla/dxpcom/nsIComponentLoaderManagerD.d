/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentLoaderManager.idl
 */

module mozilla.dxpcom.nsIComponentLoaderManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComponentLoaderManager;


public import mozilla.dxpcom.nsIComponentLoaderManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIComponentLoaderManager */
class nsIComponentLoaderManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICOMPONENTLOADERMANAGER_IID;


  alias nsIComponentLoaderManager InnerType;

  this(nsIComponentLoaderManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIComponentLoaderManager opCast() {
    return inner;
  }

  void opAssign(nsIComponentLoaderManager value) {
    inner = value;
  }

  /* boolean hasFileChanged (in nsIFile file, in string loaderString, in PRInt64 modDate); */
  PRBool HasFileChanged(nsIFileD file, char*loaderString, PRInt64 modDate){
    PRBool _retval;
    nsresult __result = inner.HasFileChanged(file ? cast(nsIFile)file : null, loaderString, modDate, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void saveFileInfo (in nsIFile file, in string loaderString, in PRInt64 modDate); */
  void SaveFileInfo(nsIFileD file, char*loaderString, PRInt64 modDate){
    nsresult __result = inner.SaveFileInfo(file ? cast(nsIFile)file : null, loaderString, modDate);
    CheckException(__result);
  }

  /* void removeFileInfo (in nsIFile file, in string loaderString); */
  void RemoveFileInfo(nsIFileD file, char*loaderString){
    nsresult __result = inner.RemoveFileInfo(file ? cast(nsIFile)file : null, loaderString);
    CheckException(__result);
  }

  /* void flushPersistentStore (in boolean now); */
  void FlushPersistentStore(PRBool now){
    nsresult __result = inner.FlushPersistentStore(now);
    CheckException(__result);
  }

  /* string getOptionalData (in nsIFile file, in string loaderString); */
  char* GetOptionalData(nsIFileD file, char*loaderString){
    char* _retval;
    nsresult __result = inner.GetOptionalData(file ? cast(nsIFile)file : null, loaderString, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setOptionalData (in nsIFile file, in string loaderString, in string value); */
  void SetOptionalData(nsIFileD file, char*loaderString, char*value){
    nsresult __result = inner.SetOptionalData(file ? cast(nsIFile)file : null, loaderString, value);
    CheckException(__result);
  }

private:
  nsIComponentLoaderManager inner;

}

