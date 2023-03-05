/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebProgressListener2.idl
 */

module mozilla.xpcom.nsIWebProgressListener2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIWebProgressListener;


/* starting interface:    nsIWebProgressListener2 */
const char[] NS_IWEBPROGRESSLISTENER2_IID_STR = "3f24610d-1e1f-4151-9d2e-239884742324";

const nsIID NS_IWEBPROGRESSLISTENER2_IID= 
  {0x3f24610d, 0x1e1f, 0x4151, 
    [ 0x9d, 0x2e, 0x23, 0x98, 0x84, 0x74, 0x23, 0x24 ]};

/**
 * This interface is an extension to nsIWebProgressListener to support 64-bit
 * progress values.
 */
extern(Windows)
interface nsIWebProgressListener2 : nsIWebProgressListener {
  static const char[] IID_STR = NS_IWEBPROGRESSLISTENER2_IID_STR;
  static const nsIID IID = NS_IWEBPROGRESSLISTENER2_IID;

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
  nsresult OnProgressChange64(nsIWebProgress aWebProgress, nsIRequest aRequest, PRInt64 aCurSelfProgress, PRInt64 aMaxSelfProgress, PRInt64 aCurTotalProgress, PRInt64 aMaxTotalProgress);

}

