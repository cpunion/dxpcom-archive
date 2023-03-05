/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRelativeFilePref.idl
 */

module mozilla.dxpcom.nsIRelativeFilePrefD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRelativeFilePref;


public import mozilla.dxpcom.nsIRelativeFilePrefD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIRelativeFilePref */
/**
 * The nsIRelativeFilePref interface is a wrapper for an nsILocalFile and
 * and a directory service key. When used as a pref value, it stores a
 * relative path to the file from the location pointed to by the directory
 * service key. The path has the same syntax across all platforms.
 *
 * @see nsIPrefBranch::getComplexValue
 * @see nsIPrefBranch::setComplexValue
 * 
 */
class nsIRelativeFilePrefD : public nsISupportsD {

  static const nsIID IID = NS_IRELATIVEFILEPREF_IID;


  alias nsIRelativeFilePref InnerType;

  this(nsIRelativeFilePref intr){
    super(intr);
    this.inner = intr;
  }

  nsIRelativeFilePref opCast() {
    return inner;
  }

  void opAssign(nsIRelativeFilePref value) {
    inner = value;
  }

  /**
   * file
   *
   * The file whose location is stored or retrieved.
   */
  /* attribute nsILocalFile file; */
  nsILocalFileD  File(){
    nsILocalFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }
  void File(nsILocalFileD  aFile){
    nsILocalFile value;
    nsresult __result = inner.SetFile(value);
    CheckException(__result);
  }

  /**
   * relativeToKey
   *
   * A directory service key for the directory
   * from which the file path is relative.
   */
  /* attribute ACString relativeToKey; */
  char[] RelativeToKey(){
    scope auto value = new ACString();
    nsresult __result = inner.GetRelativeToKey(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void RelativeToKey(char[] aRelativeToKey){
    scope auto value = new ACString(aRelativeToKey);
    nsresult __result = inner.SetRelativeToKey(cast(nsACString*)value);
    CheckException(__result);
  }

private:
  nsIRelativeFilePref inner;

}

