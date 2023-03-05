/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM jsdIDebuggerService.idl
 */

module mozilla.xpcom.jsdIDebuggerService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;

public import mozilla.xpcom.jsdIDebuggerService;


/* starting interface:    jsdIDebuggerService */
const char[] JSDIDEBUGGERSERVICE_IID_STR = "9dd9006a-4e5e-4a80-ac3d-007fb7335ca4";

const nsIID JSDIDEBUGGERSERVICE_IID= 
  {0x9dd9006a, 0x4e5e, 0x4a80, 
    [ 0xac, 0x3d, 0x00, 0x7f, 0xb7, 0x33, 0x5c, 0xa4 ]};

extern(Windows)
interface jsdIDebuggerService : nsISupports {
  static const char[] IID_STR = JSDIDEBUGGERSERVICE_IID_STR;
  static const nsIID IID = JSDIDEBUGGERSERVICE_IID;

  /**
 * Debugger service.  It's not a good idea to have more than one active client of
 * the debugger service.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /**
     * Called when an error or warning occurs.
     */
  /* attribute jsdIErrorHook errorHook; */
  nsresult GetErrorHook(jsdIErrorHook  *aErrorHook);
  nsresult SetErrorHook(jsdIErrorHook  aErrorHook);

  /**
     * Called when a jsdIScript is created or destroyed.
     */
  /* attribute jsdIScriptHook scriptHook; */
  nsresult GetScriptHook(jsdIScriptHook  *aScriptHook);
  nsresult SetScriptHook(jsdIScriptHook  aScriptHook);

  /**
     * Called when the engine encounters a breakpoint.
     */
  /* attribute jsdIExecutionHook breakpointHook; */
  nsresult GetBreakpointHook(jsdIExecutionHook  *aBreakpointHook);
  nsresult SetBreakpointHook(jsdIExecutionHook  aBreakpointHook);

  /**
     * Called when the engine encounters the debugger keyword.
     */
  /* attribute jsdIExecutionHook debuggerHook; */
  nsresult GetDebuggerHook(jsdIExecutionHook  *aDebuggerHook);
  nsresult SetDebuggerHook(jsdIExecutionHook  aDebuggerHook);

  /**
     * Called when the errorHook returns false.
     */
  /* attribute jsdIExecutionHook debugHook; */
  nsresult GetDebugHook(jsdIExecutionHook  *aDebugHook);
  nsresult SetDebugHook(jsdIExecutionHook  aDebugHook);

  /**
     * Called before the next PC is executed.
     */
  /* attribute jsdIExecutionHook interruptHook; */
  nsresult GetInterruptHook(jsdIExecutionHook  *aInterruptHook);
  nsresult SetInterruptHook(jsdIExecutionHook  aInterruptHook);

  /**
     * Called when an exception is thrown (even if it will be caught.)
     */
  /* attribute jsdIExecutionHook throwHook; */
  nsresult GetThrowHook(jsdIExecutionHook  *aThrowHook);
  nsresult SetThrowHook(jsdIExecutionHook  aThrowHook);

  /**
     * Called before and after a toplevel script is evaluated.
     */
  /* attribute jsdICallHook topLevelHook; */
  nsresult GetTopLevelHook(jsdICallHook  *aTopLevelHook);
  nsresult SetTopLevelHook(jsdICallHook  aTopLevelHook);

  /**
     * Called before and after a function is called.
     */
  /* attribute jsdICallHook functionHook; */
  nsresult GetFunctionHook(jsdICallHook  *aFunctionHook);
  nsresult SetFunctionHook(jsdICallHook  aFunctionHook);

  /**
     * VERSION_* values must be kept in sync with the JSVersion enumeration in
     * jspubtd.h.
     */
/**
     * Possible values for jsdIScript::version and jsdIContext::version.
     */
  enum { VERSION_1_0 = 100 };

  enum { VERSION_1_1 = 110 };

  enum { VERSION_1_2 = 120 };

  enum { VERSION_1_3 = 130 };

  enum { VERSION_1_4 = 140 };

  enum { VERSION_1_5 = 150 };

  enum { VERSION_DEFAULT = 0 };

  enum { VERSION_UNKNOWN = -1 };

  /**
     * These flags need to be kept in sync with the context flags defined in
     * jsdebug.h
     */
/**
     * Link native frames in call stacks.
     */
  enum { ENABLE_NATIVE_FRAMES = 1U };

  /**
     * Normally, if a script has a 0 in JSD_SCRIPT_PROFILE_BIT it is included in
     * profile data, otherwise it is not profiled.  Setting the
     * PROFILE_WHEN_SET flag reverses this convention.
     */
  enum { PROFILE_WHEN_SET = 2U };

  /**
     * Normally, when the script in the top frame of a thread state has a 1 in
     * JSD_SCRIPT_DEBUG_BIT, the execution hook is ignored.  Setting the
     * DEBUG_WHEN_SET flag reverses this convention.
     */
  enum { DEBUG_WHEN_SET = 4U };

  /**
     * When this flag is set the internal call hook will collect profile data.
     */
  enum { COLLECT_PROFILE_DATA = 8U };

  /**
     * When this flag is set, stack frames that are disabled for debugging
     * will not appear in the call stack chain.
     */
  enum { HIDE_DISABLED_FRAMES = 16U };

  /**
     * When this flag is set, the debugger will only check the
     * JSD_SCRIPT_DEBUG_BIT on the top (most recent) stack frame.  This
     * makes it possible to stop in an enabled frame which was called from
     * a stack that contains a disabled frame.
     *
     * When this flag is *not* set, any stack that contains a disabled frame
     * will not be debugged (the execution hook will not be invoked.)
     *
     * This only applies when the reason for calling the hook would have
     * been TYPE_INTERRUPTED or TYPE_THROW.  TYPE_BREAKPOINT,
     * TYPE_DEBUG_REQUESTED, and TYPE_DEBUGGER_KEYWORD always stop, regardless
     * of this setting, as long as the top frame is not disabled.
     *
     * If HIDE_DISABLED_FRAMES is set, this is effectively set as well.
     */
  enum { MASK_TOP_FRAME_ONLY = 32U };

  /**
     * When this flag is set, object creation will not be tracked.  This will
     * reduce the performance price you pay by enabling the debugger.
     */
  enum { DISABLE_OBJECT_TRACE = 64U };

  /**
     * Debugger service flags.
     */
  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /**
     * Major version number of implementation.
     */
  /* readonly attribute unsigned long implementationMajor; */
  nsresult GetImplementationMajor(PRUint32 *aImplementationMajor);

  /**
     * Minor version number of implementation.
     */
  /* readonly attribute unsigned long implementationMinor; */
  nsresult GetImplementationMinor(PRUint32 *aImplementationMinor);

