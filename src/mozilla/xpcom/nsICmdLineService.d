/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICmdLineService.idl
 */

module mozilla.xpcom.nsICmdLineService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFactory;
public import mozilla.xpcom.nsICmdLineHandler;


/* starting interface:    nsICmdLineService */
const char[] NS_ICMDLINESERVICE_IID_STR = "e34783f4-ac08-11d2-8d19-00805fc2500c";

const nsIID NS_ICMDLINESERVICE_IID= 
  {0xe34783f4, 0xac08, 0x11d2, 
    [ 0x8d, 0x19, 0x00, 0x80, 0x5f, 0xc2, 0x50, 0x0c ]};

extern(Windows)
interface nsICmdLineService : nsISupports {
  static const char[] IID_STR = NS_ICMDLINESERVICE_IID_STR;
  static const nsIID IID = NS_ICMDLINESERVICE_IID;

  /**
     * initialize
     * Used to pass the original argv/argc from main()
     * Warning: This will hold a reference to the original argv
     * passed into Initialze();
     */
  /* [noscript] void initialize (in long argc, out string argv); */
  nsresult Initialize(PRInt32 argc, char **argv);

  /**
     * getCmdLineValue
     * returns the 2nd parameter, if any, to the parameter passed in
     * For example, getCmdLineValue "-edit" will return any url that
     * came after the -edit parameter
     */
  /* string getCmdLineValue (in string argv); */
  nsresult GetCmdLineValue(char *argv, char **_retval);

  /**
     * URLToLoad
     * The URL to load as passed to the command line
     */
  /* readonly attribute string URLToLoad; */
  nsresult GetURLToLoad(char * *aURLToLoad);

  /**
     * programName
     *
     */
  /* readonly attribute string programName; */
  nsresult GetProgramName(char * *aProgramName);

  /**
     * argc
     * The number of parameters passed in on the command line
     */
  /* readonly attribute long argc; */
  nsresult GetArgc(PRInt32 *aArgc);

  /**
     * argv
     * returns a direct reference to the parameter array passed in
     * to initialize() - do NOT dereference this array!
     */
  /* [noscript] readonly attribute charArray argv; */
  nsresult GetArgv(char* * *aArgv);

  /**
     * Get the command line handler for the given parameter
     * @param param - can be any parameter, with or without leading
     *                "-" such as "-mail" or "edit" - Pass in a null
     *                string if you want the "default" handler
     */
  /* nsICmdLineHandler getHandlerForParam (in string param); */
  nsresult GetHandlerForParam(char *param, nsICmdLineHandler *_retval);

}

