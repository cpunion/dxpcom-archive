/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICmdLineService.idl
 */

module mozilla.dxpcom.nsICmdLineServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICmdLineService;


public import mozilla.dxpcom.nsICmdLineServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;
public import mozilla.xpcom.nsICmdLineHandler;
public import mozilla.dxpcom.nsICmdLineHandlerD;


/* starting wrapper class:    nsICmdLineService */
class nsICmdLineServiceD : public nsISupportsD {

  static const nsIID IID = NS_ICMDLINESERVICE_IID;


  alias nsICmdLineService InnerType;

  this(nsICmdLineService intr){
    super(intr);
    this.inner = intr;
  }

  nsICmdLineService opCast() {
    return inner;
  }

  void opAssign(nsICmdLineService value) {
    inner = value;
  }

  /**
     * initialize
     * Used to pass the original argv/argc from main()
     * Warning: This will hold a reference to the original argv
     * passed into Initialze();
     */
  /* [noscript] void initialize (in long argc, out string argv); */
  void Initialize(PRInt32 argc, out char*argv){
    nsresult __result = inner.Initialize(argc, &argv);
    CheckException(__result);
  }

  /**
     * getCmdLineValue
     * returns the 2nd parameter, if any, to the parameter passed in
     * For example, getCmdLineValue "-edit" will return any url that
     * came after the -edit parameter
     */
  /* string getCmdLineValue (in string argv); */
  char* GetCmdLineValue(char*argv){
    char* _retval;
    nsresult __result = inner.GetCmdLineValue(argv, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * URLToLoad
     * The URL to load as passed to the command line
     */
  /* readonly attribute string URLToLoad; */
  char* URLToLoad(){
    char* value;
    nsresult __result = inner.GetURLToLoad(&value);
    CheckException(__result);
    return value;
  }

  /**
     * programName
     *
     */
  /* readonly attribute string programName; */
  char* ProgramName(){
    char* value;
    nsresult __result = inner.GetProgramName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * argc
     * The number of parameters passed in on the command line
     */
  /* readonly attribute long argc; */
  PRInt32 Argc(){
    PRInt32 value;
    nsresult __result = inner.GetArgc(&value);
    CheckException(__result);
    return value;
  }

  /**
     * argv
     * returns a direct reference to the parameter array passed in
     * to initialize() - do NOT dereference this array!
     */
  /* [noscript] readonly attribute charArray argv; */
  char* * Argv(){
    char* * value;
    nsresult __result = inner.GetArgv(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the command line handler for the given parameter
     * @param param - can be any parameter, with or without leading
     *                "-" such as "-mail" or "edit" - Pass in a null
     *                string if you want the "default" handler
     */
  /* nsICmdLineHandler getHandlerForParam (in string param); */
  nsICmdLineHandlerD  GetHandlerForParam(char*param){
    nsICmdLineHandler _retval;
    nsresult __result = inner.GetHandlerForParam(param, &_retval);
    CheckException(__result);
    return new nsICmdLineHandlerD(_retval);
  }

private:
  nsICmdLineService inner;

}