  /**
     * Free form string identifier for implementation.
     */
  /* readonly attribute string implementationString; */
  nsresult GetImplementationString(char * *aImplementationString);

  /**
     * |true| if the debugger should register an app-start observer in order
     * to begin collecting debug information when mozilla is launched.
     */
  /* attribute boolean initAtStartup; */
  nsresult GetInitAtStartup(PRBool *aInitAtStartup);
  nsresult SetInitAtStartup(PRBool aInitAtStartup);

  /**
     * |true| if the debugger service has been turned on.  This does not
     * necessarily mean another app is actively using the service, as the 
     * autostart pref may have turned the service on.
     */
  /* readonly attribute boolean isOn; */
  nsresult GetIsOn(PRBool *aIsOn);

  /**
     * Turn on the debugger.  This function should only be called from JavaScript
     * code.  The debugger will be enabled on the runtime the call is made on,
     * as determined by nsIXPCNativeCallContext.
     */
  /* void on (); */
  nsresult On();

  /**
     * Turn on the debugger for a given runtime.
     *
     * @param rt The runtime you want to debug.  You cannot turn the debugger
     *           on for multiple runtimes.
     */
  /* [noscript] void onForRuntime (in JSRuntime rt); */
  nsresult OnForRuntime(JSRuntime * rt);

  /**
     * Turn the debugger off.  This will invalidate all of your jsdIEphemeral
     * derived objects, and clear all of your breakpoints.  In theory you
     * should be able to turn the debugger back on at some later time without
     * any problems.
     */
  /* void off (); */
  nsresult Off();

  /**
     * Peek at the current pause depth of the debugger.
     *
     * @return depth Number of pause() calls still waiting to be unPause()d.
     */
  /* readonly attribute unsigned long pauseDepth; */
  nsresult GetPauseDepth(PRUint32 *aPauseDepth);

  /**
     * Temporarily disable the debugger.  Hooks will not be called while the
     * debugger is paused.  Multiple calls to pause will increase the "pause
     * depth", and equal number of unPause calles must be made to resume
     * normal debugging.
     *
     * @return depth Number of times pause has been called since the debugger
     *               has been unpaused.
     */
  /* unsigned long pause (); */
  nsresult Pause(PRUint32 *_retval);

  /**
     * Undo a pause.
     *
     * @return depth The number of remaining pending pause calls.
     */
  /* unsigned long unPause (); */
  nsresult UnPause(PRUint32 *_retval);

  /**
     * Force the engine to perform garbage collection.
     */
  /* void GC (); */
  nsresult GC();

  /**
     * Clear profile data for all scripts.
     */
  /* void clearProfileData (); */
  nsresult ClearProfileData();

  /**
     * Adds an execution hook filter.  These filters are consulted each time one
     * of the jsdIExecutionHooks is about to be called.  Filters are matched in
     * a first in, first compared fashion.  The first filter to match determines
     * whether or not the hook is called.  Use swapFilter to reorder existing
     * filters, and removeFilter to remove them.
     *
     * If |filter| is already present this method throws NS_ERROR_INVALID_ARG.
     *
     * @param filter Object representing the filter to add.
     * @param after  Insert |filter| after this one.  Pass null to insert at
     *               the beginning.
     */
  /* void insertFilter (in jsdIFilter filter, in jsdIFilter after); */
  nsresult InsertFilter(jsdIFilter filter, jsdIFilter after);

  /**
     * Same as insertFilter, except always add to the end of the list.
     */
  /* void appendFilter (in jsdIFilter filter); */
  nsresult AppendFilter(jsdIFilter filter);

  /**
     * Remove a filter.
     *
     * If |filter| is not present this method throws NS_ERROR_INVALID_ARG.
     *
     * @param filter Object representing the filter to remove.  Must be the exact
     * object passed to addFilter, not just a new object with the same
     * properties.
     */
  /* void removeFilter (in jsdIFilter filter); */
  nsresult RemoveFilter(jsdIFilter filter);

  /**
     * Swap position of two filters.
     * 
     * If |filter_a| is not present, this method throws NS_ERROR_INVALID_ARG.
     * If |filter_b| is not present, filter_a is replaced by filter_b.
     * If |filter_a| == |filter_b|, then filter is refreshed.
     */
  /* void swapFilters (in jsdIFilter filter_a, in jsdIFilter filter_b); */
  nsresult SwapFilters(jsdIFilter filter_a, jsdIFilter filter_b);

  /**
     * Enumerate registered filters.  This routine refreshes each filter before
     * passing them on to the enumeration function.  Calling this with a null
     * |enumerator| is equivalent to jsdIService::refreshFilters.
     *
     * @param enumerator jsdIFilterEnumerator instance to be called back for the
     *                   enumeration.
     */
  /* void enumerateFilters (in jsdIFilterEnumerator enumerator); */
  nsresult EnumerateFilters(jsdIFilterEnumerator enumerator);

  /**
     * Force the debugger to resync its internal filter cache with the
     * actual values in the jsdIFilter objects.  To refresh a single filter
     * use jsdIService::swapFilters.  This method is equivalent to
     * jsdIService::enumerateFilters with a null enumerator.
     */
  /* void refreshFilters (); */
  nsresult RefreshFilters();

  /**
     * Clear the list of filters.
     */
  /* void clearFilters (); */
  nsresult ClearFilters();

  /**
     * Enumerate all known contexts.
     */
  /* void enumerateContexts (in jsdIContextEnumerator enumerator); */
  nsresult EnumerateContexts(jsdIContextEnumerator enumerator);

  /**
     * Enumerate all scripts the debugger knows about.  Any scripts created
     * before you turned the debugger on, or after turning the debugger off
     * will not be available unless the autostart perf is set.
     *
     * @param enumerator jsdIScriptEnumerator instance to be called back for
     *                   the enumeration.
     */
  /* void enumerateScripts (in jsdIScriptEnumerator enumerator); */
  nsresult EnumerateScripts(jsdIScriptEnumerator enumerator);

  /**
     * Clear all breakpoints in all scripts.
     */
  /* void clearAllBreakpoints (); */
  nsresult ClearAllBreakpoints();

  /**
     * When called from JavaScript, this method returns the jsdIValue wrapper
     * for the given value.  If a wrapper does not exist one will be created.
     * When called from another language this method returns an xpconnect
     * defined error code.
     */
  /* jsdIValue wrapValue (); */
  nsresult WrapValue(jsdIValue *_retval);

  /**
     * Push a new network queue, and enter a new UI event loop.
     * @param callback jsdINestCallback instance to be called back after the
     *                 network queue has been pushed, but before the
     *                 UI loop starts.
     * @return depth returns the current number of times the event loop has been
     *               nested.  your code can use it for sanity checks.
     */
  /* unsigned long enterNestedEventLoop (in jsdINestCallback callback); */
  nsresult EnterNestedEventLoop(jsdINestCallback callback, PRUint32 *_retval);

