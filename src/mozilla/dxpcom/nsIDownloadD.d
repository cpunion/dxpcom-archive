/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownload.idl
 */

module mozilla.dxpcom.nsIDownloadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDownload;


public import mozilla.dxpcom.nsIDownloadD;

public import mozilla.xpcom.nsITransfer;
public import mozilla.dxpcom.nsITransferD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;

public import mozilla.xpcom.nsIMIMEInfo;

public import mozilla.dxpcom.nsIMIMEInfoD;


/* starting wrapper class:    nsIDownload */
class nsIDownloadD : public nsITransferD {

  static const nsIID IID = NS_IDOWNLOAD_IID;


  alias nsIDownload InnerType;

  this(nsIDownload intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownload opCast() {
    return inner;
  }

  void opAssign(nsIDownload value) {
    inner = value;
  }

  /**
     * The target of a download is always a file on the local file system.
     */
  /* readonly attribute nsILocalFile targetFile; */
  nsILocalFileD  TargetFile(){
    nsILocalFile value;
    nsresult __result = inner.GetTargetFile(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
     * The percentage of transfer completed.
     * If the file size is unknown it'll be -1 here.
     */
  /* readonly attribute PRInt32 percentComplete; */
  PRInt32 PercentComplete(){
    PRInt32 value;
    nsresult __result = inner.GetPercentComplete(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The amount of kbytes downloaded so far.
     */
  /* readonly attribute PRUint64 amountTransferred; */
  PRUint64 AmountTransferred(){
    PRUint64 value;
    nsresult __result = inner.GetAmountTransferred(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The size of file in kbytes.
     * Unknown size is represented by 0.
     */
  /* readonly attribute PRUint64 size; */
  PRUint64 Size(){
    PRUint64 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The source of the transfer.
     */
  /* readonly attribute nsIURI source; */
  nsIURID  Source(){
    nsIURI value;
    nsresult __result = inner.GetSource(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
     * The target of the transfer.
     */
  /* readonly attribute nsIURI target; */
  nsIURID  Target(){
    nsIURI value;
    nsresult __result = inner.GetTarget(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
     * Object that can be used to cancel the download.
     * Will be null after the download is finished.
     */
  /* readonly attribute nsICancelable cancelable; */
  nsICancelableD  Cancelable(){
    nsICancelable value;
    nsresult __result = inner.GetCancelable(&value);
    CheckException(__result);
    return new nsICancelableD(value);
  }

  /**
     * The user-readable description of the transfer.
     */
  /* readonly attribute wstring displayName; */
  PRUnichar* DisplayName(){
    PRUnichar* value;
    nsresult __result = inner.GetDisplayName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The time a transfer was started.
     */
  /* readonly attribute long long startTime; */
  PRInt64 StartTime(){
    PRInt64 value;
    nsresult __result = inner.GetStartTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Optional. If set, it will contain the target's relevant MIME information.
     * This includes it's MIME Type, helper app, and whether that helper should be
     * executed.
     */
  /* readonly attribute nsIMIMEInfo MIMEInfo; */
  nsIMIMEInfoD  MIMEInfo(){
    nsIMIMEInfo value;
    nsresult __result = inner.GetMIMEInfo(&value);
    CheckException(__result);
    return new nsIMIMEInfoD(value);
  }

private:
  nsIDownload inner;

}


/* starting wrapper class:    nsIDownload_MOZILLA_1_8_BRANCH */
class nsIDownload_MOZILLA_1_8_BRANCHD : public nsIDownloadD {

  static const nsIID IID = NS_IDOWNLOAD_MOZILLA_1_8_BRANCH_IID;


  alias nsIDownload_MOZILLA_1_8_BRANCH InnerType;

  this(nsIDownload_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownload_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIDownload_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
     * The speed of the transfer in bytes/sec.
     */
  /* readonly attribute double speed; */
  double Speed(){
    double value;
    nsresult __result = inner.GetSpeed(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDownload_MOZILLA_1_8_BRANCH inner;

}

