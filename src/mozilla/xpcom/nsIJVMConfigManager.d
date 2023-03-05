/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMConfigManager.idl
 */

module mozilla.xpcom.nsIJVMConfigManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIArray;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsIJVMConfig */
const char[] NS_IJVMCONFIG_IID_STR = "3e333e20-b190-42d8-b993-d5fa435e46c4";

const nsIID NS_IJVMCONFIG_IID= 
  {0x3e333e20, 0xb190, 0x42d8, 
    [ 0xb9, 0x93, 0xd5, 0xfa, 0x43, 0x5e, 0x46, 0xc4 ]};

/**
 * This interface contains information for the Java installation.
 */
extern(Windows)
interface nsIJVMConfig : nsISupports {
  static const char[] IID_STR = NS_IJVMCONFIG_IID_STR;
  static const nsIID IID = NS_IJVMCONFIG_IID;

  /* readonly attribute AString version; */
  nsresult GetVersion(nsAString * aVersion);

  /* readonly attribute AString type; */
  nsresult GetType(nsAString * aType);

  /* readonly attribute AString OS; */
  nsresult GetOS(nsAString * aOS);

  /* readonly attribute AString arch; */
  nsresult GetArch(nsAString * aArch);

  /* readonly attribute nsIFile path; */
  nsresult GetPath(nsIFile  *aPath);

  /* readonly attribute nsIFile mozillaPluginPath; */
  nsresult GetMozillaPluginPath(nsIFile  *aMozillaPluginPath);

  /* readonly attribute AString description; */
  nsresult GetDescription(nsAString * aDescription);

}


/* starting interface:    nsIJVMConfigManager */
const char[] NS_IJVMCONFIGMANAGER_IID_STR = "ca29fff1-a677-493c-9d80-3dc60432212b";

const nsIID NS_IJVMCONFIGMANAGER_IID= 
  {0xca29fff1, 0xa677, 0x493c, 
    [ 0x9d, 0x80, 0x3d, 0xc6, 0x04, 0x32, 0x21, 0x2b ]};

/**
 * This interface is a manager that can get information about Java
 * installations.
 */
extern(Windows)
interface nsIJVMConfigManager : nsISupports {
  static const char[] IID_STR = NS_IJVMCONFIGMANAGER_IID_STR;
  static const nsIID IID = NS_IJVMCONFIGMANAGER_IID;

  /**
     * This function returns a list of existing Java installations.
     */
  /* nsIArray getJVMConfigList (); */
  nsresult GetJVMConfigList(nsIArray *_retval);

  /**
     * This function tells the browser to use a specific Java installation.
     */
  /* void setCurrentJVMConfig (in nsIJVMConfig jvmConfig); */
  nsresult SetCurrentJVMConfig(nsIJVMConfig jvmConfig);

}