  /**
     * Exit the current nested event loop after the current iteration completes,
     * and pop the network event queue.
     *
     * @return depth returns the current number of times the event loop has been
     *               nested.  your code can use it for sanity checks.
     */
  /* unsigned long exitNestedEventLoop (); */
  nsresult ExitNestedEventLoop(PRUint32 *_retval);

}


/* starting interface:    jsdIFilter */
const char[] JSDIFILTER_IID_STR = "05593438-1b83-4517-864f-3cea3d37a266";

const nsIID JSDIFILTER_IID= 
  {0x05593438, 0x1b83, 0x4517, 
    [ 0x86, 0x4f, 0x3c, 0xea, 0x3d, 0x37, 0xa2, 0x66 ]};

extern(Windows)
interface jsdIFilter : nsISupports {
  static const char[] IID_STR = JSDIFILTER_IID_STR;
  static const nsIID IID = JSDIFILTER_IID;

  /**
 * Object representing a pattern of global object and/or url the debugger should
 * ignore.  The debugger service itself will not modify properties of these
 * objects.
 */
/**
     * These two bytes of the flags attribute are reserved for interpretation
     * by the jsdService implementation.  You can do what you like with the
     * remaining flags.
     */
  enum { FLAG_RESERVED_MASK = 255U };

  /**
     * Filters without this flag set are ignored.
     */
  enum { FLAG_ENABLED = 1U };

  /**
     * Filters with this flag set are "pass" filters, they allow matching hooks
     * to continue.  Filters without this flag block matching hooks.
     */
  enum { FLAG_PASS = 2U };

  /**
     * FLAG_* values from above, OR'd together.
     */
  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /**
     * An nsISupports version of the global object to be filtered.  A null glob
     * matches all hooks.  This attribute must be QI'able to the
     * (non-scriptable) nsIScriptGlobalObject interface.
     *
     * The jsdIService caches this value internally, to if it changes you must
     * swap the filter with itself using jsdIService::swapFilters.
     */
  /* attribute nsISupports globalObject; */
  nsresult GetGlobalObject(nsISupports  *aGlobalObject);
  nsresult SetGlobalObject(nsISupports  aGlobalObject);

  /**
     * String representing the url pattern to be filtered.  Supports limited
     * glob matching, at the beginning and end of the pattern only.  For example,
     * "chrome://venkman*" filters all urls that start with chrome/venkman,
     * "*.cgi" filters all cgi's, and "http://myserver/utils.js" filters only
     * the utils.js file on "myserver".   A null urlPattern matches all urls.
     *
     * The jsdIService caches this value internally, to if it changes you must
     * swap the filter with itself using jsdIService::swapFilters.
     */
  /* attribute string urlPattern; */
  nsresult GetUrlPattern(char * *aUrlPattern);
  nsresult SetUrlPattern(char * aUrlPattern);

  /**
     * Line number for the start of this filter.  Line numbers are one based.
     * Assigning a 0 to this attribute will tell the debugger to ignore the
     * entire file.
     */
  /* attribute unsigned long startLine; */
  nsresult GetStartLine(PRUint32 *aStartLine);
  nsresult SetStartLine(PRUint32 aStartLine);

  /**
     * Line number for the end of this filter.  Line numbers are one based.
     * Assigning a 0 to this attribute will tell the debugger to ignore from
     * |startLine| to the end of the file.
     */
  /* attribute unsigned long endLine; */
  nsresult GetEndLine(PRUint32 *aEndLine);
  nsresult SetEndLine(PRUint32 aEndLine);

}


/* starting interface:    jsdINestCallback */
const char[] JSDINESTCALLBACK_IID_STR = "88bea60f-9b5d-4b39-b08b-1c3a278782c6";

const nsIID JSDINESTCALLBACK_IID= 
  {0x88bea60f, 0x9b5d, 0x4b39, 
    [ 0xb0, 0x8b, 0x1c, 0x3a, 0x27, 0x87, 0x82, 0xc6 ]};

extern(Windows)
interface jsdINestCallback : nsISupports {
  static const char[] IID_STR = JSDINESTCALLBACK_IID_STR;
  static const nsIID IID = JSDINESTCALLBACK_IID;

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enterNestedEventLoop.
 */
/**
     * This method will be called after pre-nesting work has completed, such
     * as pushing the js context and network event queue, but before the new
     * event loop starts.
     */
  /* void onNest (); */
  nsresult OnNest();

}


/* starting interface:    jsdIFilterEnumerator */
const char[] JSDIFILTERENUMERATOR_IID_STR = "54382875-ed12-4f90-9a63-1f0498d0a3f2";

const nsIID JSDIFILTERENUMERATOR_IID= 
  {0x54382875, 0xed12, 0x4f90, 
    [ 0x9a, 0x63, 0x1f, 0x04, 0x98, 0xd0, 0xa3, 0xf2 ]};

extern(Windows)
interface jsdIFilterEnumerator : nsISupports {
  static const char[] IID_STR = JSDIFILTERENUMERATOR_IID_STR;
  static const nsIID IID = JSDIFILTERENUMERATOR_IID;

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateFilters.
 */
/**
     * The enumerateFilter method will be called once for every filter the
     * debugger knows about.
     */
  /* void enumerateFilter (in jsdIFilter filter); */
  nsresult EnumerateFilter(jsdIFilter filter);

}


/* starting interface:    jsdIScriptEnumerator */
const char[] JSDISCRIPTENUMERATOR_IID_STR = "4c2f706e-1dd2-11b2-9ebc-85a06e948830";

const nsIID JSDISCRIPTENUMERATOR_IID= 
  {0x4c2f706e, 0x1dd2, 0x11b2, 
    [ 0x9e, 0xbc, 0x85, 0xa0, 0x6e, 0x94, 0x88, 0x30 ]};

extern(Windows)
interface jsdIScriptEnumerator : nsISupports {
  static const char[] IID_STR = JSDISCRIPTENUMERATOR_IID_STR;
  static const nsIID IID = JSDISCRIPTENUMERATOR_IID;

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateScripts.
 */
/**
     * The enumerateScript method will be called once for every script the
     * debugger knows about.
     */
  /* void enumerateScript (in jsdIScript script); */
  nsresult EnumerateScript(jsdIScript script);

}


/* starting interface:    jsdIContextEnumerator */
const char[] JSDICONTEXTENUMERATOR_IID_STR = "912e342a-1dd2-11b2-b09f-cf3af38c15f0";

