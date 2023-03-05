/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProcess.idl
 */

module mozilla.xpcom.nsIProcess;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFile;
public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProcess */
const char[] NS_IPROCESS_IID_STR = "9da0b650-d07e-4617-a18a-250035572ac8";

const nsIID NS_IPROCESS_IID= 
  {0x9da0b650, 0xd07e, 0x4617, 
    [ 0xa1, 0x8a, 0x25, 0x00, 0x35, 0x57, 0x2a, 0xc8 ]};

extern(Windows)
interface nsIProcess : nsISupports {
  static const char[] IID_STR = NS_IPROCESS_IID_STR;
  static const nsIID IID = NS_IPROCESS_IID;

  /* void init (in nsIFile executable); */
  nsresult Init(nsIFile executable);

  /* void initWithPid (in unsigned long pid); */
  nsresult InitWithPid(PRUint32 pid);

  /* void kill (); */
  nsresult Kill();

  /** XXX what charset? **/
/** Executes the file this object was initialized with
         * @param blocking Whether to wait until the process terminates before returning or not
         * @param args An array of arguments to pass to the process
         * @param count The length of the args array
         * @return the PID of the newly spawned process */
  /* unsigned long run (in boolean blocking, [array, size_is (count)] in string args, in unsigned long count); */
  nsresult Run(PRBool blocking, char **args, PRUint32 count, PRUint32 *_retval);

  /* readonly attribute nsIFile location; */
  nsresult GetLocation(nsIFile  *aLocation);

  /* readonly attribute unsigned long pid; */
  nsresult GetPid(PRUint32 *aPid);

  /* readonly attribute string processName; */
  nsresult GetProcessName(char * *aProcessName);

  /* readonly attribute unsigned long processSignature; */
  nsresult GetProcessSignature(PRUint32 *aProcessSignature);

  /* readonly attribute long exitValue; */
  nsresult GetExitValue(PRInt32 *aExitValue);

}

