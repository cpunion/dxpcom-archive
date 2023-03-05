/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMinimoDesktop.idl
 */

module mozilla.dxpcom.nsIMinimoDesktopD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMinimoDesktop;


public import mozilla.dxpcom.nsIMinimoDesktopD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIMinimoDesktop */
class nsIMinimoDesktopD : public nsISupportsD {

  static const nsIID IID = NS_IMINIMODESKTOP_IID;


  alias nsIMinimoDesktop InnerType;

  this(nsIMinimoDesktop intr){
    super(intr);
    this.inner = intr;
  }

  nsIMinimoDesktop opCast() {
    return inner;
  }

  void opAssign(nsIMinimoDesktop value) {
    inner = value;
  }

  /* readonly attribute boolean connected; */
  PRBool Connected(){
    PRBool value;
    nsresult __result = inner.GetConnected(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long availableMemory; */
  PRInt32 AvailableMemory(){
    PRInt32 value;
    nsresult __result = inner.GetAvailableMemory(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long batteryLifePercent; */
  PRInt32 BatteryLifePercent(){
    PRInt32 value;
    nsresult __result = inner.GetBatteryLifePercent(&value);
    CheckException(__result);
    return value;
  }

  /* wstring getMinimoInstallLocation (); */
  PRUnichar* GetMinimoInstallLocation(){
    PRUnichar* _retval;
    nsresult __result = inner.GetMinimoInstallLocation(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void remoteStartProcess (in wstring app, in wstring params); */
  void RemoteStartProcess(PRUnichar*app, PRUnichar*params){
    nsresult __result = inner.RemoteStartProcess(app, params);
    CheckException(__result);
  }

  /* void remoteCreateDirectory (in wstring dir); */
  void RemoteCreateDirectory(PRUnichar*dir){
    nsresult __result = inner.RemoteCreateDirectory(dir);
    CheckException(__result);
  }

  /* void remoteRemoveFile (in wstring source); */
  void RemoteRemoveFile(PRUnichar*source){
    nsresult __result = inner.RemoteRemoveFile(source);
    CheckException(__result);
  }

  /* void remoteCopyFile (in wstring source, in wstring dest); */
  void RemoteCopyFile(PRUnichar*source, PRUnichar*dest){
    nsresult __result = inner.RemoteCopyFile(source, dest);
    CheckException(__result);
  }

  /* void remoteMoveFile (in wstring source, in wstring dest); */
  void RemoteMoveFile(PRUnichar*source, PRUnichar*dest){
    nsresult __result = inner.RemoteMoveFile(source, dest);
    CheckException(__result);
  }

  /* void copyFileToDevice (in wstring locationOnDevice, in nsIFile localFile); */
  void CopyFileToDevice(PRUnichar*locationOnDevice, nsIFileD localFile){
    nsresult __result = inner.CopyFileToDevice(locationOnDevice, localFile ? cast(nsIFile)localFile : null);
    CheckException(__result);
  }

  /* void copyFileFromDevice (in wstring locationOnDevice, in nsIFile localFile); */
  void CopyFileFromDevice(PRUnichar*locationOnDevice, nsIFileD localFile){
    nsresult __result = inner.CopyFileFromDevice(locationOnDevice, localFile ? cast(nsIFile)localFile : null);
    CheckException(__result);
  }

private:
  nsIMinimoDesktop inner;

}