const nsIID JSDICONTEXTENUMERATOR_IID= 
  {0x912e342a, 0x1dd2, 0x11b2, 
    [ 0xb0, 0x9f, 0xcf, 0x3a, 0xf3, 0x8c, 0x15, 0xf0 ]};

extern(Windows)
interface jsdIContextEnumerator : nsISupports {
  static const char[] IID_STR = JSDICONTEXTENUMERATOR_IID_STR;
  static const nsIID IID = JSDICONTEXTENUMERATOR_IID;

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateContexts.
 */
/**
     * The enumerateContext method will be called once for every context
     * currently in use.
     */
  /* void enumerateContext (in jsdIContext executionContext); */
  nsresult EnumerateContext(jsdIContext executionContext);

}


/* starting interface:    jsdIScriptHook */
const char[] JSDISCRIPTHOOK_IID_STR = "ae89a7e2-1dd1-11b2-8c2f-af82086291a5";

const nsIID JSDISCRIPTHOOK_IID= 
  {0xae89a7e2, 0x1dd1, 0x11b2, 
    [ 0x8c, 0x2f, 0xaf, 0x82, 0x08, 0x62, 0x91, 0xa5 ]};

extern(Windows)
interface jsdIScriptHook : nsISupports {
  static const char[] IID_STR = JSDISCRIPTHOOK_IID_STR;
  static const nsIID IID = JSDISCRIPTHOOK_IID;

  /**
 * Set jsdIDebuggerService::scriptHook to an instance of one of these.
 */
/**
     * Called when scripts are created.
     */
  /* void onScriptCreated (in jsdIScript script); */
  nsresult OnScriptCreated(jsdIScript script);

  /**
     * Called when the JavaScript engine destroys a script.  The jsdIScript
     * object passed in will already be invalidated.
     */
  /* void onScriptDestroyed (in jsdIScript script); */
  nsresult OnScriptDestroyed(jsdIScript script);

}


/* starting interface:    jsdICallHook */
const char[] JSDICALLHOOK_IID_STR = "f102caf6-1dd1-11b2-bd43-c1dbacb95a98";

const nsIID JSDICALLHOOK_IID= 
  {0xf102caf6, 0x1dd1, 0x11b2, 
    [ 0xbd, 0x43, 0xc1, 0xdb, 0xac, 0xb9, 0x5a, 0x98 ]};

extern(Windows)
interface jsdICallHook : nsISupports {
  static const char[] IID_STR = JSDICALLHOOK_IID_STR;
  static const nsIID IID = JSDICALLHOOK_IID;

  /**
 * Hook instances of this interface up to the
 * jsdIDebuggerService::functionHook and toplevelHook properties.
 */
/**
     * TYPE_* values must be kept in sync with the JSD_HOOK_* #defines
     * in jsdebug.h.
     */
/**
     * Toplevel script is starting.
     */
  enum { TYPE_TOPLEVEL_START = 0U };

  /**
     * Toplevel script has completed.
     */
  enum { TYPE_TOPLEVEL_END = 1U };

  /**
     * Function is being called.
     */
  enum { TYPE_FUNCTION_CALL = 2U };

  /**
     * Function is returning.
     */
  enum { TYPE_FUNCTION_RETURN = 3U };

  /**
     * Called before the JavaScript engine executes a top level script or calls
     * a function.
     */
  /* void onCall (in jsdIStackFrame frame, in unsigned long type); */
  nsresult OnCall(jsdIStackFrame frame, PRUint32 type);

}


/* starting interface:    jsdIErrorHook */
const char[] JSDIERRORHOOK_IID_STR = "b7dd3c1c-1dd1-11b2-83eb-8a857d199e0f";

const nsIID JSDIERRORHOOK_IID= 
  {0xb7dd3c1c, 0x1dd1, 0x11b2, 
    [ 0x83, 0xeb, 0x8a, 0x85, 0x7d, 0x19, 0x9e, 0x0f ]};

extern(Windows)
interface jsdIErrorHook : nsISupports {
  static const char[] IID_STR = JSDIERRORHOOK_IID_STR;
  static const nsIID IID = JSDIERRORHOOK_IID;

  /**
     * REPORT_* values must be kept in sync with JSREPORT_* #defines in
     * jsapi.h
     */
/**
     * Report is an error.
     */
  enum { REPORT_ERROR = 0U };

  /**
     * Report is only a warning.
     */
  enum { REPORT_WARNING = 1U };

  /**
     * Report represents an uncaught exception.
     */
  enum { REPORT_EXCEPTION = 2U };

  /**
     * Report is due to strict mode.
     */
  enum { REPORT_STRICT = 4U };

  /**
     * Called when the JavaScript engine encounters an error.  Return |true|
     * to pass the error along, |false| to invoke the debugHook.
     */
  /* boolean onError (in string message, in string fileName, in unsigned long line, in unsigned long pos, in unsigned long flags, in unsigned long errnum, in jsdIValue exc); */
  nsresult OnError(char *message, char *fileName, PRUint32 line, PRUint32 pos, PRUint32 flags, PRUint32 errnum, jsdIValue exc, PRBool *_retval);

}


/* starting interface:    jsdIExecutionHook */
const char[] JSDIEXECUTIONHOOK_IID_STR = "9a7b6ad0-1dd1-11b2-a789-fcfae96356a2";

const nsIID JSDIEXECUTIONHOOK_IID= 
  {0x9a7b6ad0, 0x1dd1, 0x11b2, 
    [ 0xa7, 0x89, 0xfc, 0xfa, 0xe9, 0x63, 0x56, 0xa2 ]};

extern(Windows)
interface jsdIExecutionHook : nsISupports {
  static const char[] IID_STR = JSDIEXECUTIONHOOK_IID_STR;
  static const nsIID IID = JSDIEXECUTIONHOOK_IID;

  /**
 * Hook instances of this interface up to the
 * jsdIDebuggerService::breakpointHook, debuggerHook, errorHook, interruptHook,
 * and throwHook properties.
 */
/**
     * TYPE_* values must be kept in sync with JSD_HOOK_* #defines in jsdebug.h.
     */
/**
     * Execution stopped because we're in single step mode.
     */
  enum { TYPE_INTERRUPTED = 0U };

  /**
     * Execution stopped by a trap instruction (i.e. breakoint.)
     */
  enum { TYPE_BREAKPOINT = 1U };

  /**
     * Error handler returned an "invoke debugger" value.
     */
  enum { TYPE_DEBUG_REQUESTED = 2U };

  /**
     * Debugger keyword encountered.
     */
  enum { TYPE_DEBUGGER_KEYWORD = 3U };

  /**
     * Exception was thrown.
     */
  enum { TYPE_THROW = 4U };

