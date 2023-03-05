/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCacheElement.idl
 */

module mozilla.dxpcom.nsIMsgFolderCacheElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFolderCacheElement;


public import mozilla.dxpcom.nsIMsgFolderCacheElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgFolderCacheElement */
class nsIMsgFolderCacheElementD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFOLDERCACHEELEMENT_IID;


  alias nsIMsgFolderCacheElement InnerType;

  this(nsIMsgFolderCacheElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFolderCacheElement opCast() {
    return inner;
  }

  void opAssign(nsIMsgFolderCacheElement value) {
    inner = value;
  }

  /* attribute string Key; */
  char* Key(){
    char* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(char* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /* string GetStringProperty (in string propertyName); */
  char* GetStringProperty(char*propertyName){
    char* _retval;
    nsresult __result = inner.GetStringProperty(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetInt32Property (in string propertyName); */
  PRInt32 GetInt32Property(char*propertyName){
    PRInt32 _retval;
    nsresult __result = inner.GetInt32Property(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetStringProperty (in string propertyName, in string propertyValue); */
  void SetStringProperty(char*propertyName, char*propertyValue){
    nsresult __result = inner.SetStringProperty(propertyName, propertyValue);
    CheckException(__result);
  }

  /* void SetInt32Property (in string propertyName, in long propertyValue); */
  void SetInt32Property(char*propertyName, PRInt32 propertyValue){
    nsresult __result = inner.SetInt32Property(propertyName, propertyValue);
    CheckException(__result);
  }

private:
  nsIMsgFolderCacheElement inner;

}

