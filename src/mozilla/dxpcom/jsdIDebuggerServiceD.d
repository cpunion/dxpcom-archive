/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM jsdIDebuggerService.idl
 */

module mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.jsdIDebuggerService;


public import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;

public import mozilla.xpcom.jsdIDebuggerService;

import mozilla.dxpcom.jsdIDebuggerServiceD;


/* starting wrapper class:    jsdIDebuggerService */
class jsdIDebuggerServiceD : public nsISupportsD {

  static const nsIID IID = JSDIDEBUGGERSERVICE_IID;


  alias jsdIDebuggerService InnerType;

  this(jsdIDebuggerService intr){
    super(intr);
    this.inner = intr;
  }

  jsdIDebuggerService opCast() {
    return inner;
  }

  void opAssign(jsdIDebuggerService value) {
    inner = value;
  }

  /**
 * Debugger service.  It's not a good idea to have more than one active client of
 * the debugger service.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Called when an error or warning occurs.
     */
  /* attribute jsdIErrorHook errorHook; */
  jsdIErrorHookD  ErrorHook(){
    jsdIErrorHook value;
    nsresult __result = inner.GetErrorHook(&value);
    CheckException(__result);
    return new jsdIErrorHookD(value);
  }
  void ErrorHook(jsdIErrorHookD  aErrorHook){
    jsdIErrorHook value;
    nsresult __result = inner.SetErrorHook(value);
    CheckException(__result);
  }

  /**
     * Called when a jsdIScript is created or destroyed.
     */
  /* attribute jsdIScriptHook scriptHook; */
  jsdIScriptHookD  ScriptHook(){
    jsdIScriptHook value;
    nsresult __result = inner.GetScriptHook(&value);
    CheckException(__result);
    return new jsdIScriptHookD(value);
  }
  void ScriptHook(jsdIScriptHookD  aScriptHook){
    jsdIScriptHook value;
    nsresult __result = inner.SetScriptHook(value);
    CheckException(__result);
  }

  /**
     * Called when the engine encounters a breakpoint.
     */
  /* attribute jsdIExecutionHook breakpointHook; */
  jsdIExecutionHookD  BreakpointHook(){
    jsdIExecutionHook value;
    nsresult __result = inner.GetBreakpointHook(&value);
    CheckException(__result);
    return new jsdIExecutionHookD(value);
  }
  void BreakpointHook(jsdIExecutionHookD  aBreakpointHook){
    jsdIExecutionHook value;
    nsresult __result = inner.SetBreakpointHook(value);
    CheckException(__result);
  }

  /**
     * Called when the engine encounters the debugger keyword.
     */
  /* attribute jsdIExecutionHook debuggerHook; */
  jsdIExecutionHookD  DebuggerHook(){
    jsdIExecutionHook value;
    nsresult __result = inner.GetDebuggerHook(&value);
    CheckException(__result);
    return new jsdIExecutionHookD(value);
  }
  void DebuggerHook(jsdIExecutionHookD  aDebuggerHook){
    jsdIExecutionHook value;
    nsresult __result = inner.SetDebuggerHook(value);
    CheckException(__result);
  }

  /**
     * Called when the errorHook returns false.
     */
  /* attribute jsdIExecutionHook debugHook; */
  jsdIExecutionHookD  DebugHook(){
    jsdIExecutionHook value;
    nsresult __result = inner.GetDebugHook(&value);
    CheckException(__result);
    return new jsdIExecutionHookD(value);
  }
  void DebugHook(jsdIExecutionHookD  aDebugHook){
    jsdIExecutionHook value;
    nsresult __result = inner.SetDebugHook(value);
    CheckException(__result);
  }

  /**
     * Called before the next PC is executed.
     */
  /* attribute jsdIExecutionHook interruptHook; */
  jsdIExecutionHookD  InterruptHook(){
    jsdIExecutionHook value;
    nsresult __result = inner.GetInterruptHook(&value);
    CheckException(__result);
    return new jsdIExecutionHookD(value);
  }
  void InterruptHook(jsdIExecutionHookD  aInterruptHook){
    jsdIExecutionHook value;
    nsresult __result = inner.SetInterruptHook(value);
    CheckException(__result);
  }

  /**
     * Called when an exception is thrown (even if it will be caught.)
     */
  /* attribute jsdIExecutionHook throwHook; */
  jsdIExecutionHookD  ThrowHook(){
    jsdIExecutionHook value;
    nsresult __result = inner.GetThrowHook(&value);
    CheckException(__result);
    return new jsdIExecutionHookD(value);
  }
  void ThrowHook(jsdIExecutionHookD  aThrowHook){
    jsdIExecutionHook value;
    nsresult __result = inner.SetThrowHook(value);
    CheckException(__result);
  }

  /**
     * Called before and after a toplevel script is evaluated.
     */
  /* attribute jsdICallHook topLevelHook; */
  jsdICallHookD  TopLevelHook(){
    jsdICallHook value;
    nsresult __result = inner.GetTopLevelHook(&value);
    CheckException(__result);
    return new jsdICallHookD(value);
  }
  void TopLevelHook(jsdICallHookD  aTopLevelHook){
    jsdICallHook value;
    nsresult __result = inner.SetTopLevelHook(value);
    CheckException(__result);
  }

  /**
     * Called before and after a function is called.
     */
  /* attribute jsdICallHook functionHook; */
  jsdICallHookD  FunctionHook(){
    jsdICallHook value;
    nsresult __result = inner.GetFunctionHook(&value);
    CheckException(__result);
    return new jsdICallHookD(value);
  }
  void FunctionHook(jsdICallHookD  aFunctionHook){
    jsdICallHook value;
    nsresult __result = inner.SetFunctionHook(value);
    CheckException(__result);
  }

  /**
     * VERSION_* values must be kept in sync with the JSVersion enumeration in
     * jspubtd.h.
     */
/**
     * Possible values for jsdIScript::version and jsdIContext::version.
     */
  enum { VERSION_1_0 = 100 }

  enum { VERSION_1_1 = 110 }

  enum { VERSION_1_2 = 120 }

  enum { VERSION_1_3 = 130 }

  enum { VERSION_1_4 = 140 }

  enum { VERSION_1_5 = 150 }

  enum { VERSION_DEFAULT = 0 }

  enum { VERSION_UNKNOWN = -1 }

  /**
     * These flags need to be kept in sync with the context flags defined in
     * jsdebug.h
     */
/**
     * Link native frames in call stacks.
     */
  enum { ENABLE_NATIVE_FRAMES = 1U }

  /**
     * Normally, if a script has a 0 in JSD_SCRIPT_PROFILE_BIT it is included in
     * profile data, otherwise it is not profiled.  Setting the
     * PROFILE_WHEN_SET flag reverses this convention.
     */
  enum { PROFILE_WHEN_SET = 2U }

  /**
     * Normally, when the script in the top frame of a thread state has a 1 in
     * JSD_SCRIPT_DEBUG_BIT, the execution hook is ignored.  Setting the
     * DEBUG_WHEN_SET flag reverses this convention.
     */
  enum { DEBUG_WHEN_SET = 4U }

  /**
     * When this flag is set the internal call hook will collect profile data.
     */
  enum { COLLECT_PROFILE_DATA = 8U }

