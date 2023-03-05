/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebProgressListener2.idl
 */

module mozilla.dxpcom.nsIWebProgressListener2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebProgressListener2;


public import mozilla.dxpcom.nsIWebProgressListener2D;

public import mozilla.xpcom.nsIWebProgressListener;
public import mozilla.dxpcom.nsIWebProgressListenerD;


/* starting wrapper class:    nsIWebProgressListener2 */
/**
 * This interface is an extension to nsIWebProgressListener to support 64-bit
 * progress values.
 */
class nsIWebProgressListener2D : public nsIWebProgressListenerD {

  static const nsIID IID = NS_IWEBPROGRESSLISTENER2_IID;


  alias nsIWebProgressListener2 InnerType;

  this(nsIWebProgressListener2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebProgressListener2 opCast() {
    return inner;
  }

  void opAssign(nsIWebProgressListener2 value) {
    inner = value;
  }

  /**
   * Notification that the progress has changed for one of the requests
   * associated with aWebProgress.  Progress totals are reset to zero when all
   * requests in aWebProgress complete (corresponding to onStateChange being
   * called with aStateFlags including the STATE_STOP and STATE_IS_WINDOW
   * flags).
   *
   * This function is identical to nsIWebProgressListener::onProgressChange,
   * except that this function supports 64-bit values.
   *
   * @param aWebProgress
   *        The nsIWebProgress instance that fired the notification.
   * @param aRequest
   *        The nsIRequest that has new progress.
   * @param aCurSelfProgress
   *        The current progress for aRequest.
   * @param aMaxSelfProgress
   *        The maximum progress for aRequest.
   * @param aCurTotalProgress
   *        The current progress for all requests associated with aWebProgress.
   * @param aMaxTotalProgress
   *        The total progress for all requests associated with aWebProgress.
   *
   * NOTE: If any progress value is unknown, then its value is replaced with -1.
   *
   * @see nsIWebProgressListener2::onProgressChange64
   */
  /* void onProgressChange64 (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in long long aCurSelfProgress, in long long aMaxSelfProgress, in long long aCurTotalProgress, in long long aMaxTotalProgress); */
  void OnProgressChange64(nsIWebProgressD aWebProgress, nsIRequestD aRequest, PRInt64 aCurSelfProgress, PRInt64 aMaxSelfProgress, PRInt64 aCurTotalProgress, PRInt64 aMaxTotalProgress){
    nsresult __result = inner.OnProgressChange64(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress);
    CheckException(__result);
  }

private:
  nsIWebProgressListener2 inner;

}

