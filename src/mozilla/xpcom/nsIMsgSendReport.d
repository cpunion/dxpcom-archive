/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendReport.idl
 */

module mozilla.xpcom.nsIMsgSendReport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrompt;


/* starting interface:    nsIMsgProcessReport */
const char[] NS_IMSGPROCESSREPORT_IID_STR = "2247c280-7f7f-11d5-9daa-994d49414e7c";

const nsIID NS_IMSGPROCESSREPORT_IID= 
  {0x2247c280, 0x7f7f, 0x11d5, 
    [ 0x9d, 0xaa, 0x99, 0x4d, 0x49, 0x41, 0x4e, 0x7c ]};

extern(Windows)
interface nsIMsgProcessReport : nsISupports {
  static const char[] IID_STR = NS_IMSGPROCESSREPORT_IID_STR;
  static const nsIID IID = NS_IMSGPROCESSREPORT_IID;

  /* attribute boolean proceeded; */
  nsresult GetProceeded(PRBool *aProceeded);
  nsresult SetProceeded(PRBool aProceeded);

  /* attribute nsresult error; */
  nsresult GetError(nsresult *aError);
  nsresult SetError(nsresult aError);

  /* attribute wstring message; */
  nsresult GetMessage(PRUnichar * *aMessage);
  nsresult SetMessage(PRUnichar * aMessage);

  /* void reset (); */
  nsresult Reset();

}


/* starting interface:    nsIMsgSendReport */
const char[] NS_IMSGSENDREPORT_IID_STR = "2247c281-7f7f-11d5-9daa-994d49414e7c";

const nsIID NS_IMSGSENDREPORT_IID= 
  {0x2247c281, 0x7f7f, 0x11d5, 
    [ 0x9d, 0xaa, 0x99, 0x4d, 0x49, 0x41, 0x4e, 0x7c ]};

extern(Windows)
interface nsIMsgSendReport : nsISupports {
  static const char[] IID_STR = NS_IMSGSENDREPORT_IID_STR;
  static const nsIID IID = NS_IMSGSENDREPORT_IID;

  enum { process_Current = -1 };

  enum { process_BuildMessage = 0 };

  enum { process_NNTP = 1 };

  enum { process_SMTP = 2 };

  enum { process_Copy = 3 };

  enum { process_FCC = 4 };

  /* attribute long deliveryMode; */
  nsresult GetDeliveryMode(PRInt32 *aDeliveryMode);
  nsresult SetDeliveryMode(PRInt32 aDeliveryMode);

  /* attribute long currentProcess; */
  nsresult GetCurrentProcess(PRInt32 *aCurrentProcess);
  nsresult SetCurrentProcess(PRInt32 aCurrentProcess);

  /* void reset (); */
  nsresult Reset();

  /* void setProceeded (in long process, in boolean proceeded); */
  nsresult SetProceeded(PRInt32 process, PRBool proceeded);

  /* void setError (in long process, in nsresult error, in boolean overwriteError); */
  nsresult SetError(PRInt32 process, nsresult error, PRBool overwriteError);

  /* void setMessage (in long process, in wstring message, in boolean overwriteMessage); */
  nsresult SetMessage(PRInt32 process, PRUnichar *message, PRBool overwriteMessage);

  /* nsIMsgProcessReport getProcessReport (in long process); */
  nsresult GetProcessReport(PRInt32 process, nsIMsgProcessReport *_retval);

  /* nsresult displayReport (in nsIPrompt prompt, in boolean showErrorOnly, in boolean dontShowReportTwice); */
  nsresult DisplayReport(nsIPrompt prompt, PRBool showErrorOnly, PRBool dontShowReportTwice, nsresult *_retval);

}

