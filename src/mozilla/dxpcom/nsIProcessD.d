/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProcess.idl
 */

module mozilla.dxpcom.nsIProcessD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProcess;


public import mozilla.dxpcom.nsIProcessD;

public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProcess */
class nsIProcessD : public nsISupportsD {

  static const nsIID IID = NS_IPROCESS_IID;


  alias nsIProcess InnerType;

  this(nsIProcess intr){
    super(intr);
    this.inner = intr;
  }

  nsIProcess opCast() {
    return inner;
  }

  void opAssign(nsIProcess value) {
    inner = value;
  }

  /* void init (in nsIFile executable); */
  void Init(nsIFileD executable){
    nsresult __result = inner.Init(executable ? cast(nsIFile)executable : null);
    CheckException(__result);
  }

  /* void initWithPid (in unsigned long pid); */
  void InitWithPid(PRUint32 pid){
    nsresult __result = inner.InitWithPid(pid);
    CheckException(__result);
  }

  /* void kill (); */
  void Kill(){
    nsresult __result = inner.Kill();
    CheckException(__result);
  }

  /** XXX what charset? **/
/** Executes the file this object was initialized with
         * @param blocking Whether to wait until the process terminates before returning or not
         * @param args An array of arguments to pass to the process
         * @param count The length of the args array
         * @return the PID of the newly spawned process */
  /* unsigned long run (in boolean blocking, [array, size_is (count)] in string args, in unsigned long count); */
  PRUint32 Run(PRBool blocking, char**args, PRUint32 count){
    PRUint32 _retval;
    nsresult __result = inner.Run(blocking, args, count, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsIFile location; */
  nsIFileD  Location(){
    nsIFile value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /* readonly attribute unsigned long pid; */
  PRUint32 Pid(){
    PRUint32 value;
    nsresult __result = inner.GetPid(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string processName; */
  char* ProcessName(){
    char* value;
    nsresult __result = inner.GetProcessName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long processSignature; */
  PRUint32 ProcessSignature(){
    PRUint32 value;
    nsresult __result = inner.GetProcessSignature(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long exitValue; */
  PRInt32 ExitValue(){
    PRInt32 value;
    nsresult __result = inner.GetExitValue(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIProcess inner;

}

