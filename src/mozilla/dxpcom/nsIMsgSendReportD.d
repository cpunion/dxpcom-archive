/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendReport.idl
 */

module mozilla.dxpcom.nsIMsgSendReportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSendReport;


public import mozilla.dxpcom.nsIMsgSendReportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPrompt;
public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIMsgProcessReport */
class nsIMsgProcessReportD : public nsISupportsD {

  static const nsIID IID = NS_IMSGPROCESSREPORT_IID;


  alias nsIMsgProcessReport InnerType;

  this(nsIMsgProcessReport intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgProcessReport opCast() {
    return inner;
  }

  void opAssign(nsIMsgProcessReport value) {
    inner = value;
  }

  /* attribute boolean proceeded; */
  PRBool Proceeded(){
    PRBool value;
    nsresult __result = inner.GetProceeded(&value);
    CheckException(__result);
    return value;
  }
  void Proceeded(PRBool aProceeded){
    nsresult __result = inner.SetProceeded(aProceeded);
    CheckException(__result);
  }

  /* attribute nsresult error; */
  nsresult Error(){
    nsresult value;
    nsresult __result = inner.GetError(&value);
    CheckException(__result);
    return value;
  }
  void Error(nsresult aError){
    nsresult value;
    nsresult __result = inner.SetError(value);
    CheckException(__result);
  }

  /* attribute wstring message; */
  PRUnichar* Message(){
    PRUnichar* value;
    nsresult __result = inner.GetMessage(&value);
    CheckException(__result);
    return value;
  }
  void Message(PRUnichar* aMessage){
    nsresult __result = inner.SetMessage(aMessage);
    CheckException(__result);
  }

  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

private:
  nsIMsgProcessReport inner;

}


/* starting wrapper class:    nsIMsgSendReport */
class nsIMsgSendReportD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSENDREPORT_IID;


  alias nsIMsgSendReport InnerType;

  this(nsIMsgSendReport intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSendReport opCast() {
    return inner;
  }

  void opAssign(nsIMsgSendReport value) {
    inner = value;
  }

  enum { process_Current = -1 }

  enum { process_BuildMessage = 0 }

  enum { process_NNTP = 1 }

  enum { process_SMTP = 2 }

  enum { process_Copy = 3 }

  enum { process_FCC = 4 }

  /* attribute long deliveryMode; */
  PRInt32 DeliveryMode(){
    PRInt32 value;
    nsresult __result = inner.GetDeliveryMode(&value);
    CheckException(__result);
    return value;
  }
  void DeliveryMode(PRInt32 aDeliveryMode){
    nsresult __result = inner.SetDeliveryMode(aDeliveryMode);
    CheckException(__result);
  }

  /* attribute long currentProcess; */
  PRInt32 CurrentProcess(){
    PRInt32 value;
    nsresult __result = inner.GetCurrentProcess(&value);
    CheckException(__result);
    return value;
  }
  void CurrentProcess(PRInt32 aCurrentProcess){
    nsresult __result = inner.SetCurrentProcess(aCurrentProcess);
    CheckException(__result);
  }

  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

  /* void setProceeded (in long process, in boolean proceeded); */
  void SetProceeded(PRInt32 process, PRBool proceeded){
    nsresult __result = inner.SetProceeded(process, proceeded);
    CheckException(__result);
  }

  /* void setError (in long process, in nsresult error, in boolean overwriteError); */
  void SetError(PRInt32 process, nsresult error, PRBool overwriteError){
    nsresult __result = inner.SetError(process, error, overwriteError);
    CheckException(__result);
  }

  /* void setMessage (in long process, in wstring message, in boolean overwriteMessage); */
  void SetMessage(PRInt32 process, PRUnichar*message, PRBool overwriteMessage){
    nsresult __result = inner.SetMessage(process, message, overwriteMessage);
    CheckException(__result);
  }

  /* nsIMsgProcessReport getProcessReport (in long process); */
  nsIMsgProcessReportD  GetProcessReport(PRInt32 process){
    nsIMsgProcessReport _retval;
    nsresult __result = inner.GetProcessReport(process, &_retval);
    CheckException(__result);
    return new nsIMsgProcessReportD(_retval);
  }

  /* nsresult displayReport (in nsIPrompt prompt, in boolean showErrorOnly, in boolean dontShowReportTwice); */
  nsresult DisplayReport(nsIPromptD prompt, PRBool showErrorOnly, PRBool dontShowReportTwice){
    nsresult _retval;
    nsresult __result = inner.DisplayReport(prompt ? cast(nsIPrompt)prompt : null, showErrorOnly, dontShowReportTwice, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgSendReport inner;

}

