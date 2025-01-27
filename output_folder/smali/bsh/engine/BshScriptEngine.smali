.class public Lbsh/engine/BshScriptEngine;
.super Ljavax/script/AbstractScriptEngine;
.source "BshScriptEngine.java"

# interfaces
.implements Ljavax/script/Compilable;
.implements Ljavax/script/Invocable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/engine/BshScriptEngine$WriterOutputStream;
    }
.end annotation


# static fields
.field static final engineNameSpaceKey:Ljava/lang/String; = "org_beanshell_engine_namespace"


# instance fields
.field private factory:Lbsh/engine/BshScriptEngineFactory;

.field private interpreter:Lbsh/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsh/engine/BshScriptEngine;-><init>(Lbsh/engine/BshScriptEngineFactory;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lbsh/engine/BshScriptEngineFactory;)V
    .locals 0
    .param p1, "factory"    # Lbsh/engine/BshScriptEngineFactory;

    .line 28
    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    .line 29
    iput-object p1, p0, Lbsh/engine/BshScriptEngine;->factory:Lbsh/engine/BshScriptEngineFactory;

    .line 30
    invoke-virtual {p0}, Lbsh/engine/BshScriptEngine;->getInterpreter()Lbsh/Interpreter;

    .line 31
    return-void
.end method

