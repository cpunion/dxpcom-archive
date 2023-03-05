/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObserver.idl
 */

module mozilla.xpcom.nsIObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIObserver */
const char[] NS_IOBSERVER_IID_STR = "db242e01-e4d9-11d2-9dde-000064657374";

const nsIID NS_IOBSERVER_IID= 
  {0xdb242e01, 0xe4d9, 0x11d2, 
    [ 0x9d, 0xde, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface is implemented by an object that wants
 * to observe an event corresponding to a topic.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIObserver : nsISupports {
  static const char[] IID_STR = NS_IOBSERVER_IID_STR;
  static const nsIID IID = NS_IOBSERVER_IID;

  /**
    * Observe will be called when there is a notification for the
    * topic |aTopic|.  This assumes that the object implementing
    * this interface has been registered with an observer service
    * such as the nsIObserverService. 
    *
    * If you expect multiple topics/subjects, the impl is 
    * responsible for filtering.
    *
    * You should not modify, add, remove, or enumerate 
    * notifications in the implemention of observe. 
    *
    * @param aSubject : Notification specific interface pointer.
    * @param aTopic   : The notification topic or subject.
    * @param aData    : Notification specific wide string.
    *                    subject event.
    */
  /* void observe (in nsISupports aSubject, in string aTopic, in wstring aData); */
  nsresult Observe(nsISupports aSubject, char *aTopic, PRUnichar *aData);

}