  /**
     * RETURN_* values must be kept in sync with JSD_HOOK_RETURN_* #defines in
     * jsdebug.h.
     */
/**
     * Indicates unrecoverable error processing the hook.  This will cause
     * the script being executed to be aborted without raising a JavaScript
     * exception.
     */
  enum { RETURN_HOOK_ERROR = 0U };

  /**
     * Continue processing normally.  This is the "do nothing special" return
     * value for all hook types *except* TYPE_THROW.  Returning RETURN_CONTINUE
     * from TYPE_THROW cause the exception to be ignored.  Return
     * RETURN_CONTINUE_THROW to continue exception processing from TYPE_THROW
     * hooks.
     */
  enum { RETURN_CONTINUE = 1U };

  /**
     * Same effect as RETURN_HOOK_ERROR.
     */
  enum { RETURN_ABORT = 2U };

  /**
     * Return the value of the |val| parameter.
     */
  enum { RETURN_RET_WITH_VAL = 3U };

  /**
     * Throw the value of the |val| parameter.
     */
  enum { RETURN_THROW_WITH_VAL = 4U };

  /**
     * Continue the current throw.
     */
  enum { RETURN_CONTINUE_THROW = 5U };

  /**
     * @param frame A jsdIStackFrame object representing the bottom stack frame.
     * @param type  One of the jsdIExecutionHook::TYPE_ constants.
     * @param val   in  - Current exception (if any) when this method is called.
     *              out - If you return RETURN_THROW_WITH_VAL, value to be
     *                    thrown.
     *                    If you return RETURN_RET_WITH_VAL, value to return.
     *                    All other return values, not significant.
     * @retval      One of the jsdIExecutionHook::RETURN_* constants.
     */
  /* unsigned long onExecute (in jsdIStackFrame frame, in unsigned long type, inout jsdIValue val); */
  nsresult OnExecute(jsdIStackFrame frame, PRUint32 type, jsdIValue *val, PRUint32 *_retval);

}


/* starting interface:    jsdIEphemeral */
const char[] JSDIEPHEMERAL_IID_STR = "46f1e23e-1dd2-11b2-9ceb-8285f2e95e69";

const nsIID JSDIEPHEMERAL_IID= 
  {0x46f1e23e, 0x1dd2, 0x11b2, 
    [ 0x9c, 0xeb, 0x82, 0x85, 0xf2, 0xe9, 0x5e, 0x69 ]};

extern(Windows)
interface jsdIEphemeral : nsISupports {
  static const char[] IID_STR = JSDIEPHEMERAL_IID_STR;
  static const nsIID IID = JSDIEPHEMERAL_IID;

  /**
 * Objects which inherit this interface may go away, with (jsdIScript) or
 * without (all others) notification.  These objects are generally wrappers
 * around JSD structures that go away when you call jsdService::Off().
 */
/**
     * |true| if this object is still valid.  If not, many or all of the methods
     * and/or properties of the inheritor may no longer be callable.
     */
  /* readonly attribute boolean isValid; */
  nsresult GetIsValid(PRBool *aIsValid);

  /**
     * Mark this instance as invalid.
     */
  /* [noscript] void invalidate (); */
  nsresult Invalidate();

}


/* starting interface:    jsdIContext */
const char[] JSDICONTEXT_IID_STR = "a2dd25a4-1dd1-11b2-bda6-ed525acd4c35";

const nsIID JSDICONTEXT_IID= 
  {0xa2dd25a4, 0x1dd1, 0x11b2, 
    [ 0xbd, 0xa6, 0xed, 0x52, 0x5a, 0xcd, 0x4c, 0x35 ]};

extern(Windows)
interface jsdIContext : jsdIEphemeral {
  static const char[] IID_STR = JSDICONTEXT_IID_STR;
  static const nsIID IID = JSDICONTEXT_IID;

  /**
 * Context object.  Only context's which are also nsISupports objects can be
 * reflected by this interface.
 */
  /* [noscript] readonly attribute JSContext JSContext; */
  nsresult GetJSContext(JSContext * *aJSContext);

  /**
     * OPT_* values must be kept in sync with JSOPTION_* #defines in jsapi.h.
     */
/**
     * Strict mode is on.
     */
  enum { OPT_STRICT = 1 };

  /**
     * Warnings reported as errors.
     */
  enum { OPT_WERR = 2 };

  /**
     * Makes eval() use the last object on its 'obj' param's scope chain as the
     * ECMA 'variables object'.
     */
  enum { OPT_VAROBJFIX = 4 };

  /**
     * Private data for this object is an nsISupports object.  Attempting to
     * alter this bit will result in an NS_ERROR_ILLEGAL_VALUE.
     */
  enum { OPT_ISUPPORTS = 8 };

  /**
     * OPT_* values above, OR'd together.
     */
  /* attribute unsigned long options; */
  nsresult GetOptions(PRUint32 *aOptions);
  nsresult SetOptions(PRUint32 aOptions);

  /**
     * Last version set on this context.
     * Scripts typically select this with the "language" attribute.
     * See the VERSION_* consts on jsdIDebuggerService.
     */
  /* attribute long version; */
  nsresult GetVersion(PRInt32 *aVersion);
  nsresult SetVersion(PRInt32 aVersion);

  /**
     * Unique tag among all valid jsdIContext objects, useful as a hash key.
     */
  /* readonly attribute unsigned long tag; */
  nsresult GetTag(PRUint32 *aTag);

  /**
     * Private data for this context, if it is an nsISupports, |null| otherwise.
     */
  /* readonly attribute nsISupports privateData; */
  nsresult GetPrivateData(nsISupports  *aPrivateData);

  /**
     * Retrieve the underlying context wrapped by this jsdIContext.
     */
  /* readonly attribute nsISupports wrappedContext; */
  nsresult GetWrappedContext(nsISupports  *aWrappedContext);

  /**
     * Top of the scope chain for this context.
     */
  /* readonly attribute jsdIValue globalObject; */
  nsresult GetGlobalObject(jsdIValue  *aGlobalObject);

  /**
     * |true| if this context should be allowed to run scripts, |false|
     * otherwise.  This attribute is only valid for contexts which implement
     * nsIScriptContext.  Setting or getting this attribute on any other
     * context will throw a NS_ERROR_NO_INTERFACE exception.
     */
  /* attribute boolean scriptsEnabled; */
  nsresult GetScriptsEnabled(PRBool *aScriptsEnabled);
  nsresult SetScriptsEnabled(PRBool aScriptsEnabled);

}


/* starting interface:    jsdIStackFrame */
const char[] JSDISTACKFRAME_IID_STR = "b6d50784-1dd1-11b2-a932-882246c6fe45";

const nsIID JSDISTACKFRAME_IID= 
  {0xb6d50784, 0x1dd1, 0x11b2, 
    [ 0xa9, 0x32, 0x88, 0x22, 0x46, 0xc6, 0xfe, 0x45 ]};