.method private evalSource(Ljava/lang/Object;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "scriptContext"    # Ljavax/script/ScriptContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lbsh/engine/BshScriptEngine;->getEngineNameSpace(Ljavax/script/ScriptContext;)Lbsh/NameSpace;

    move-result-object v0

    .line 65
    .local v0, "contextNameSpace":Lbsh/NameSpace;
    invoke-virtual {p0}, Lbsh/engine/BshScriptEngine;->getInterpreter()Lbsh/Interpreter;

    move-result-object v1

    .line 66
    .local v1, "bsh":Lbsh/Interpreter;
    invoke-virtual {v1, v0}, Lbsh/Interpreter;->setNameSpace(Lbsh/NameSpace;)V

    .line 69
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Lbsh/engine/BshScriptEngine$WriterOutputStream;

    .line 70
    invoke-interface {p2}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lbsh/engine/BshScriptEngine$WriterOutputStream;-><init>(Lbsh/engine/BshScriptEngine;Ljava/io/Writer;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {v1, v2}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    .line 71
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Lbsh/engine/BshScriptEngine$WriterOutputStream;

    .line 72
    invoke-interface {p2}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lbsh/engine/BshScriptEngine$WriterOutputStream;-><init>(Lbsh/engine/BshScriptEngine;Ljava/io/Writer;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {v1, v2}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    .line 75
    :try_start_0
    instance-of v2, p1, Ljava/io/Reader;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, p1

    check-cast v2, Ljava/io/Reader;

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Lbsh/InterpreterError;
    new-instance v3, Ljavax/script/ScriptException;

    invoke-virtual {v2}, Lbsh/InterpreterError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v2    # "e":Lbsh/InterpreterError;
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Lbsh/EvalError;
    new-instance v3, Ljavax/script/ScriptException;

    .line 93
    invoke-virtual {v2}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbsh/EvalError;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/EvalError;->getErrorLineNumber()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 83
    .end local v2    # "e":Lbsh/EvalError;
    :catch_2
    move-exception v2

    .line 86
    .local v2, "e":Lbsh/TargetError;
    new-instance v3, Ljavax/script/ScriptException;

    .line 87
    invoke-virtual {v2}, Lbsh/TargetError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbsh/TargetError;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/TargetError;->getErrorLineNumber()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    .local v3, "se":Ljavax/script/ScriptException;
    invoke-virtual {v2}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/script/ScriptException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v3

    .line 79
    .end local v2    # "e":Lbsh/TargetError;
    .end local v3    # "se":Ljavax/script/ScriptException;
    :catch_3
    move-exception v2

    .line 81
    .local v2, "e":Lbsh/ParseException;
    new-instance v3, Ljavax/script/ScriptException;

    .line 82
    invoke-virtual {v2}, Lbsh/ParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbsh/ParseException;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/ParseException;->getErrorLineNumber()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3
.end method

.method private static getEngineNameSpace(Ljavax/script/ScriptContext;)Lbsh/NameSpace;
    .locals 7
    .param p0, "scriptContext"    # Ljavax/script/ScriptContext;

    .line 109
    const-string/jumbo v0, "org_beanshell_engine_namespace"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/NameSpace;

    .line 112
    .local v2, "ns":Lbsh/NameSpace;
    if-nez v2, :cond_0

    .line 115
    new-instance v3, Lbsh/engine/ScriptContextEngineView;

    invoke-direct {v3, p0}, Lbsh/engine/ScriptContextEngineView;-><init>(Ljavax/script/ScriptContext;)V

    .line 116
    .local v3, "engineView":Ljava/util/Map;
    new-instance v4, Lbsh/ExternalNameSpace;

    const/4 v5, 0x0

    const-string v6, "javax_script_context"

    invoke-direct {v4, v5, v6, v3}, Lbsh/ExternalNameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V

    move-object v2, v4

    .line 119
    invoke-interface {p0, v0, v2, v1}, Ljavax/script/ScriptContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 122
    .end local v3    # "engineView":Ljava/util/Map;
    :cond_0
    return-object v2
.end method

.method private getGlobal()Lbsh/This;
    .locals 2

    .line 313
    invoke-virtual {p0}, Lbsh/engine/BshScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v0

    invoke-static {v0}, Lbsh/engine/BshScriptEngine;->getEngineNameSpace(Ljavax/script/ScriptContext;)Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/engine/BshScriptEngine;->getInterpreter()Lbsh/Interpreter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .locals 2
    .param p1, "script"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbsh/engine/BshScriptEngine;->compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;

    move-result-object v0

    return-object v0
.end method

.method public createBindings()Ljavax/script/Bindings;
    .locals 1

    .line 127
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "scriptContext"    # Ljavax/script/ScriptContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lbsh/engine/BshScriptEngine;->evalSource(Ljava/lang/Object;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "scriptContext"    # Ljavax/script/ScriptContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lbsh/engine/BshScriptEngine;->evalSource(Ljava/lang/Object;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Ljavax/script/ScriptEngineFactory;
    .locals 1

    .line 132
    iget-object v0, p0, Lbsh/engine/BshScriptEngine;->factory:Lbsh/engine/BshScriptEngineFactory;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lbsh/engine/BshScriptEngineFactory;

    invoke-direct {v0}, Lbsh/engine/BshScriptEngineFactory;-><init>()V

    iput-object v0, p0, Lbsh/engine/BshScriptEngine;->factory:Lbsh/engine/BshScriptEngineFactory;

    .line 134
    :cond_0
    iget-object v0, p0, Lbsh/engine/BshScriptEngine;->factory:Lbsh/engine/BshScriptEngineFactory;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 270
    .local p1, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lbsh/engine/BshScriptEngine;->getGlobal()Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "utilEvalError":Lbsh/UtilEvalError;
    invoke-virtual {v0}, Lbsh/UtilEvalError;->printStackTrace()V

    .line 273
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "thiz"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 297
    .local p2, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v0, p1, Lbsh/This;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    move-object v0, p1

    check-cast v0, Lbsh/This;

    .line 303
    .local v0, "bshThis":Lbsh/This;
    invoke-virtual {v0, p2}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 304
    .end local v0    # "bshThis":Lbsh/This;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "utilEvalError":Lbsh/UtilEvalError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lbsh/UtilEvalError;->printStackTrace(Ljava/io/PrintStream;)V

    .line 306
    const/4 v1, 0x0

    return-object v1

    .line 298
    .end local v0    # "utilEvalError":Lbsh/UtilEvalError;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInterpreter()Lbsh/Interpreter;
    .locals 2

    .line 35
    iget-object v0, p0, Lbsh/engine/BshScriptEngine;->interpreter:Lbsh/Interpreter;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    iput-object v0, p0, Lbsh/engine/BshScriptEngine;->interpreter:Lbsh/Interpreter;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->setNameSpace(Lbsh/NameSpace;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lbsh/engine/BshScriptEngine;->interpreter:Lbsh/Interpreter;

    return-object v0
.end method

.method public varargs invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lbsh/engine/BshScriptEngine;->getGlobal()Lbsh/This;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lbsh/engine/BshScriptEngine;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "thiz"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 204
    instance-of v0, p1, Lbsh/This;

    if-eqz v0, :cond_0

    .line 207
    move-object v0, p1

    check-cast v0, Lbsh/This;

    .line 210
    .local v0, "bshObject":Lbsh/This;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Lbsh/InterpreterError;
    new-instance v2, Ljavax/script/ScriptException;

    invoke-virtual {v1}, Lbsh/InterpreterError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v1    # "e":Lbsh/InterpreterError;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Lbsh/EvalError;
    new-instance v2, Ljavax/script/ScriptException;

    .line 225
    invoke-virtual {v1}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbsh/EvalError;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbsh/EvalError;->getErrorLineNumber()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 215
    .end local v1    # "e":Lbsh/EvalError;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Lbsh/TargetError;
    new-instance v2, Ljavax/script/ScriptException;

    .line 219
    invoke-virtual {v1}, Lbsh/TargetError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbsh/TargetError;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbsh/TargetError;->getErrorLineNumber()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    .local v2, "se":Ljavax/script/ScriptException;
    invoke-virtual {v1}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/script/ScriptException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 221
    throw v2

    .line 211
    .end local v1    # "e":Lbsh/TargetError;
    .end local v2    # "se":Ljavax/script/ScriptException;
    :catch_3
    move-exception v1

    .line 213
    .local v1, "e":Lbsh/ParseException;
    new-instance v2, Ljavax/script/ScriptException;

    .line 214
    invoke-virtual {v1}, Lbsh/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbsh/ParseException;->getErrorSourceFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbsh/ParseException;->getErrorLineNumber()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 205
    .end local v0    # "bshObject":Lbsh/This;
    .end local v1    # "e":Lbsh/ParseException;
    :cond_0
    new-instance v0, Ljavax/script/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal objec type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