  /**
     * When this flag is set, stack frames that are disabled for debugging
     * will not appear in the call stack chain.
     */
  enum { HIDE_DISABLED_FRAMES = 16U }

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
  enum { MASK_TOP_FRAME_ONLY = 32U }

  /**
     * When this flag is set, object creation will not be tracked.  This will
     * reduce the performance price you pay by enabling the debugger.
     */
  enum { DISABLE_OBJECT_TRACE = 64U }

  /**
     * Debugger service flags.
     */
  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /**
     * Major version number of implementation.
     */
  /* readonly attribute unsigned long implementationMajor; */
  PRUint32 ImplementationMajor(){
    PRUint32 value;
    nsresult __result = inner.GetImplementationMajor(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Minor version number of implementation.
     */
  /* readonly attribute unsigned long implementationMinor; */
  PRUint32 ImplementationMinor(){
    PRUint32 value;
    nsresult __result = inner.GetImplementationMinor(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Free form string identifier for implementation.
     */
  /* readonly attribute string implementationString; */
  char* ImplementationString(){
    char* value;
    nsresult __result = inner.GetImplementationString(&value);
    CheckException(__result);
    return value;
  }

  /**
     * |true| if the debugger should register an app-start observer in order
     * to begin collecting debug information when mozilla is launched.
     */
  /* attribute boolean initAtStartup; */
  PRBool InitAtStartup(){
    PRBool value;
    nsresult __result = inner.GetInitAtStartup(&value);
    CheckException(__result);
    return value;
  }
  void InitAtStartup(PRBool aInitAtStartup){
    nsresult __result = inner.SetInitAtStartup(aInitAtStartup);
    CheckException(__result);
  }

  /**
     * |true| if the debugger service has been turned on.  This does not
     * necessarily mean another app is actively using the service, as the 
     * autostart pref may have turned the service on.
     */
  /* readonly attribute boolean isOn; */
  PRBool IsOn(){
    PRBool value;
    nsresult __result = inner.GetIsOn(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Turn on the debugger.  This function should only be called from JavaScript
     * code.  The debugger will be enabled on the runtime the call is made on,
     * as determined by nsIXPCNativeCallContext.
     */
  /* void on (); */
  void On(){
    nsresult __result = inner.On();
    CheckException(__result);
  }

  /**
     * Turn on the debugger for a given runtime.
     *
     * @param rt The runtime you want to debug.  You cannot turn the debugger
     *           on for multiple runtimes.
     */
  /* [noscript] void onForRuntime (in JSRuntime rt); */
  void OnForRuntime(JSRuntime * rt){
    nsresult __result = inner.OnForRuntime(rt);
    CheckException(__result);
  }

  /**
     * Turn the debugger off.  This will invalidate all of your jsdIEphemeral
     * derived objects, and clear all of your breakpoints.  In theory you
     * should be able to turn the debugger back on at some later time without
     * any problems.
     */
  /* void off (); */
  void Off(){
    nsresult __result = inner.Off();
    CheckException(__result);
  }

  /**
     * Peek at the current pause depth of the debugger.
     *
     * @return depth Number of pause() calls still waiting to be unPause()d.
     */
  /* readonly attribute unsigned long pauseDepth; */
  PRUint32 PauseDepth(){
    PRUint32 value;
    nsresult __result = inner.GetPauseDepth(&value);
    CheckException(__result);
    return value;
  }

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
  PRUint32 Pause(){
    PRUint32 _retval;
    nsresult __result = inner.Pause(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Undo a pause.
     *
     * @return depth The number of remaining pending pause calls.
     */
  /* unsigned long unPause (); */
  PRUint32 UnPause(){
    PRUint32 _retval;
    nsresult __result = inner.UnPause(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Force the engine to perform garbage collection.
     */
  /* void GC (); */
  void GC(){
    nsresult __result = inner.GC();
    CheckException(__result);
  }

  /**
     * Clear profile data for all scripts.
     */
  /* void clearProfileData (); */
  void ClearProfileData(){
    nsresult __result = inner.ClearProfileData();
    CheckException(__result);
  }

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
  void InsertFilter(jsdIFilterD filter, jsdIFilterD after){
    nsresult __result = inner.InsertFilter(filter ? cast(jsdIFilter)filter : null, after ? cast(jsdIFilter)after : null);
    CheckException(__result);
  }

  /**
     * Same as insertFilter, except always add to the end of the list.
     */
  /* void appendFilter (in jsdIFilter filter); */
  void AppendFilter(jsdIFilterD filter){
    nsresult __result = inner.AppendFilter(filter ? cast(jsdIFilter)filter : null);
    CheckException(__result);
  }

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
  void RemoveFilter(jsdIFilterD filter){
    nsresult __result = inner.RemoveFilter(filter ? cast(jsdIFilter)filter : null);
    CheckException(__result);
  }

  /**
     * Swap position of two filters.
     * 
     * If |filter_a| is not present, this method throws NS_ERROR_INVALID_ARG.
     * If |filter_b| is not present, filter_a is replaced by filter_b.
     * If |filter_a| == |filter_b|, then filter is refreshed.
     */
  /* void swapFilters (in jsdIFilter filter_a, in jsdIFilter filter_b); */
  void SwapFilters(jsdIFilterD filter_a, jsdIFilterD filter_b){
    nsresult __result = inner.SwapFilters(filter_a ? cast(jsdIFilter)filter_a : null, filter_b ? cast(jsdIFilter)filter_b : null);
    CheckException(__result);
  }

  /**
     * Enumerate registered filters.  This routine refreshes each filter before
     * passing them on to the enumeration function.  Calling this with a null
     * |enumerator| is equivalent to jsdIService::refreshFilters.
     *
     * @param enumerator jsdIFilterEnumerator instance to be called back for the
     *                   enumeration.
     */
  /* void enumerateFilters (in jsdIFilterEnumerator enumerator); */
  void EnumerateFilters(jsdIFilterEnumeratorD enumerator){
    nsresult __result = inner.EnumerateFilters(enumerator ? cast(jsdIFilterEnumerator)enumerator : null);
    CheckException(__result);
  }

  /**
     * Force the debugger to resync its internal filter cache with the
     * actual values in the jsdIFilter objects.  To refresh a single filter
     * use jsdIService::swapFilters.  This method is equivalent to
     * jsdIService::enumerateFilters with a null enumerator.
     */
  /* void refreshFilters (); */
  void RefreshFilters(){
    nsresult __result = inner.RefreshFilters();
    CheckException(__result);
  }

  /**
     * Clear the list of filters.
     */
  /* void clearFilters (); */
  void ClearFilters(){
    nsresult __result = inner.ClearFilters();
    CheckException(__result);
  }

  /**
     * Enumerate all known contexts.
     */
  /* void enumerateContexts (in jsdIContextEnumerator enumerator); */
  void EnumerateContexts(jsdIContextEnumeratorD enumerator){
    nsresult __result = inner.EnumerateContexts(enumerator ? cast(jsdIContextEnumerator)enumerator : null);
    CheckException(__result);
  }

  /**
     * Enumerate all scripts the debugger knows about.  Any scripts created
     * before you turned the debugger on, or after turning the debugger off
     * will not be available unless the autostart perf is set.
     *
     * @param enumerator jsdIScriptEnumerator instance to be called back for
     *                   the enumeration.
     */
  /* void enumerateScripts (in jsdIScriptEnumerator enumerator); */
  void EnumerateScripts(jsdIScriptEnumeratorD enumerator){
    nsresult __result = inner.EnumerateScripts(enumerator ? cast(jsdIScriptEnumerator)enumerator : null);
    CheckException(__result);
  }

  /**
     * Clear all breakpoints in all scripts.
     */
  /* void clearAllBreakpoints (); */
  void ClearAllBreakpoints(){
    nsresult __result = inner.ClearAllBreakpoints();
    CheckException(__result);
  }

  /**
     * When called from JavaScript, this method returns the jsdIValue wrapper
     * for the given value.  If a wrapper does not exist one will be created.
     * When called from another language this method returns an xpconnect
     * defined error code.
     */
  /* jsdIValue wrapValue (); */
  jsdIValueD  WrapValue(){
    jsdIValue _retval;
    nsresult __result = inner.WrapValue(&_retval);
    CheckException(__result);
    return new jsdIValueD(_retval);
  }

  /**
     * Push a new network queue, and enter a new UI event loop.
     * @param callback jsdINestCallback instance to be called back after the
     *                 network queue has been pushed, but before the
     *                 UI loop starts.
     * @return depth returns the current number of times the event loop has been
     *               nested.  your code can use it for sanity checks.
     */
  /* unsigned long enterNestedEventLoop (in jsdINestCallback callback); */
  PRUint32 EnterNestedEventLoop(jsdINestCallbackD callback){
    PRUint32 _retval;
    nsresult __result = inner.EnterNestedEventLoop(callback ? cast(jsdINestCallback)callback : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Exit the current nested event loop after the current iteration completes,
     * and pop the network event queue.
     *
     * @return depth returns the current number of times the event loop has been
     *               nested.  your code can use it for sanity checks.
     */
  /* unsigned long exitNestedEventLoop (); */
  PRUint32 ExitNestedEventLoop(){
    PRUint32 _retval;
    nsresult __result = inner.ExitNestedEventLoop(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  jsdIDebuggerService inner;

}


/* starting wrapper class:    jsdIFilter */
class jsdIFilterD : public nsISupportsD {

  static const nsIID IID = JSDIFILTER_IID;


  alias jsdIFilter InnerType;

  this(jsdIFilter intr){
    super(intr);
    this.inner = intr;
  }

  jsdIFilter opCast() {
    return inner;
  }

  void opAssign(jsdIFilter value) {
    inner = value;
  }

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
  enum { FLAG_RESERVED_MASK = 255U }

  /**
     * Filters without this flag set are ignored.
     */
  enum { FLAG_ENABLED = 1U }

  /**
     * Filters with this flag set are "pass" filters, they allow matching hooks
     * to continue.  Filters without this flag block matching hooks.
     */
  enum { FLAG_PASS = 2U }

  /**
     * FLAG_* values from above, OR'd together.
     */
  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /**
     * An nsISupports version of the global object to be filtered.  A null glob
     * matches all hooks.  This attribute must be QI'able to the
     * (non-scriptable) nsIScriptGlobalObject interface.
     *
     * The jsdIService caches this value internally, to if it changes you must
     * swap the filter with itself using jsdIService::swapFilters.
     */
  /* attribute nsISupports globalObject; */
  nsISupportsD  GlobalObject(){
    nsISupports value;
    nsresult __result = inner.GetGlobalObject(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void GlobalObject(nsISupportsD  aGlobalObject){
    nsISupports value;
    nsresult __result = inner.SetGlobalObject(value);
    CheckException(__result);
  }

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
  char* UrlPattern(){
    char* value;
    nsresult __result = inner.GetUrlPattern(&value);
    CheckException(__result);
    return value;
  }
  void UrlPattern(char* aUrlPattern){
    nsresult __result = inner.SetUrlPattern(aUrlPattern);
    CheckException(__result);
  }

  /**
     * Line number for the start of this filter.  Line numbers are one based.
     * Assigning a 0 to this attribute will tell the debugger to ignore the
     * entire file.
     */
  /* attribute unsigned long startLine; */
  PRUint32 StartLine(){
    PRUint32 value;
    nsresult __result = inner.GetStartLine(&value);
    CheckException(__result);
    return value;
  }
  void StartLine(PRUint32 aStartLine){
    nsresult __result = inner.SetStartLine(aStartLine);
    CheckException(__result);
  }

  /**
     * Line number for the end of this filter.  Line numbers are one based.
     * Assigning a 0 to this attribute will tell the debugger to ignore from
     * |startLine| to the end of the file.
     */
  /* attribute unsigned long endLine; */
  PRUint32 EndLine(){
    PRUint32 value;
    nsresult __result = inner.GetEndLine(&value);
    CheckException(__result);
    return value;
  }
  void EndLine(PRUint32 aEndLine){
    nsresult __result = inner.SetEndLine(aEndLine);
    CheckException(__result);
  }

private:
  jsdIFilter inner;

}


/* starting wrapper class:    jsdINestCallback */
class jsdINestCallbackD : public nsISupportsD {

  static const nsIID IID = JSDINESTCALLBACK_IID;


  alias jsdINestCallback InnerType;

  this(jsdINestCallback intr){
    super(intr);
    this.inner = intr;
  }

  jsdINestCallback opCast() {
    return inner;
  }

  void opAssign(jsdINestCallback value) {
    inner = value;
  }

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enterNestedEventLoop.
 */
/**
     * This method will be called after pre-nesting work has completed, such
     * as pushing the js context and network event queue, but before the new
     * event loop starts.
     */
  /* void onNest (); */
  void OnNest(){
    nsresult __result = inner.OnNest();
    CheckException(__result);
  }

private:
  jsdINestCallback inner;

}


/* starting wrapper class:    jsdIFilterEnumerator */
class jsdIFilterEnumeratorD : public nsISupportsD {

  static const nsIID IID = JSDIFILTERENUMERATOR_IID;


  alias jsdIFilterEnumerator InnerType;

  this(jsdIFilterEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  jsdIFilterEnumerator opCast() {
    return inner;
  }

  void opAssign(jsdIFilterEnumerator value) {
    inner = value;
  }

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateFilters.
 */
/**
     * The enumerateFilter method will be called once for every filter the
     * debugger knows about.
     */
  /* void enumerateFilter (in jsdIFilter filter); */
  void EnumerateFilter(jsdIFilterD filter){
    nsresult __result = inner.EnumerateFilter(filter ? cast(jsdIFilter)filter : null);
    CheckException(__result);
  }

private:
  jsdIFilterEnumerator inner;

}


/* starting wrapper class:    jsdIScriptEnumerator */
class jsdIScriptEnumeratorD : public nsISupportsD {

  static const nsIID IID = JSDISCRIPTENUMERATOR_IID;


  alias jsdIScriptEnumerator InnerType;

  this(jsdIScriptEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  jsdIScriptEnumerator opCast() {
    return inner;
  }

  void opAssign(jsdIScriptEnumerator value) {
    inner = value;
  }

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateScripts.
 */
/**
     * The enumerateScript method will be called once for every script the
     * debugger knows about.
     */
  /* void enumerateScript (in jsdIScript script); */
  void EnumerateScript(jsdIScriptD script){
    nsresult __result = inner.EnumerateScript(script ? cast(jsdIScript)script : null);
    CheckException(__result);
  }

private:
  jsdIScriptEnumerator inner;

}


/* starting wrapper class:    jsdIContextEnumerator */
class jsdIContextEnumeratorD : public nsISupportsD {

  static const nsIID IID = JSDICONTEXTENUMERATOR_IID;


  alias jsdIContextEnumerator InnerType;

  this(jsdIContextEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  jsdIContextEnumerator opCast() {
    return inner;
  }

  void opAssign(jsdIContextEnumerator value) {
    inner = value;
  }

  /**
 * Pass an instance of one of these to jsdIDebuggerService::enumerateContexts.
 */
/**
     * The enumerateContext method will be called once for every context
     * currently in use.
     */
  /* void enumerateContext (in jsdIContext executionContext); */
  void EnumerateContext(jsdIContextD executionContext){
    nsresult __result = inner.EnumerateContext(executionContext ? cast(jsdIContext)executionContext : null);
    CheckException(__result);
  }

private:
  jsdIContextEnumerator inner;

}


/* starting wrapper class:    jsdIScriptHook */
class jsdIScriptHookD : public nsISupportsD {

  static const nsIID IID = JSDISCRIPTHOOK_IID;


  alias jsdIScriptHook InnerType;

  this(jsdIScriptHook intr){
    super(intr);
    this.inner = intr;
  }

  jsdIScriptHook opCast() {
    return inner;
  }

  void opAssign(jsdIScriptHook value) {
    inner = value;
  }

  /**
 * Set jsdIDebuggerService::scriptHook to an instance of one of these.
 */
/**
     * Called when scripts are created.
     */
  /* void onScriptCreated (in jsdIScript script); */
  void OnScriptCreated(jsdIScriptD script){
    nsresult __result = inner.OnScriptCreated(script ? cast(jsdIScript)script : null);
    CheckException(__result);
  }

  /**
     * Called when the JavaScript engine destroys a script.  The jsdIScript
     * object passed in will already be invalidated.
     */
  /* void onScriptDestroyed (in jsdIScript script); */
  void OnScriptDestroyed(jsdIScriptD script){
    nsresult __result = inner.OnScriptDestroyed(script ? cast(jsdIScript)script : null);
    CheckException(__result);
  }

private:
  jsdIScriptHook inner;

}


/* starting wrapper class:    jsdICallHook */
class jsdICallHookD : public nsISupportsD {

  static const nsIID IID = JSDICALLHOOK_IID;


  alias jsdICallHook InnerType;

  this(jsdICallHook intr){
    super(intr);
    this.inner = intr;
  }

  jsdICallHook opCast() {
    return inner;
  }

  void opAssign(jsdICallHook value) {
    inner = value;
  }

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
  enum { TYPE_TOPLEVEL_START = 0U }

  /**
     * Toplevel script has completed.
     */
  enum { TYPE_TOPLEVEL_END = 1U }

  /**
     * Function is being called.
     */
  enum { TYPE_FUNCTION_CALL = 2U }

  /**
     * Function is returning.
     */
  enum { TYPE_FUNCTION_RETURN = 3U }

  /**
     * Called before the JavaScript engine executes a top level script or calls
     * a function.
     */
  /* void onCall (in jsdIStackFrame frame, in unsigned long type); */
  void OnCall(jsdIStackFrameD frame, PRUint32 type){
    nsresult __result = inner.OnCall(frame ? cast(jsdIStackFrame)frame : null, type);
    CheckException(__result);
  }

private:
  jsdICallHook inner;

}


/* starting wrapper class:    jsdIErrorHook */
class jsdIErrorHookD : public nsISupportsD {

  static const nsIID IID = JSDIERRORHOOK_IID;


  alias jsdIErrorHook InnerType;

  this(jsdIErrorHook intr){
    super(intr);
    this.inner = intr;
  }

  jsdIErrorHook opCast() {
    return inner;
  }

  void opAssign(jsdIErrorHook value) {
    inner = value;
  }

  /**
     * REPORT_* values must be kept in sync with JSREPORT_* #defines in
     * jsapi.h
     */
/**
     * Report is an error.
     */
  enum { REPORT_ERROR = 0U }

  /**
     * Report is only a warning.
     */
  enum { REPORT_WARNING = 1U }

  /**
     * Report represents an uncaught exception.
     */
  enum { REPORT_EXCEPTION = 2U }

  /**
     * Report is due to strict mode.
     */
  enum { REPORT_STRICT = 4U }

  /**
     * Called when the JavaScript engine encounters an error.  Return |true|
     * to pass the error along, |false| to invoke the debugHook.
     */
  /* boolean onError (in string message, in string fileName, in unsigned long line, in unsigned long pos, in unsigned long flags, in unsigned long errnum, in jsdIValue exc); */
  PRBool OnError(char*message, char*fileName, PRUint32 line, PRUint32 pos, PRUint32 flags, PRUint32 errnum, jsdIValueD exc){
    PRBool _retval;
    nsresult __result = inner.OnError(message, fileName, line, pos, flags, errnum, exc ? cast(jsdIValue)exc : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  jsdIErrorHook inner;

}


/* starting wrapper class:    jsdIExecutionHook */
class jsdIExecutionHookD : public nsISupportsD {

  static const nsIID IID = JSDIEXECUTIONHOOK_IID;


  alias jsdIExecutionHook InnerType;

  this(jsdIExecutionHook intr){
    super(intr);
    this.inner = intr;
  }

  jsdIExecutionHook opCast() {
    return inner;
  }

  void opAssign(jsdIExecutionHook value) {
    inner = value;
  }

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
  enum { TYPE_INTERRUPTED = 0U }

  /**
     * Execution stopped by a trap instruction (i.e. breakoint.)
     */
  enum { TYPE_BREAKPOINT = 1U }

  /**
     * Error handler returned an "invoke debugger" value.
     */
  enum { TYPE_DEBUG_REQUESTED = 2U }

  /**
     * Debugger keyword encountered.
     */
  enum { TYPE_DEBUGGER_KEYWORD = 3U }

  /**
     * Exception was thrown.
     */
  enum { TYPE_THROW = 4U }

  /**
     * RETURN_* values must be kept in sync with JSD_HOOK_RETURN_* #defines in
     * jsdebug.h.
     */
/**
     * Indicates unrecoverable error processing the hook.  This will cause
     * the script being executed to be aborted without raising a JavaScript
     * exception.
     */
  enum { RETURN_HOOK_ERROR = 0U }

  /**
     * Continue processing normally.  This is the "do nothing special" return
     * value for all hook types *except* TYPE_THROW.  Returning RETURN_CONTINUE
     * from TYPE_THROW cause the exception to be ignored.  Return
     * RETURN_CONTINUE_THROW to continue exception processing from TYPE_THROW
     * hooks.
     */
  enum { RETURN_CONTINUE = 1U }

  /**
     * Same effect as RETURN_HOOK_ERROR.
     */
  enum { RETURN_ABORT = 2U }

  /**
     * Return the value of the |val| parameter.
     */
  enum { RETURN_RET_WITH_VAL = 3U }

  /**
     * Throw the value of the |val| parameter.
     */
  enum { RETURN_THROW_WITH_VAL = 4U }

  /**
     * Continue the current throw.
     */
  enum { RETURN_CONTINUE_THROW = 5U }

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
  PRUint32 OnExecute(jsdIStackFrameD frame, PRUint32 type, out jsdIValueD val){
    jsdIValue _val;
    PRUint32 _retval;
    nsresult __result = inner.OnExecute(frame ? cast(jsdIStackFrame)frame : null, type, &_val, &_retval);
    CheckException(__result);
    val = _val ? new jsdIValueD(_val) : null;
    return _retval;
  }

private:
  jsdIExecutionHook inner;

}


/* starting wrapper class:    jsdIEphemeral */
class jsdIEphemeralD : public nsISupportsD {

  static const nsIID IID = JSDIEPHEMERAL_IID;


  alias jsdIEphemeral InnerType;

  this(jsdIEphemeral intr){
    super(intr);
    this.inner = intr;
  }

  jsdIEphemeral opCast() {
    return inner;
  }

  void opAssign(jsdIEphemeral value) {
    inner = value;
  }

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
  PRBool IsValid(){
    PRBool value;
    nsresult __result = inner.GetIsValid(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Mark this instance as invalid.
     */
  /* [noscript] void invalidate (); */
  void Invalidate(){
    nsresult __result = inner.Invalidate();
    CheckException(__result);
  }

private:
  jsdIEphemeral inner;

}


/* starting wrapper class:    jsdIContext */
class jsdIContextD : public jsdIEphemeralD {

  static const nsIID IID = JSDICONTEXT_IID;


  alias jsdIContext InnerType;

  this(jsdIContext intr){
    super(intr);
    this.inner = intr;
  }

  jsdIContext opCast() {
    return inner;
  }

  void opAssign(jsdIContext value) {
    inner = value;
  }

  /**
 * Context object.  Only context's which are also nsISupports objects can be
 * reflected by this interface.
 */
  /* [noscript] readonly attribute JSContext JSContext; */
  JSContext * JSContext_(){
    JSContext * value;
    nsresult __result = inner.GetJSContext(&value);
    CheckException(__result);
    return value;
  }

  /**
     * OPT_* values must be kept in sync with JSOPTION_* #defines in jsapi.h.
     */
/**
     * Strict mode is on.
     */
  enum { OPT_STRICT = 1 }

  /**
     * Warnings reported as errors.
     */
  enum { OPT_WERR = 2 }

  /**
     * Makes eval() use the last object on its 'obj' param's scope chain as the
     * ECMA 'variables object'.
     */
  enum { OPT_VAROBJFIX = 4 }

  /**
     * Private data for this object is an nsISupports object.  Attempting to
     * alter this bit will result in an NS_ERROR_ILLEGAL_VALUE.
     */
  enum { OPT_ISUPPORTS = 8 }

  /**
     * OPT_* values above, OR'd together.
     */
  /* attribute unsigned long options; */
  PRUint32 Options(){
    PRUint32 value;
    nsresult __result = inner.GetOptions(&value);
    CheckException(__result);
    return value;
  }
  void Options(PRUint32 aOptions){
    nsresult __result = inner.SetOptions(aOptions);
    CheckException(__result);
  }

  /**
     * Last version set on this context.
     * Scripts typically select this with the "language" attribute.
     * See the VERSION_* consts on jsdIDebuggerService.
     */
  /* attribute long version; */
  PRInt32 Version(){
    PRInt32 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }
  void Version(PRInt32 aVersion){
    nsresult __result = inner.SetVersion(aVersion);
    CheckException(__result);
  }

  /**
     * Unique tag among all valid jsdIContext objects, useful as a hash key.
     */
  /* readonly attribute unsigned long tag; */
  PRUint32 Tag(){
    PRUint32 value;
    nsresult __result = inner.GetTag(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Private data for this context, if it is an nsISupports, |null| otherwise.
     */
  /* readonly attribute nsISupports privateData; */
  nsISupportsD  PrivateData(){
    nsISupports value;
    nsresult __result = inner.GetPrivateData(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /**
     * Retrieve the underlying context wrapped by this jsdIContext.
     */
  /* readonly attribute nsISupports wrappedContext; */
  nsISupportsD  WrappedContext(){
    nsISupports value;
    nsresult __result = inner.GetWrappedContext(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /**
     * Top of the scope chain for this context.
     */
  /* readonly attribute jsdIValue globalObject; */
  jsdIValueD  GlobalObject(){
    jsdIValue value;
    nsresult __result = inner.GetGlobalObject(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * |true| if this context should be allowed to run scripts, |false|
     * otherwise.  This attribute is only valid for contexts which implement
     * nsIScriptContext.  Setting or getting this attribute on any other
     * context will throw a NS_ERROR_NO_INTERFACE exception.
     */
  /* attribute boolean scriptsEnabled; */
  PRBool ScriptsEnabled(){
    PRBool value;
    nsresult __result = inner.GetScriptsEnabled(&value);
    CheckException(__result);
    return value;
  }
  void ScriptsEnabled(PRBool aScriptsEnabled){
    nsresult __result = inner.SetScriptsEnabled(aScriptsEnabled);
    CheckException(__result);
  }

private:
  jsdIContext inner;

}


/* starting wrapper class:    jsdIStackFrame */
class jsdIStackFrameD : public jsdIEphemeralD {

  static const nsIID IID = JSDISTACKFRAME_IID;


  alias jsdIStackFrame InnerType;

  this(jsdIStackFrame intr){
    super(intr);
    this.inner = intr;
  }

  jsdIStackFrame opCast() {
    return inner;
  }

  void opAssign(jsdIStackFrame value) {
    inner = value;
  }

  /**
 * Stack frame objects.  These are only valid inside the jsdIExecutionHook which
 * gave it to you.  After you return from that handler the bottom frame, and any
 * frame you found attached through it, are invalidated via the jsdIEphemeral
 * interface.  Once a jsdIStackFrame has been invalidated all method and
 * property accesses will throw a NS_ERROR_NOT_AVAILABLE exception.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDThreadState JSDThreadState; */
  JSDThreadState * JSDThreadState_(){
    JSDThreadState * value;
    nsresult __result = inner.GetJSDThreadState(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDStackFrameInfo JSDStackFrameInfo; */
  JSDStackFrameInfo * JSDStackFrameInfo_(){
    JSDStackFrameInfo * value;
    nsresult __result = inner.GetJSDStackFrameInfo(&value);
    CheckException(__result);
    return value;
  }

  /**
     * True if stack frame represents a native frame.
     */
  /* readonly attribute boolean isNative; */
  PRBool IsNative(){
    PRBool value;
    nsresult __result = inner.GetIsNative(&value);
    CheckException(__result);
    return value;
  }

  /**
     * True if stack frame represents a frame created as a result of a debugger
     * evaluation.
     */
  /* readonly attribute boolean isDebugger; */
  PRBool IsDebugger(){
    PRBool value;
    nsresult __result = inner.GetIsDebugger(&value);
    CheckException(__result);
    return value;
  }

  /**
     * True if stack frame is constructing a new object.
     */
  /* readonly attribute boolean isConstructing; */
  PRBool IsConstructing(){
    PRBool value;
    nsresult __result = inner.GetIsConstructing(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Link to the caller's stack frame.
     */
  /* readonly attribute jsdIStackFrame callingFrame; */
  jsdIStackFrameD  CallingFrame(){
    jsdIStackFrame value;
    nsresult __result = inner.GetCallingFrame(&value);
    CheckException(__result);
    return new jsdIStackFrameD(value);
  }

  /**
     * Executon context.
     */
  /* readonly attribute jsdIContext executionContext; */
  jsdIContextD  ExecutionContext(){
    jsdIContext value;
    nsresult __result = inner.GetExecutionContext(&value);
    CheckException(__result);
    return new jsdIContextD(value);
  }

  /**
     * Function name executing in this stack frame.
     */
  /* readonly attribute string functionName; */
  char* FunctionName(){
    char* value;
    nsresult __result = inner.GetFunctionName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Script running in this stack frame, null for native frames.
     */
  /* readonly attribute jsdIScript script; */
  jsdIScriptD  Script(){
    jsdIScript value;
    nsresult __result = inner.GetScript(&value);
    CheckException(__result);
    return new jsdIScriptD(value);
  }

  /**
     * Current program counter in this stack frame.
     */
  /* readonly attribute unsigned long pc; */
  PRUint32 Pc(){
    PRUint32 value;
    nsresult __result = inner.GetPc(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Current line number (using the script's pc to line map.)
     */
  /* readonly attribute unsigned long line; */
  PRUint32 Line(){
    PRUint32 value;
    nsresult __result = inner.GetLine(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Function object running in this stack frame.
     */
  /* readonly attribute jsdIValue callee; */
  jsdIValueD  Callee(){
    jsdIValue value;
    nsresult __result = inner.GetCallee(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Top object in the scope chain.
     */
  /* readonly attribute jsdIValue scope; */
  jsdIValueD  Scope(){
    jsdIValue value;
    nsresult __result = inner.GetScope(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * |this| object for this stack frame.
     */
  /* readonly attribute jsdIValue thisValue; */
  jsdIValueD  ThisValue(){
    jsdIValue value;
    nsresult __result = inner.GetThisValue(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Evaluate arbitrary JavaScript in this stack frame.
     * @param bytes    Script to be evaluated.
     * @param fileName Filename to compile this script under.  This is the
     *                 filename you'll see in error messages, etc.
     * @param line     Starting line number for this script.  One based.
     * @retval         Result of evaluating the script.
     */
  /* boolean eval (in AString bytes, in string fileName, in unsigned long line, out jsdIValue result); */
  PRBool Eval(wchar[] bytes, char*fileName, PRUint32 line, out jsdIValueD result){
    scope auto _bytes = new AString(bytes);
    jsdIValue _result;
    PRBool _retval;
    nsresult __result = inner.Eval(cast(nsAString*)_bytes, fileName, line, &_result, &_retval);
    CheckException(__result);
    result = _result ? new jsdIValueD(_result) : null;
    return _retval;
  }

private:
  jsdIStackFrame inner;

}


/* starting wrapper class:    jsdIScript */
class jsdIScriptD : public jsdIEphemeralD {

  static const nsIID IID = JSDISCRIPT_IID;


  alias jsdIScript InnerType;

  this(jsdIScript intr){
    super(intr);
    this.inner = intr;
  }

  jsdIScript opCast() {
    return inner;
  }

  void opAssign(jsdIScript value) {
    inner = value;
  }

  /**
 * Script object.  In JavaScript engine terms, there's a single script for each
 * function, and one for the top level script.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDScript JSDScript; */
  JSDScript * JSDScript_(){
    JSDScript * value;
    nsresult __result = inner.GetJSDScript(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Last version set on this context.
     * Scripts typically select this with the "language" attribute.
     * See the VERSION_* consts on jsdIDebuggerService.
     */
  /* readonly attribute long version; */
  PRInt32 Version(){
    PRInt32 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Tag value guaranteed unique among jsdIScript objects.  Useful as a
     * hash key in script.
     */
  /* readonly attribute unsigned long tag; */
  PRUint32 Tag(){
    PRUint32 value;
    nsresult __result = inner.GetTag(&value);
    CheckException(__result);
    return value;
  }

  /**
     * FLAG_* values need to be kept in sync with JSD_SCRIPT_* #defines in
     * jsdebug.h.
     */
/**
     * Determines whether or not to collect profile information for this
     * script.  The context flag FLAG_PROFILE_WHEN_SET decides the logic.
     */
  enum { FLAG_PROFILE = 1U }

  /**
     * Determines whether or not to ignore breakpoints, etc. in this script.
     * The context flag JSD_DEBUG_WHEN_SET decides the logic.
     */
  enum { FLAG_DEBUG = 2U }

  /**
     * FLAG_* attributes from above, OR'd together.
     */
  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /**
     * Filename given for this script when it was compiled.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute string fileName; */
  char* FileName(){
    char* value;
    nsresult __result = inner.GetFileName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Function name for this script.  "anonymous" for unnamed functions (or
     * a function actually named anonymous), empty for top level scripts.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute string functionName; */
  char* FunctionName(){
    char* value;
    nsresult __result = inner.GetFunctionName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Fetch the function object as a jsdIValue.
     */
  /* readonly attribute jsdIValue functionObject; */
  jsdIValueD  FunctionObject(){
    jsdIValue value;
    nsresult __result = inner.GetFunctionObject(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Source code for this script, without function declaration.
     */
  /* readonly attribute AString functionSource; */
  wchar[] FunctionSource(){
    scope auto value = new AString();
    nsresult __result = inner.GetFunctionSource(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Line number in source file containing the first line of this script.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute unsigned long baseLineNumber; */
  PRUint32 BaseLineNumber(){
    PRUint32 value;
    nsresult __result = inner.GetBaseLineNumber(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Total number of lines in this script.
     * This data is copied from the underlying structure when the jsdIScript
     * instance is created and is therefore available even after the script is
     * invalidated.
     */
  /* readonly attribute unsigned long lineExtent; */
  PRUint32 LineExtent(){
    PRUint32 value;
    nsresult __result = inner.GetLineExtent(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Number of times this script has been called.
     */
  /* readonly attribute unsigned long callCount; */
  PRUint32 CallCount(){
    PRUint32 value;
    nsresult __result = inner.GetCallCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Number of times this script called itself, directly or indirectly.
     */
  /* readonly attribute unsigned long maxRecurseDepth; */
  PRUint32 MaxRecurseDepth(){
    PRUint32 value;
    nsresult __result = inner.GetMaxRecurseDepth(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Shortest execution time recorded, in milliseconds.
     */
  /* readonly attribute double minExecutionTime; */
  double MinExecutionTime(){
    double value;
    nsresult __result = inner.GetMinExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Longest execution time recorded, in milliseconds.
     */
  /* readonly attribute double maxExecutionTime; */
  double MaxExecutionTime(){
    double value;
    nsresult __result = inner.GetMaxExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Total time spent in this function, in milliseconds.
     */
  /* readonly attribute double totalExecutionTime; */
  double TotalExecutionTime(){
    double value;
    nsresult __result = inner.GetTotalExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Shortest execution time recorded, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double minOwnExecutionTime; */
  double MinOwnExecutionTime(){
    double value;
    nsresult __result = inner.GetMinOwnExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Longest execution time recorded, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double maxOwnExecutionTime; */
  double MaxOwnExecutionTime(){
    double value;
    nsresult __result = inner.GetMaxOwnExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Total time spent in this function, in milliseconds, excluding time spent
     * in other called code.
     */
  /* readonly attribute double totalOwnExecutionTime; */
  double TotalOwnExecutionTime(){
    double value;
    nsresult __result = inner.GetTotalOwnExecutionTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Clear profile data for this script.
     */
  /* void clearProfileData (); */
  void ClearProfileData(){
    nsresult __result = inner.ClearProfileData();
    CheckException(__result);
  }

  enum { PCMAP_SOURCETEXT = 1U }

  enum { PCMAP_PRETTYPRINT = 2U }

  /**
     * Get the closest line number to a given PC.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* unsigned long pcToLine (in unsigned long pc, in unsigned long pcmap); */
  PRUint32 PcToLine(PRUint32 pc, PRUint32 pcmap){
    PRUint32 _retval;
    nsresult __result = inner.PcToLine(pc, pcmap, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Get the first PC associated with a line.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* unsigned long lineToPc (in unsigned long line, in unsigned long pcmap); */
  PRUint32 LineToPc(PRUint32 line, PRUint32 pcmap){
    PRUint32 _retval;
    nsresult __result = inner.LineToPc(line, pcmap, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Determine is a particular line is executable, like checking that
     * lineToPc == pcToLine, except in one call.
     * The |pcmap| argument specifies which pc to source line map to use.
     */
  /* boolean isLineExecutable (in unsigned long line, in unsigned long pcmap); */
  PRBool IsLineExecutable(PRUint32 line, PRUint32 pcmap){
    PRBool _retval;
    nsresult __result = inner.IsLineExecutable(line, pcmap, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Set a breakpoint at a PC in this script.
     */
  /* void setBreakpoint (in unsigned long pc); */
  void SetBreakpoint(PRUint32 pc){
    nsresult __result = inner.SetBreakpoint(pc);
    CheckException(__result);
  }

  /**
     * Clear a breakpoint at a PC in this script.
     */
  /* void clearBreakpoint (in unsigned long pc); */
  void ClearBreakpoint(PRUint32 pc){
    nsresult __result = inner.ClearBreakpoint(pc);
    CheckException(__result);
  }

  /**
     * Clear all breakpoints set in this script.
     */
  /* void clearAllBreakpoints (); */
  void ClearAllBreakpoints(){
    nsresult __result = inner.ClearAllBreakpoints();
    CheckException(__result);
  }

private:
  jsdIScript inner;

}


/* starting wrapper class:    jsdIValue */
class jsdIValueD : public jsdIEphemeralD {

  static const nsIID IID = JSDIVALUE_IID;


  alias jsdIValue InnerType;

  this(jsdIValue intr){
    super(intr);
    this.inner = intr;
  }

  jsdIValue opCast() {
    return inner;
  }

  void opAssign(jsdIValue value) {
    inner = value;
  }

  /**
 * Value objects.  Represents typeless JavaScript values (jsval in SpiderMonkey
 * terminology.)  These are valid until the debugger is turned off.  Holding a
 * jsdIValue adds a root for the underlying JavaScript value, so don't keep it
 * if you don't need to.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDValue JSDValue; */
  JSDValue * JSDValue_(){
    JSDValue * value;
    nsresult __result = inner.GetJSDValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * |false| unless the value is a function declared in script.
     */
  /* readonly attribute boolean isNative; */
  PRBool IsNative(){
    PRBool value;
    nsresult __result = inner.GetIsNative(&value);
    CheckException(__result);
    return value;
  }

  /**
     * |true| if the value represents a number, either double or integer.
     * |false| for all other values, including numbers assigned as strings
     * (eg. x = "1";)
     */
  /* readonly attribute boolean isNumber; */
  PRBool IsNumber(){
    PRBool value;
    nsresult __result = inner.GetIsNumber(&value);
    CheckException(__result);
    return value;
  }

  /**
     * |true| if the value represents a JavaScript primitive number or string
     */
  /* readonly attribute boolean isPrimitive; */
  PRBool IsPrimitive(){
    PRBool value;
    nsresult __result = inner.GetIsPrimitive(&value);
    CheckException(__result);
    return value;
  }

  /** Value is either |true| or |false|. */
  enum { TYPE_BOOLEAN = 0U }

  /** Value is a primitive number that is too large to fit in an integer. */
  enum { TYPE_DOUBLE = 1U }

  /** Value is a primitive number that fits into an integer. */
  enum { TYPE_INT = 2U }

  /** Value is a function. */
  enum { TYPE_FUNCTION = 3U }

  /** Value is |null|. */
  enum { TYPE_NULL = 4U }

  /** Value is an object. */
  enum { TYPE_OBJECT = 5U }

  /** Value is a primitive string. */
  enum { TYPE_STRING = 6U }

  /** Value is void. */
  enum { TYPE_VOID = 7U }

  /**
     * One of the TYPE_* values above.
     */
  /* readonly attribute unsigned long jsType; */
  PRUint32 JsType(){
    PRUint32 value;
    nsresult __result = inner.GetJsType(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Prototype value if this value represents an object, null if the value is
     * not an object or the object has no prototype.
     */
  /* readonly attribute jsdIValue jsPrototype; */
  jsdIValueD  JsPrototype(){
    jsdIValue value;
    nsresult __result = inner.GetJsPrototype(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Parent value if this value represents an object, null if the value is not
     * an object or the object has no parent.
     */
  /* readonly attribute jsdIValue jsParent; */
  jsdIValueD  JsParent(){
    jsdIValue value;
    nsresult __result = inner.GetJsParent(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Class name if this value represents an object.  Empty string if the value
     * is not an object.
     */
  /* readonly attribute string jsClassName; */
  char* JsClassName(){
    char* value;
    nsresult __result = inner.GetJsClassName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Constructor name if this value represents an object.  Empty string if the
     * value is not an object.
     */
  /* readonly attribute jsdIValue jsConstructor; */
  jsdIValueD  JsConstructor(){
    jsdIValue value;
    nsresult __result = inner.GetJsConstructor(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /**
     * Function name if this value represents a function.  Empty string if the
     * value is not a function.
     */
  /* readonly attribute string jsFunctionName; */
  char* JsFunctionName(){
    char* value;
    nsresult __result = inner.GetJsFunctionName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Value if interpreted as a boolean.  Converts if necessary.
     */
  /* readonly attribute boolean booleanValue; */
  PRBool BooleanValue(){
    PRBool value;
    nsresult __result = inner.GetBooleanValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Value if interpreted as a double.  Converts if necessary.
     */
  /* readonly attribute double doubleValue; */
  double DoubleValue(){
    double value;
    nsresult __result = inner.GetDoubleValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Value if interpreted as an integer.  Converts if necessary.
     */
  /* readonly attribute long intValue; */
  PRInt32 IntValue(){
    PRInt32 value;
    nsresult __result = inner.GetIntValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Value if interpreted as an object.
     */
  /* readonly attribute jsdIObject objectValue; */
  jsdIObjectD  ObjectValue(){
    jsdIObject value;
    nsresult __result = inner.GetObjectValue(&value);
    CheckException(__result);
    return new jsdIObjectD(value);
  }

  /**
     * Value if interpreted as a string.  Converts if necessary.
     */
  /* readonly attribute string stringValue; */
  char* StringValue(){
    char* value;
    nsresult __result = inner.GetStringValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Number of properties.  0 if the value is not an object, or the value is
     * an object but has no properties.
     */
  /* readonly attribute long propertyCount; */
  PRInt32 PropertyCount(){
    PRInt32 value;
    nsresult __result = inner.GetPropertyCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Retrieves all properties if this value represents an object.  If this
     * value is not an object a 0 element array is returned.
     * @param propArray Array of jsdIProperty values for this value.
     * @param length    Size of array.
     */
  /* void getProperties ([array, size_is (length)] out jsdIProperty propArray, out unsigned long length); */
  void GetProperties(out jsdIPropertyD *propArray, out PRUint32 length){
    jsdIProperty _propArray;
    nsresult __result = inner.GetProperties(&_propArray, &length);
    CheckException(__result);
    propArray = _propArray ? new jsdIPropertyD(_propArray) : null;
  }

  /**
     * Retrieves a single property from the value.  Only valid if the value
     * represents an object.
     * @param name Name of the property to retrieve.
     * @retval     jsdIProperty for the requested property name or null if no
     *             property exists for the requested name.
     */
  /* jsdIProperty getProperty (in string name); */
  jsdIPropertyD  GetProperty(char*name){
    jsdIProperty _retval;
    nsresult __result = inner.GetProperty(name, &_retval);
    CheckException(__result);
    return new jsdIPropertyD(_retval);
  }

  /**
     * jsdIValues are wrappers around JavaScript engine structures.  Much of the
     * data is copied instead of shared.  The refresh method is used to resync
     * the jsdIValue with the underlying structure.
     */
  /* void refresh (); */
  void Refresh(){
    nsresult __result = inner.Refresh();
    CheckException(__result);
  }

  /**
     * When called from JavaScript, this method returns the JavaScript value
     * wrapped by this jsdIValue.  The calling script is free to use the result
     * as it would any other JavaScript value.
     * When called from another language this method returns an xpconnect
     * defined error code.
     */
  /* void getWrappedValue (); */
  void GetWrappedValue(){
    nsresult __result = inner.GetWrappedValue();
    CheckException(__result);
  }

private:
  jsdIValue inner;

}


/* starting wrapper class:    jsdIObject */
class jsdIObjectD : public nsISupportsD {

  static const nsIID IID = JSDIOBJECT_IID;


  alias jsdIObject InnerType;

  this(jsdIObject intr){
    super(intr);
    this.inner = intr;
  }

  jsdIObject opCast() {
    return inner;
  }

  void opAssign(jsdIObject value) {
    inner = value;
  }

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
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDObject JSDObject; */
  JSDObject * JSDObject_(){
    JSDObject * value;
    nsresult __result = inner.GetJSDObject(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The URL (filename) that contains the script which caused this object
     * to be created.
     */
  /* readonly attribute string creatorURL; */
  char* CreatorURL(){
    char* value;
    nsresult __result = inner.GetCreatorURL(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Line number in the creatorURL where this object was created.
     */
  /* readonly attribute unsigned long creatorLine; */
  PRUint32 CreatorLine(){
    PRUint32 value;
    nsresult __result = inner.GetCreatorLine(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The URL (filename) that contains the script which defined the constructor
     * used to create this object.
     */
  /* readonly attribute string constructorURL; */
  char* ConstructorURL(){
    char* value;
    nsresult __result = inner.GetConstructorURL(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Line number in the creatorURL where this object was created.
     */
  /* readonly attribute unsigned long constructorLine; */
  PRUint32 ConstructorLine(){
    PRUint32 value;
    nsresult __result = inner.GetConstructorLine(&value);
    CheckException(__result);
    return value;
  }

  /**
     * jsdIValue for this object.
     */
  /* readonly attribute jsdIValue value; */
  jsdIValueD  Value(){
    jsdIValue value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

private:
  jsdIObject inner;

}


/* starting wrapper class:    jsdIProperty */
class jsdIPropertyD : public jsdIEphemeralD {

  static const nsIID IID = JSDIPROPERTY_IID;


  alias jsdIProperty InnerType;

  this(jsdIProperty intr){
    super(intr);
    this.inner = intr;
  }

  jsdIProperty opCast() {
    return inner;
  }

  void opAssign(jsdIProperty value) {
    inner = value;
  }

  /**
 * Representation of a property of an object.  When an instance is invalid, all
 * method and property access will result in a NS_UNAVAILABLE error.
 */
/** Internal use only. */
  /* [noscript] readonly attribute JSDContext JSDContext; */
  JSDContext * JSDContext_(){
    JSDContext * value;
    nsresult __result = inner.GetJSDContext(&value);
    CheckException(__result);
    return value;
  }

  /** Internal use only. */
  /* [noscript] readonly attribute JSDProperty JSDProperty; */
  JSDProperty * JSDProperty_(){
    JSDProperty * value;
    nsresult __result = inner.GetJSDProperty(&value);
    CheckException(__result);
    return value;
  }

  /**
     * FLAG_* values must be kept in sync with JSDPD_* #defines in jsdebug.h.
     */
/** visible to for/in loop */
  enum { FLAG_ENUMERATE = 1U }

  /** assignment is error */
  enum { FLAG_READONLY = 2U }

  /** property cannot be deleted */
  enum { FLAG_PERMANENT = 4U }

  /** property has an alias id */
  enum { FLAG_ALIAS = 8U }

  /** argument to function */
  enum { FLAG_ARGUMENT = 16U }

  /** local variable in function */
  enum { FLAG_VARIABLE = 32U }

  /** exception occurred looking up property, value is exception */
  enum { FLAG_EXCEPTION = 64U }

  /** native getter returned JS_FALSE without throwing an exception */
  enum { FLAG_ERROR = 128U }

  /** found via explicit lookup (property defined elsewhere.) */
  enum { FLAG_HINTED = 2048U }

  /** FLAG_* values OR'd together, representing the flags for this property. */
  /* readonly attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }

  /** jsdIValue representing the alias for this property. */
  /* readonly attribute jsdIValue alias; */
  jsdIValueD  Alias(){
    jsdIValue value;
    nsresult __result = inner.GetAlias(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /** name for this property. */
  /* readonly attribute jsdIValue name; */
  jsdIValueD  Name(){
    jsdIValue value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /** value of this property. */
  /* readonly attribute jsdIValue value; */
  jsdIValueD  Value(){
    jsdIValue value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new jsdIValueD(value);
  }

  /** slot number if this property is a local variable or parameter. */
  /* readonly attribute unsigned long varArgSlot; */
  PRUint32 VarArgSlot(){
    PRUint32 value;
    nsresult __result = inner.GetVarArgSlot(&value);
    CheckException(__result);
    return value;
  }

private:
  jsdIProperty inner;

}