extern(Windows)
interface jsdIStackFrame : jsdIEphemeral {
  static const char[] IID_STR = JSDISTACKFRAME_IID_STR;
  static const nsIID IID = JSDISTACKFRAME_IID;

  /**
 * Stack frame objects.  These are only valid inside the jsdIExecutionHook which
 * gave it to you.  After you return from that handler the bottom frame, and any
 * frame you found attached through it, are invalidated via the jsdIEphemeral
 * interface.  Once a jsdIStackFrame has been invalidated all method and
 * property accesses will throw a NS_ERROR_NOT_AVAILABLE exception.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDThreadState JSDThreadState; */
  nsresult GetJSDThreadState(JSDThreadState * *aJSDThreadState);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDStackFrameInfo JSDStackFrameInfo; */
  nsresult GetJSDStackFrameInfo(JSDStackFrameInfo * *aJSDStackFrameInfo);

  /**
     * True if stack frame represents a native frame.
     */
  /* readonly attribute boolean isNative; */
  nsresult GetIsNative(PRBool *aIsNative);

  /**
     * True if stack frame represents a frame created as a result of a debugger
     * evaluation.
     */
  /* readonly attribute boolean isDebugger; */
  nsresult GetIsDebugger(PRBool *aIsDebugger);

  /**
     * True if stack frame is constructing a new object.
     */
  /* readonly attribute boolean isConstructing; */
  nsresult GetIsConstructing(PRBool *aIsConstructing);

  /**
     * Link to the caller's stack frame.
     */
  /* readonly attribute jsdIStackFrame callingFrame; */
  nsresult GetCallingFrame(jsdIStackFrame  *aCallingFrame);

  /**
     * Executon context.
     */
  /* readonly attribute jsdIContext executionContext; */
  nsresult GetExecutionContext(jsdIContext  *aExecutionContext);

  /**
     * Function name executing in this stack frame.
     */
  /* readonly attribute string functionName; */
  nsresult GetFunctionName(char * *aFunctionName);

  /**
     * Script running in this stack frame, null for native frames.
     */
  /* readonly attribute jsdIScript script; */
  nsresult GetScript(jsdIScript  *aScript);

  /**
     * Current program counter in this stack frame.
     */
  /* readonly attribute unsigned long pc; */
  nsresult GetPc(PRUint32 *aPc);

  /**
     * Current line number (using the script's pc to line map.)
     */
  /* readonly attribute unsigned long line; */
  nsresult GetLine(PRUint32 *aLine);

  /**
     * Function object running in this stack frame.
     */
  /* readonly attribute jsdIValue callee; */
  nsresult GetCallee(jsdIValue  *aCallee);

  /**
     * Top object in the scope chain.
     */
  /* readonly attribute jsdIValue scope; */
  nsresult GetScope(jsdIValue  *aScope);

  /**
     * |this| object for this stack frame.
     */
  /* readonly attribute jsdIValue thisValue; */
  nsresult GetThisValue(jsdIValue  *aThisValue);

  /**
     * Evaluate arbitrary JavaScript in this stack frame.
     * @param bytes    Script to be evaluated.
     * @param fileName Filename to compile this script under.  This is the
     *                 filename you'll see in error messages, etc.
     * @param line     Starting line number for this script.  One based.
     * @retval         Result of evaluating the script.
     */
  /* boolean eval (in AString bytes, in string fileName, in unsigned long line, out jsdIValue result); */
  nsresult Eval(nsAString * bytes, char *fileName, PRUint32 line, jsdIValue *result, PRBool *_retval);

}


/* starting interface:    jsdIScript */
const char[] JSDISCRIPT_IID_STR = "a38f65ca-1dd1-11b2-95d5-ff2947e9c920";

const nsIID JSDISCRIPT_IID= 
  {0xa38f65ca, 0x1dd1, 0x11b2, 
    [ 0x95, 0xd5, 0xff, 0x29, 0x47, 0xe9, 0xc9, 0x20 ]};

extern(Windows)
interface jsdIScript : jsdIEphemeral {
  static const char[] IID_STR = JSDISCRIPT_IID_STR;
  static const nsIID IID = JSDISCRIPT_IID;

  /**
 * Script object.  In JavaScript engine terms, there's a single script for each
 * function, and one for the top level script.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDScript JSDScript; */
  nsresult GetJSDScript(JSDScript * *aJSDScript);

  /**
     * Last version set on this context.
     * Scripts typically select this with the "language" attribute.
     * See the VERSION_* consts on jsdIDebuggerService.
     */
  /* readonly attribute long version; */
  nsresult GetVersion(PRInt32 *aVersion);

  /**
     * Tag value guaranteed unique among jsdIScript objects.  Useful as a
     * hash key in script.
     */
  /* readonly attribute unsigned long tag; */
  nsresult GetTag(PRUint32 *aTag);

  /**
     * FLAG_* values need to be kept in sync with JSD_SCRIPT_* #defines in
     * jsdebug.h.
     */
/**
     * Determines whether or not to collect profile information for this
     * script.  The context flag FLAG_PROFILE_WHEN_SET decides the logic.
     */
  enum { FLAG_PROFILE = 1U };

  /**
     * Determines whether or not to ignore breakpoints, etc. in this script.
     * The context flag JSD_DEBUG_WHEN_SET decides the logic.
     */
  enum { FLAG_DEBUG = 2U };

  /**
     * FLAG_* attributes from above, OR'd together.
     */
  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /**
     * Filename given for this script when it was compiled.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute string fileName; */
  nsresult GetFileName(char * *aFileName);

  /**
     * Function name for this script.  "anonymous" for unnamed functions (or
     * a function actually named anonymous), empty for top level scripts.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute string functionName; */
  nsresult GetFunctionName(char * *aFunctionName);

  /**
     * Fetch the function object as a jsdIValue.
     */
  /* readonly attribute jsdIValue functionObject; */
  nsresult GetFunctionObject(jsdIValue  *aFunctionObject);

  /**
     * Source code for this script, without function declaration.
     */
  /* readonly attribute AString functionSource; */
  nsresult GetFunctionSource(nsAString * aFunctionSource);

  /**
     * Line number in source file containing the first line of this script.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute unsigned long baseLineNumber; */
  nsresult GetBaseLineNumber(PRUint32 *aBaseLineNumber);

  /**
     * Total number of lines in this script.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute unsigned long lineExtent; */
  nsresult GetLineExtent(PRUint32 *aLineExtent);

  /**
     * Number of times this script has been called.
     */
  /* readonly attribute unsigned long callCount; */
  nsresult GetCallCount(PRUint32 *aCallCount);

