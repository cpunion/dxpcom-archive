/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandLineRunner.idl
 */

module mozilla.xpcom.nsICommandLineRunner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICommandLine;


/* starting interface:    nsICommandLineRunner */
const char[] NS_ICOMMANDLINERUNNER_IID_STR = "c1f4cfbf-a41f-4628-aa6c-9fb914478af8";

const nsIID NS_ICOMMANDLINERUNNER_IID= 
  {0xc1f4cfbf, 0xa41f, 0x4628, 
    [ 0xaa, 0x6c, 0x9f, 0xb9, 0x14, 0x47, 0x8a, 0xf8 ]};

/**
 * Extension of nsICommandLine that allows for initialization of new command lines
 * and running the command line actions by processing the command line handlers.
 *
 * @status INTERNAL - This interface is not meant for use by embedders, and is
 *                    not intended to be frozen. If you are an embedder and need
 *                    functionality provided by this interface, talk to Benjamin
 *                    Smedberg <benjamin@smedbergs.us>.
 */
extern(Windows)
interface nsICommandLineRunner : nsICommandLine {
  static const char[] IID_STR = NS_ICOMMANDLINERUNNER_IID_STR;
  static const nsIID IID = NS_ICOMMANDLINERUNNER_IID;

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
  nsresult Init(PRInt32 argc, char* * argv, nsIFile workingDir, PRUint32 state);

  /**
   * Set the windowContext parameter.
   */
  /* void setWindowContext (in nsIDOMWindow aWindow); */
  nsresult SetWindowContext(nsIDOMWindow aWindow);

  /**
   * Process the command-line handlers in the proper order, calling "handle()" on
   * each.
   *
   * @throws NS_ERROR_ABORT if any handler throws NS_ERROR_ABORT. All other errors
   *         thrown by handlers will be silently ignored.
   */
  /* void run (); */
  nsresult Run();

  /**
   * Process and combine the help text provided by each command-line handler.
   */
  /* readonly attribute AUTF8String helpText; */
  nsresult GetHelpText(nsACString * aHelpText);

}

