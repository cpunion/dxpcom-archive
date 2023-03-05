/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMConfigManager.idl
 */

module mozilla.dxpcom.nsIJVMConfigManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJVMConfigManager;


public import mozilla.dxpcom.nsIJVMConfigManagerD;

public import mozilla.xpcom.nsIArray;
public import mozilla.dxpcom.nsIArrayD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIJVMConfig */
/**
 * This interface contains information for the Java installation.
 */
class nsIJVMConfigD : public nsISupportsD {

  static const nsIID IID = NS_IJVMCONFIG_IID;


  alias nsIJVMConfig InnerType;

  this(nsIJVMConfig intr){
    super(intr);
    this.inner = intr;
  }

  nsIJVMConfig opCast() {
    return inner;
  }

  void opAssign(nsIJVMConfig value) {
    inner = value;
  }

  /* readonly attribute AString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString OS; */
  wchar[] OS(){
    scope auto value = new AString();
    nsresult __result = inner.GetOS(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString arch; */
  wchar[] Arch(){
    scope auto value = new AString();
    nsresult __result = inner.GetArch(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIFile path; */
  nsIFileD  Path(){
    nsIFile value;
    nsresult __result = inner.GetPath(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /* readonly attribute nsIFile mozillaPluginPath; */
  nsIFileD  MozillaPluginPath(){
    nsIFile value;
    nsresult __result = inner.GetMozillaPluginPath(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /* readonly attribute AString description; */
  wchar[] Description(){
    scope auto value = new AString();
    nsresult __result = inner.GetDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIJVMConfig inner;

}


/* starting wrapper class:    nsIJVMConfigManager */
/**
 * This interface is a manager that can get information about Java
 * installations.
 */
class nsIJVMConfigManagerD : public nsISupportsD {

  static const nsIID IID = NS_IJVMCONFIGMANAGER_IID;


  alias nsIJVMConfigManager InnerType;

  this(nsIJVMConfigManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIJVMConfigManager opCast() {
    return inner;
  }

  void opAssign(nsIJVMConfigManager value) {
    inner = value;
  }

  /**
     * This function returns a list of existing Java installations.
     */
  /* nsIArray getJVMConfigList (); */
  nsIArrayD  GetJVMConfigList(){
    nsIArray _retval;
    nsresult __result = inner.GetJVMConfigList(&_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /**
     * This function tells the browser to use a specific Java installation.
     */
  /* void setCurrentJVMConfig (in nsIJVMConfig jvmConfig); */
  void SetCurrentJVMConfig(nsIJVMConfigD jvmConfig){
    nsresult __result = inner.SetCurrentJVMConfig(jvmConfig ? cast(nsIJVMConfig)jvmConfig : null);
    CheckException(__result);
  }

private:
  nsIJVMConfigManager inner;

}