  /**
     * Number of times this script called itself, directly or indirectly.
     */
  /* readonly attribute unsigned long maxRecurseDepth; */
  nsresult GetMaxRecurseDepth(PRUint32 *aMaxRecurseDepth);

  /**
     * Shortest execution time recorded, in milliseconds.
     */
  /* readonly attribute double minExecutionTime; */
  nsresult GetMinExecutionTime(double *aMinExecutionTime);

  /**
     * Longest execution time recorded, in milliseconds.
     */
  /* readonly attribute double maxExecutionTime; */
  nsresult GetMaxExecutionTime(double *aMaxExecutionTime);

  /**
     * Total time spent in this function, in milliseconds.
     */
  /* readonly attribute double totalExecutionTime; */
  nsresult GetTotalExecutionTime(double *aTotalExecutionTime);

  /**
     * Shortest execution time recorded, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double minOwnExecutionTime; */
  nsresult GetMinOwnExecutionTime(double *aMinOwnExecutionTime);

  /**
     * Longest execution time recorded, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double maxOwnExecutionTime; */
  nsresult GetMaxOwnExecutionTime(double *aMaxOwnExecutionTime);

  /**
     * Total time spent in this function, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double totalOwnExecutionTime; */
  nsresult GetTotalOwnExecutionTime(double *aTotalOwnExecutionTime);

  /**
     * Clear profile data for this script.
     */
  /* void clearProfileData (); */
  nsresult ClearProfileData();

  enum { PCMAP_SOURCETEXT = 1U };

  enum { PCMAP_PRETTYPRINT = 2U };

  /**
     * Get the closest line number to a given PC.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* unsigned long pcToLine (in unsigned long pc, in unsigned long pcmap); */
  nsresult PcToLine(PRUint32 pc, PRUint32 pcmap, PRUint32 *_retval);

  /**
     * Get the first PC associated with a line.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* unsigned long lineToPc (in unsigned long line, in unsigned long pcmap); */
  nsresult LineToPc(PRUint32 line, PRUint32 pcmap, PRUint32 *_retval);

  /**
     * Determine is a particular line is executable, like checking that
     * lineToPc == pcToLine, except in one call.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* boolean isLineExecutable (in unsigned long line, in unsigned long pcmap); */
  nsresult IsLineExecutable(PRUint32 line, PRUint32 pcmap, PRBool *_retval);

  /**
     * Set a breakpoint at a PC in this script.
     */
  /* void setBreakpoint (in unsigned long pc); */
  nsresult SetBreakpoint(PRUint32 pc);

  /**
     * Clear a breakpoint at a PC in this script.
     */
  /* void clearBreakpoint (in unsigned long pc); */
  nsresult ClearBreakpoint(PRUint32 pc);

  /**
     * Clear all breakpoints set in this script.
     */
  /* void clearAllBreakpoints (); */
  nsresult ClearAllBreakpoints();

}


/* starting interface:    jsdIValue */
const char[] JSDIVALUE_IID_STR = "b7964304-1dd1-11b2-ba20-cf4205772e9d";

const nsIID JSDIVALUE_IID= 
  {0xb7964304, 0x1dd1, 0x11b2, 
    [ 0xba, 0x20, 0xcf, 0x42, 0x05, 0x77, 0x2e, 0x9d ]};

extern(Windows)
interface jsdIValue : jsdIEphemeral {
  static const char[] IID_STR = JSDIVALUE_IID_STR;
  static const nsIID IID = JSDIVALUE_IID;

  /**
 * Value objects.  Represents typeless JavaScript values (jsval in SpiderMonkey
 * terminology.)  These are valid until the debugger is turned off.  Holding a
 * jsdIValue adds a root for the underlying JavaScript value, so don't keep it
 * if you don't need to.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDValue JSDValue; */
  nsresult GetJSDValue(JSDValue * *aJSDValue);

  /**
     * |false| unless the value is a function declared in script.
     */
  /* readonly attribute boolean isNative; */
  nsresult GetIsNative(PRBool *aIsNative);

  /**
     * |true| if the value represents a number, either double or integer.
     * |false| for all other values, including numbers assigned as strings
     * (eg. x = "1";)
     */
  /* readonly attribute boolean isNumber; */
  nsresult GetIsNumber(PRBool *aIsNumber);

  /**
     * |true| if the value represents a JavaScript primitive number or string
     */
  /* readonly attribute boolean isPrimitive; */
  nsresult GetIsPrimitive(PRBool *aIsPrimitive);

  /** Value is either |true| or |false|. */
  enum { TYPE_BOOLEAN = 0U };

  /** Value is a primitive number that is too large to fit in an integer. */
  enum { TYPE_DOUBLE = 1U };

  /** Value is a primitive number that fits into an integer. */
  enum { TYPE_INT = 2U };

  /** Value is a function. */
  enum { TYPE_FUNCTION = 3U };

  /** Value is |null|. */
  enum { TYPE_NULL = 4U };

  /** Value is an object. */
  enum { TYPE_OBJECT = 5U };

  /** Value is a primitive string. */
  enum { TYPE_STRING = 6U };

  /** Value is void. */
  enum { TYPE_VOID = 7U };

  /**
     * One of the TYPE_* values above.
     */
  /* readonly attribute unsigned long jsType; */
  nsresult GetJsType(PRUint32 *aJsType);

  /**
     * Prototype value if this value represents an object, null if the value is
     * not an object or the object has no prototype.
     */
  /* readonly attribute jsdIValue jsPrototype; */
  nsresult GetJsPrototype(jsdIValue  *aJsPrototype);

  /**
     * Parent value if this value represents an object, null if the value is not
     * an object or the object has no parent.
     */
  /* readonly attribute jsdIValue jsParent; */
  nsresult GetJsParent(jsdIValue  *aJsParent);

  /**
     * Class name if this value represents an object.  Empty string if the value
     * is not an object.
     */
  /* readonly attribute string jsClassName; */
  nsresult GetJsClassName(char * *aJsClassName);

  /**
     * Constructor name if this value represents an object.  Empty string if the
     * value is not an object.
     */
  /* readonly attribute jsdIValue jsConstructor; */
  nsresult GetJsConstructor(jsdIValue  *aJsConstructor);

  /**
     * Function name if this value represents a function.  Empty string if the
     * value is not a function.
     */
  /* readonly attribute string jsFunctionName; */
  nsresult GetJsFunctionName(char * *aJsFunctionName);

  /**
     * Value if interpreted as a boolean.  Converts if necessary.
     */
  /* readonly attribute boolean booleanValue; */
  nsresult GetBooleanValue(PRBool *aBooleanValue);

  /**
     * Value if interpreted as a double.  Converts if necessary.
     */
  /* readonly attribute double doubleValue; */
  nsresult GetDoubleValue(double *aDoubleValue);

