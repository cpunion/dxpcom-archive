/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandLineRunner.idl
 */

module mozilla.dxpcom.nsICommandLineRunnerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICommandLineRunner;


public import mozilla.dxpcom.nsICommandLineRunnerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICommandLine;
public import mozilla.dxpcom.nsICommandLineD;


/* starting wrapper class:    nsICommandLineRunner */
/**
 * Extension of nsICommandLine that allows for initialization of new command lines
 * and running the command line actions by processing the command line handlers.
 *
 * @status INTERNAL - This interface is not meant for use by embedders, and is
 *                    not intended to be frozen. If you are an embedder and need
 *                    functionality provided by this interface, talk to Benjamin
 *                    Smedberg <benjamin@smedbergs.us>.
 */
class nsICommandLineRunnerD : public nsICommandLineD {

  static const nsIID IID = NS_ICOMMANDLINERUNNER_IID;


  alias nsICommandLineRunner InnerType;

  this(nsICommandLineRunner intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandLineRunner opCast() {
    return inner;
  }

  void opAssign(nsICommandLineRunner value) {
    inner = value;
  }

  /**
   * This method assumes a native character set, and is meant to be called
   * with the argc/argv passed to main(). Talk to bsmedberg if you need to
   * create a command line using other data. argv will not be altered in any
   * way.
   *
   * @param workingDir The working directory for resolving file and URI paths.
   * @param state      The nsICommandLine.state flag.
   */
  /* void init (in long argc, in nsCharPtrArray argv, in nsIFile workingDir, in unsigned long state); */
  void Init(PRInt32 argc, char* * argv, nsIFileD workingDir, PRUint32 state){
    nsresult __result = inner.Init(argc, argv, workingDir ? cast(nsIFile)workingDir : null, state);
    CheckException(__result);
  }

  /**
   * Set the windowContext parameter.
   */
  /* void setWindowContext (in nsIDOMWindow aWindow); */
  void SetWindowContext(nsIDOMWindowD aWindow){
    nsresult __result = inner.SetWindowContext(aWindow ? cast(nsIDOMWindow)aWindow : null);
    CheckException(__result);
  }

  /**
   * Process the command-line handlers in the proper order, calling "handle()" on
   * each.
   *
   * @throws NS_ERROR_ABORT if any handler throws NS_ERROR_ABORT. All other errors
   *         thrown by handlers will be silently ignored.
   */
  /* void run (); */
  void Run(){
    nsresult __result = inner.Run();
    CheckException(__result);
  }

  /**
   * Process and combine the help text provided by each command-line handler.
   */
  /* readonly attribute AUTF8String helpText; */
  char[] HelpText(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHelpText(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsICommandLineRunner inner;

}