  /**
     * Value if interpreted as an integer.  Converts if necessary.
     */
  /* readonly attribute long intValue; */
  nsresult GetIntValue(PRInt32 *aIntValue);

  /**
     * Value if interpreted as an object.
     */
  /* readonly attribute jsdIObject objectValue; */
  nsresult GetObjectValue(jsdIObject  *aObjectValue);

  /**
     * Value if interpreted as a string.  Converts if necessary.
     */
  /* readonly attribute string stringValue; */
  nsresult GetStringValue(char * *aStringValue);

  /**
     * Number of properties.  0 if the value is not an object, or the value is
     * an object but has no properties.
     */
  /* readonly attribute long propertyCount; */
  nsresult GetPropertyCount(PRInt32 *aPropertyCount);

  /**
     * Retrieves all properties if this value represents an object.  If this
     * value is not an object a 0 element array is returned.
     * @param propArray Array of jsdIProperty values for this value.
     * @param length    Size of array.
     */
  /* void getProperties ([array, size_is (length)] out jsdIProperty propArray, out unsigned long length); */
  nsresult GetProperties(jsdIProperty **propArray, PRUint32 *length);

  /**
     * Retrieves a single property from the value.  Only valid if the value
     * represents an object.
     * @param name Name of the property to retrieve.
     * @retval     jsdIProperty for the requested property name or null if no
     *             property exists for the requested name.
     */
  /* jsdIProperty getProperty (in string name); */
  nsresult GetProperty(char *name, jsdIProperty *_retval);

  /**
     * jsdIValues are wrappers around JavaScript engine structures.  Much of the
     * data is copied instead of shared.  The refresh method is used to resync
     * the jsdIValue with the underlying structure.
     */
  /* void refresh (); */
  nsresult Refresh();

  /**
     * When called from JavaScript, this method returns the JavaScript value
     * wrapped by this jsdIValue.  The calling script is free to use the result
     * as it would any other JavaScript value.
     * When called from another language this method returns an xpconnect
     * defined error code.
     */
  /* void getWrappedValue (); */
  nsresult GetWrappedValue();

}


/* starting interface:    jsdIObject */
const char[] JSDIOBJECT_IID_STR = "d500e8b8-1dd1-11b2-89a1-cdf55d91cbbd";

const nsIID JSDIOBJECT_IID= 
  {0xd500e8b8, 0x1dd1, 0x11b2, 
    [ 0x89, 0xa1, 0xcd, 0xf5, 0x5d, 0x91, 0xcb, 0xbd ]};

extern(Windows)
interface jsdIObject : nsISupports {
  static const char[] IID_STR = JSDIOBJECT_IID_STR;
  static const nsIID IID = JSDIOBJECT_IID;

  /**
 * Properties specific to values which are also objects.
 * XXX We don't add roots for these yet, so make sure you hold on to the
 * jsdIValue from whence your jsdIObject instance came for at least as long as
 * you hold the jsdIObject.
 * XXX Maybe the jsClassName, jsConstructorName, and property related attribute/
 * functions from jsdIValue should move to this interface.  We could inherit from
 * jsdIValue or use interface flattening or something.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDObject JSDObject; */
  nsresult GetJSDObject(JSDObject * *aJSDObject);

  /**
     * The URL (filename) that contains the script which caused this object
     * to be created.
     */
  /* readonly attribute string creatorURL; */
  nsresult GetCreatorURL(char * *aCreatorURL);

  /**
     * Line number in the creatorURL where this object was created.
     */
  /* readonly attribute unsigned long creatorLine; */
  nsresult GetCreatorLine(PRUint32 *aCreatorLine);

  /**
     * The URL (filename) that contains the script which defined the constructor
     * used to create this object.
     */
  /* readonly attribute string constructorURL; */
  nsresult GetConstructorURL(char * *aConstructorURL);

  /**
     * Line number in the creatorURL where this object was created.
     */
  /* readonly attribute unsigned long constructorLine; */
  nsresult GetConstructorLine(PRUint32 *aConstructorLine);

  /**
     * jsdIValue for this object.
     */
  /* readonly attribute jsdIValue value; */
  nsresult GetValue(jsdIValue  *aValue);

}


/* starting interface:    jsdIProperty */
const char[] JSDIPROPERTY_IID_STR = "b8816e56-1dd1-11b2-81dc-8ba99a833d9e";

const nsIID JSDIPROPERTY_IID= 
  {0xb8816e56, 0x1dd1, 0x11b2, 
    [ 0x81, 0xdc, 0x8b, 0xa9, 0x9a, 0x83, 0x3d, 0x9e ]};

extern(Windows)
interface jsdIProperty : jsdIEphemeral {
  static const char[] IID_STR = JSDIPROPERTY_IID_STR;
  static const nsIID IID = JSDIPROPERTY_IID;

  /**
 * Representation of a property of an object.  When an instance is invalid, all
 * method and property access will result in a NS_UNAVAILABLE error.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  nsresult GetJSDContext(JSDContext * *aJSDContext);

  /** Internal use only. */
  /* [noscript] readonly attribute JSDProperty JSDProperty; */
  nsresult GetJSDProperty(JSDProperty * *aJSDProperty);

  /**
     * FLAG_* values must be kept in sync with JSDPD_* #defines in jsdebug.h.
     */
/** visible to for/in loop */
  enum { FLAG_ENUMERATE = 1U };

  /** assignment is error */
  enum { FLAG_READONLY = 2U };

  /** property cannot be deleted */
  enum { FLAG_PERMANENT = 4U };

  /** property has an alias id */
  enum { FLAG_ALIAS = 8U };

  /** argument to function */
  enum { FLAG_ARGUMENT = 16U };

  /** local variable in function */
  enum { FLAG_VARIABLE = 32U };

  /** exception occurred looking up property, value is exception */
  enum { FLAG_EXCEPTION = 64U };

  /** native getter returned JS_FALSE without throwing an exception */
  enum { FLAG_ERROR = 128U };

  /** found via explicit lookup (property defined elsewhere.) */
  enum { FLAG_HINTED = 2048U };

  /** FLAG_* values OR'd together, representing the flags for this property. */
  /* readonly attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);

  /** jsdIValue representing the alias for this property. */
  /* readonly attribute jsdIValue alias; */
  nsresult GetAlias(jsdIValue  *aAlias);

  /** name for this property. */
  /* readonly attribute jsdIValue name; */
  nsresult GetName(jsdIValue  *aName);

  /** value of this property. */
  /* readonly attribute jsdIValue value; */
  nsresult GetValue(jsdIValue  *aValue);

  /** slot number if this property is a local variable or parameter. */
  /* readonly attribute unsigned long varArgSlot; */
  nsresult GetVarArgSlot(PRUint32 *aVarArgSlot);

}

