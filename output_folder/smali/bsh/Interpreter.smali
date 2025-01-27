.class public Lbsh/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lbsh/ConsoleInterface;
.implements Ljava/io/Serializable;


# static fields
.field public static DEBUG:Z = false

.field public static LOCALSCOPING:Z = false

.field public static TRACE:Z = false

.field public static final VERSION:Ljava/lang/String; = "2.0b6"

.field static transient debug:Ljava/io/PrintStream;

.field static sharedObject:Lbsh/This;

.field static systemLineSeparator:Ljava/lang/String;


# instance fields
.field console:Lbsh/ConsoleInterface;

.field transient err:Ljava/io/PrintStream;

.field protected evalOnly:Z

.field private exitOnEOF:Z

.field globalNameSpace:Lbsh/NameSpace;

.field transient in:Ljava/io/Reader;

.field protected interactive:Z

.field transient out:Ljava/io/PrintStream;

.field parent:Lbsh/Interpreter;

.field transient parser:Lbsh/Parser;

.field private showResults:Z

.field sourceFileInfo:Ljava/lang/String;

.field private strictJava:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    const-string v0, "\n"

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    .line 120
    invoke-static {}, Lbsh/Interpreter;->staticInit()V

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 255
    new-instance v1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->evalOnly:Z

    .line 258
    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    const-string v1, "bsh.evalOnly"

    invoke-virtual {p0, v1, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;)V
    .locals 1
    .param p1, "console"    # Lbsh/ConsoleInterface;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V
    .locals 6
    .param p1, "console"    # Lbsh/ConsoleInterface;
    .param p2, "globalNameSpace"    # Lbsh/NameSpace;

    .line 236
    invoke-interface {p1}, Lbsh/ConsoleInterface;->getIn()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v2

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    .line 239
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setConsole(Lbsh/ConsoleInterface;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V
    .locals 6
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "err"    # Ljava/io/PrintStream;
    .param p4, "interactive"    # Z

    .line 227
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V
    .locals 8
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "err"    # Ljava/io/PrintStream;
    .param p4, "interactive"    # Z
    .param p5, "namespace"    # Lbsh/NameSpace;

    .line 221
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V
    .locals 8
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "err"    # Ljava/io/PrintStream;
    .param p4, "interactive"    # Z
    .param p5, "namespace"    # Lbsh/NameSpace;
    .param p6, "parent"    # Lbsh/Interpreter;
    .param p7, "sourceFileInfo"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->exitOnEOF:Z

    .line 181
    new-instance v0, Lbsh/Parser;

    invoke-direct {v0, p1}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, "t1":J
    iput-object p1, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    .line 184
    iput-object p2, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    .line 185
    iput-object p3, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    .line 186
    iput-boolean p4, p0, Lbsh/Interpreter;->interactive:Z

    .line 187
    sput-object p3, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    .line 188
    iput-object p6, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    .line 189
    if-eqz p6, :cond_0

    .line 190
    invoke-virtual {p6}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->setStrictJava(Z)V

    .line 191
    :cond_0
    iput-object p7, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    .line 193
    invoke-static {p0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v2

    .line 194
    .local v2, "bcm":Lbsh/BshClassManager;
    if-nez p5, :cond_1

    .line 195
    new-instance v3, Lbsh/NameSpace;

    const-string v4, "global"

    invoke-direct {v3, v2, v4}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    iput-object v3, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto :goto_0

    .line 197
    :cond_1
    iput-object p5, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    .line 206
    :goto_0
    const-string v3, "bsh"

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lbsh/This;

    if-nez v3, :cond_2

    .line 207
    invoke-direct {p0}, Lbsh/Interpreter;->initRootSystemObject()V

    .line 209
    :cond_2
    if-eqz p4, :cond_3

    .line 210
    invoke-virtual {p0}, Lbsh/Interpreter;->loadRCFiles()V

    .line 212
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 213
    .local v3, "t2":J
    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time to initialize interpreter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 215
    :cond_4
    return-void
.end method

.method private Line()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    invoke-virtual {v0}, Lbsh/Parser;->Line()Z

    move-result v0

    return v0
.end method

.method public static final debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 825
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 826
    sget-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "// Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 827
    :cond_0
    return-void
.end method

.method private getBshPrompt()Ljava/lang/String;
    .locals 2

    .line 1207
    :try_start_0
    const-string v0, "getBshPrompt()"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "bsh % "

    return-object v1
.end method

.method public static getSaveClasses()Z
    .locals 1

    .line 1251
    invoke-static {}, Lbsh/Interpreter;->getSaveClassesDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSaveClassesDir()Ljava/lang/String;
    .locals 1

    .line 1247
    const-string/jumbo v0, "saveClasses"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private get_jj_input_stream()Lbsh/JavaCharStream;
    .locals 1

    .line 1007
    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    return-object v0
.end method

.method private get_jjtree()Lbsh/JJTParserState;
    .locals 1

    .line 1003
    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    return-object v0
.end method

.method private initRootSystemObject()V
    .locals 5

    .line 278
    const-string v0, "bsh.cwd"

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    .line 280
    .local v1, "bcm":Lbsh/BshClassManager;
    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Object"

    invoke-direct {v2, v1, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    const-string v3, "bsh"

    invoke-virtual {p0, v3, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    if-nez v2, :cond_0

    .line 284
    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Shared System Object"

    invoke-direct {v2, v1, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    sput-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    .line 287
    :cond_0
    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    const-string v3, "bsh.system"

    invoke-virtual {p0, v3, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    const-string v3, "bsh.shared"

    invoke-virtual {p0, v3, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Command Help Text"

    invoke-direct {v2, v1, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    .line 293
    .local v2, "helpText":Lbsh/This;
    const-string v3, "bsh.help"

    invoke-virtual {p0, v3, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :try_start_0
    const-string/jumbo v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 298
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "."

    invoke-virtual {p0, v0, v4}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_1

    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_1

    :cond_1
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_1
    const-string v3, "bsh.interactive"

    invoke-virtual {p0, v3, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    iget-boolean v0, p0, Lbsh/Interpreter;->evalOnly:Z

    if-eqz v0, :cond_2

    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_2

    :cond_2
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_2
    const-string v3, "bsh.evalOnly"

    invoke-virtual {p0, v3, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public static invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 5
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const-string v4, "main"

    invoke-static {v2, p0, v4, v1, v0}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 421
    .local v1, "main":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 422
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 352
    array-length v0, p0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 353
    const/4 v0, 0x0

    aget-object v2, p0, v0

    .line 356
    .local v2, "filename":Ljava/lang/String;
    array-length v3, p0

    if-le v3, v1, :cond_0

    .line 357
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 358
    .local v3, "bshArgs":[Ljava/lang/String;
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 360
    .end local v3    # "bshArgs":[Ljava/lang/String;
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .line 362
    .restart local v3    # "bshArgs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    .line 364
    .local v0, "interpreter":Lbsh/Interpreter;
    const-string v1, "bsh.args"

    invoke-virtual {v0, v1, v3}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    :try_start_0
    iget-object v1, v0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    .line 367
    invoke-virtual {v0, v2, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, "result":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    .line 370
    :try_start_1
    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4, v3}, Lbsh/Interpreter;->invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    goto/16 :goto_1

    .line 371
    :catch_0
    move-exception v4

    .line 373
    .local v4, "e":Ljava/lang/Exception;
    move-object v5, v4

    .line 374
    .local v5, "o":Ljava/lang/Object;
    :try_start_2
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_1

    .line 375
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    .line 376
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    move-object v5, v6

    .line 377
    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " main method threw exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 388
    .end local v1    # "result":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 389
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 386
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 387
    .local v1, "e":Lbsh/EvalError;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Evaluation Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v1    # "e":Lbsh/EvalError;
    goto :goto_1

    .line 382
    :catch_3
    move-exception v1

    .line 383
    .local v1, "e":Lbsh/TargetError;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Script threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Lbsh/TargetError;->inNativeCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4, v5}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    goto :goto_1

    .line 380
    .end local v1    # "e":Lbsh/TargetError;
    :catch_4
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    nop

    .line 391
    .end local v0    # "interpreter":Lbsh/Interpreter;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "bshArgs":[Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 396
    :cond_3
    const-string/jumbo v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.1."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    new-instance v0, Lbsh/Interpreter$1;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lbsh/Interpreter$1;-><init>(Ljava/io/InputStream;)V

    .local v0, "src":Ljava/io/InputStream;
    goto :goto_3

    .line 406
    .end local v0    # "src":Ljava/io/InputStream;
    :cond_4
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 408
    .restart local v0    # "src":Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lbsh/CommandLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    .line 409
    .local v2, "in":Ljava/io/Reader;
    new-instance v3, Lbsh/Interpreter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v3, v2, v4, v5, v1}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    move-object v1, v3

    .line 411
    .local v1, "interpreter":Lbsh/Interpreter;
    invoke-virtual {v1}, Lbsh/Interpreter;->run()V

    .line 413
    .end local v0    # "src":Ljava/io/InputStream;
    .end local v1    # "interpreter":Lbsh/Interpreter;
    .end local v2    # "in":Ljava/io/Reader;
    :goto_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1186
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1189
    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    .line 1190
    invoke-interface {v0}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    .line 1191
    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 1193
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    .line 1194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    .line 1196
    :goto_0
    return-void
.end method

.method public static redirectOutputToFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 1051
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1053
    .local v0, "pout":Ljava/io/PrintStream;
    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 1054
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v0    # "pout":Ljava/io/PrintStream;
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t redirect output to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private showEvalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 756
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 757
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " . . . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 760
    :cond_0
    return-object p1
.end method

.method static staticInit()V
    .locals 4

    .line 1127
    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    .line 1128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    .line 1129
    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    .line 1130
    const-string/jumbo v0, "trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->TRACE:Z

    .line 1131
    const-string v0, "localscoping"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    .line 1132
    const-string/jumbo v0, "outfile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "outfilename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1134
    invoke-static {v0}, Lbsh/Interpreter;->redirectOutputToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1139
    .end local v0    # "outfilename":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not init static(3):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not init static(2):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1135
    :catch_1
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not init static:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1141
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    nop

    .line 1142
    :goto_1
    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    const-string v1, "// Error: "

    if-eqz v0, :cond_0

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbsh/ConsoleInterface;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 777
    :goto_0
    return-void
.end method

.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    const-string v1, "eval stream"

    invoke-virtual {p0, p1, v0, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "nameSpace"    # Lbsh/NameSpace;
    .param p3, "sourceFileInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 621
    const-string v0, "Sourced file: "

    const/4 v1, 0x0

    .line 622
    .local v1, "retVal":Ljava/lang/Object;
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eval: nameSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 629
    :cond_0
    new-instance v2, Lbsh/Interpreter;

    iget-object v5, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    iget-object v6, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v8, p2

    move-object v9, p0

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    .line 633
    .local v2, "localInterpreter":Lbsh/Interpreter;
    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3, p2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    .line 635
    .local v3, "callstack":Lbsh/CallStack;
    const/4 v4, 0x0

    .line 636
    .local v4, "eof":Z
    :cond_1
    :goto_0
    if-nez v4, :cond_d

    .line 638
    const/4 v5, 0x0

    .line 641
    .local v5, "node":Lbsh/SimpleNode;
    const/4 v6, 0x1

    :try_start_0
    invoke-direct {v2}, Lbsh/Interpreter;->Line()Z

    move-result v7

    move v4, v7

    .line 642
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->nodeArity()I

    move-result v7

    if-lez v7, :cond_6

    .line 644
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v7

    check-cast v7, Lbsh/SimpleNode;

    move-object v5, v7

    .line 646
    invoke-static {}, Lbsh/Interpreter;->getSaveClasses()Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of v7, v5, Lbsh/BSHClassDeclaration;

    if-nez v7, :cond_2

    instance-of v7, v5, Lbsh/BSHImportDeclaration;

    if-nez v7, :cond_2

    instance-of v7, v5, Lbsh/BSHPackageDeclaration;
    :try_end_0
    .catch Lbsh/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 714
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 718
    invoke-virtual {v3}, Lbsh/CallStack;->clear()V

    .line 719
    invoke-virtual {v3, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto :goto_0

    .line 654
    :cond_2
    :try_start_1
    invoke-virtual {v5, p3}, Lbsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    .line 656
    sget-boolean v7, Lbsh/Interpreter;->TRACE:Z

    if-eqz v7, :cond_3

    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "// "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 659
    :cond_3
    invoke-virtual {v5, v3, v2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 662
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-gt v7, v6, :cond_5

    .line 666
    instance-of v7, v1, Lbsh/ReturnControl;

    if-eqz v7, :cond_4

    .line 667
    move-object v7, v1

    check-cast v7, Lbsh/ReturnControl;

    iget-object v0, v7, Lbsh/ReturnControl;->value:Ljava/lang/Object;
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 714
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v6, :cond_d

    .line 718
    invoke-virtual {v3}, Lbsh/CallStack;->clear()V

    .line 719
    invoke-virtual {v3, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_5

    .line 671
    :cond_4
    :try_start_2
    iget-boolean v7, v2, Lbsh/Interpreter;->showResults:Z

    if-eqz v7, :cond_6

    sget-object v7, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v1, v7, :cond_6

    .line 673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 663
    :cond_5
    new-instance v7, Lbsh/InterpreterError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Callstack growing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local v1    # "retVal":Ljava/lang/Object;
    .end local v2    # "localInterpreter":Lbsh/Interpreter;
    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v4    # "eof":Z
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local p1    # "in":Ljava/io/Reader;
    .end local p2    # "nameSpace":Lbsh/NameSpace;
    .end local p3    # "sourceFileInfo":Ljava/lang/String;
    throw v7
    :try_end_2
    .catch Lbsh/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lbsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lbsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    .restart local v1    # "retVal":Ljava/lang/Object;
    .restart local v2    # "localInterpreter":Lbsh/Interpreter;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v4    # "eof":Z
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local p1    # "in":Ljava/io/Reader;
    .restart local p2    # "nameSpace":Lbsh/NameSpace;
    .restart local p3    # "sourceFileInfo":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-le v7, v6, :cond_a

    .line 718
    :goto_2
    invoke-virtual {v3}, Lbsh/CallStack;->clear()V

    .line 719
    invoke-virtual {v3, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_3

    .line 714
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 709
    :catch_0
    move-exception v7

    .line 710
    .local v7, "e":Lbsh/TokenMgrError;
    :try_start_3
    new-instance v8, Lbsh/EvalError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " Token Parsing Error: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lbsh/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    move-object v0, v8

    .line 711
    .local v0, "evalError":Lbsh/EvalError;
    invoke-virtual {v0, v7}, Lbsh/EvalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 712
    nop

    .end local v1    # "retVal":Ljava/lang/Object;
    .end local v2    # "localInterpreter":Lbsh/Interpreter;
    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v4    # "eof":Z
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local p1    # "in":Ljava/io/Reader;
    .end local p2    # "nameSpace":Lbsh/NameSpace;
    .end local p3    # "sourceFileInfo":Ljava/lang/String;
    throw v0

    .line 705
    .end local v0    # "evalError":Lbsh/EvalError;
    .end local v7    # "e":Lbsh/TokenMgrError;
    .restart local v1    # "retVal":Ljava/lang/Object;
    .restart local v2    # "localInterpreter":Lbsh/Interpreter;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v4    # "eof":Z
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local p1    # "in":Ljava/io/Reader;
    .restart local p2    # "nameSpace":Lbsh/NameSpace;
    .restart local p3    # "sourceFileInfo":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 706
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lbsh/EvalError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " unknown error: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    move-object v0, v8

    .line 707
    .restart local v0    # "evalError":Lbsh/EvalError;
    invoke-virtual {v0, v7}, Lbsh/EvalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 708
    nop

    .end local v1    # "retVal":Ljava/lang/Object;
    .end local v2    # "localInterpreter":Lbsh/Interpreter;
    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v4    # "eof":Z
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local p1    # "in":Ljava/io/Reader;
    .end local p2    # "nameSpace":Lbsh/NameSpace;
    .end local p3    # "sourceFileInfo":Ljava/lang/String;
    throw v0

    .line 698
    .end local v0    # "evalError":Lbsh/EvalError;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "retVal":Ljava/lang/Object;
    .restart local v2    # "localInterpreter":Lbsh/Interpreter;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v4    # "eof":Z
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local p1    # "in":Ljava/io/Reader;
    .restart local p2    # "nameSpace":Lbsh/NameSpace;
    .restart local p3    # "sourceFileInfo":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 699
    .local v7, "e":Lbsh/EvalError;
    sget-boolean v8, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 700
    invoke-virtual {v7}, Lbsh/EvalError;->printStackTrace()V

    .line 702
    :cond_7
    invoke-virtual {v7}, Lbsh/EvalError;->getNode()Lbsh/SimpleNode;

    move-result-object v8

    if-nez v8, :cond_8

    .line 703
    invoke-virtual {v7, v5}, Lbsh/EvalError;->setNode(Lbsh/SimpleNode;)V

    .line 704
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    .end local v7    # "e":Lbsh/EvalError;
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-le v7, v6, :cond_a

    .line 718
    goto/16 :goto_2

    .line 693
    :catch_3
    move-exception v7

    .line 695
    .local v7, "e":Lbsh/TargetError;
    :try_start_4
    invoke-virtual {v7}, Lbsh/TargetError;->getNode()Lbsh/SimpleNode;

    move-result-object v8

    if-nez v8, :cond_9

    .line 696
    invoke-virtual {v7, v5}, Lbsh/TargetError;->setNode(Lbsh/SimpleNode;)V

    .line 697
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbsh/TargetError;->reThrow(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 714
    .end local v7    # "e":Lbsh/TargetError;
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-le v7, v6, :cond_a

    .line 718
    goto/16 :goto_2

    .line 722
    .end local v5    # "node":Lbsh/SimpleNode;
    :cond_a
    :goto_3
    goto/16 :goto_0

    .line 689
    .restart local v5    # "node":Lbsh/SimpleNode;
    :catch_4
    move-exception v7

    .line 690
    .local v7, "e":Lbsh/InterpreterError;
    :try_start_5
    new-instance v8, Lbsh/EvalError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " internal Error: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    move-object v0, v8

    .line 691
    .restart local v0    # "evalError":Lbsh/EvalError;
    invoke-virtual {v0, v7}, Lbsh/EvalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 692
    nop

    .end local v1    # "retVal":Ljava/lang/Object;
    .end local v2    # "localInterpreter":Lbsh/Interpreter;
    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v4    # "eof":Z
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local p1    # "in":Ljava/io/Reader;
    .end local p2    # "nameSpace":Lbsh/NameSpace;
    .end local p3    # "sourceFileInfo":Ljava/lang/String;
    throw v0

    .line 675
    .end local v0    # "evalError":Lbsh/EvalError;
    .end local v7    # "e":Lbsh/InterpreterError;
    .restart local v1    # "retVal":Ljava/lang/Object;
    .restart local v2    # "localInterpreter":Lbsh/Interpreter;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v4    # "eof":Z
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local p1    # "in":Ljava/io/Reader;
    .restart local p2    # "nameSpace":Lbsh/NameSpace;
    .restart local p3    # "sourceFileInfo":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 681
    .local v0, "e":Lbsh/ParseException;
    sget-boolean v7, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 683
    invoke-virtual {v0, v7}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 686
    :cond_b
    invoke-virtual {v0, p3}, Lbsh/ParseException;->setErrorSourceFile(Ljava/lang/String;)V

    .line 687
    nop

    .end local v1    # "retVal":Ljava/lang/Object;
    .end local v2    # "localInterpreter":Lbsh/Interpreter;
    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v4    # "eof":Z
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local p1    # "in":Ljava/io/Reader;
    .end local p2    # "nameSpace":Lbsh/NameSpace;
    .end local p3    # "sourceFileInfo":Ljava/lang/String;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 714
    .end local v0    # "e":Lbsh/ParseException;
    .restart local v1    # "retVal":Ljava/lang/Object;
    .restart local v2    # "localInterpreter":Lbsh/Interpreter;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v4    # "eof":Z
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local p1    # "in":Ljava/io/Reader;
    .restart local p2    # "nameSpace":Lbsh/NameSpace;
    .restart local p3    # "sourceFileInfo":Ljava/lang/String;
    :goto_4
    invoke-direct {v2}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v7

    invoke-virtual {v7}, Lbsh/JJTParserState;->reset()V

    .line 717
    invoke-virtual {v3}, Lbsh/CallStack;->depth()I

    move-result v7

    if-le v7, v6, :cond_c

    .line 718
    invoke-virtual {v3}, Lbsh/CallStack;->clear()V

    .line 719
    invoke-virtual {v3, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_c
    throw v0

    .line 723
    .end local v5    # "node":Lbsh/SimpleNode;
    :cond_d
    :goto_5
    invoke-static {v1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "statements"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 738
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eval(String): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 4
    .param p1, "statements"    # Ljava/lang/String;
    .param p2, "nameSpace"    # Lbsh/NameSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 749
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inline evaluation of: ``"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 752
    invoke-direct {p0, v0}, Lbsh/Interpreter;->showEvalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {p0, v1, p2, v2}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 841
    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p0}, Lbsh/NameSpace;->get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 843
    .end local v0    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Lbsh/UtilEvalError;
    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    .line 800
    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 1

    .line 788
    iget-object v0, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "interf"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 994
    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Lbsh/UtilEvalError;
    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .locals 1

    .line 344
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    .line 794
    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getParent()Lbsh/Interpreter;
    .locals 1

    .line 1169
    iget-object v0, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    return-object v0
.end method

.method public getShowResults()Z
    .locals 1

    .line 1243
    iget-boolean v0, p0, Lbsh/Interpreter;->showResults:Z

    return v0
.end method

.method public getSourceFileInfo()Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object v0, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1154
    return-object v0

    .line 1156
    :cond_0
    const-string v0, "<unknown source>"

    return-object v0
.end method

.method public getStrictJava()Z
    .locals 1

    .line 1116
    iget-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    return v0
.end method

.method getu(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 853
    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method loadRCFiles()V
    .locals 3

    .line 1018
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user.home"

    .line 1020
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "rcfile":Ljava/lang/String;
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    nop

    .end local v0    # "rcfile":Ljava/lang/String;
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find rc file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1026
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    const-string v1, "bsh.cwd"

    invoke-virtual {p0, v1}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1040
    .local v1, "cwd":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1045
    .end local v1    # "cwd":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1}, Lbsh/ConsoleInterface;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 813
    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 815
    :goto_0
    return-void
.end method

.method public final println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method public run()V
    .locals 8

    .line 430
    iget-boolean v0, p0, Lbsh/Interpreter;->evalOnly:Z

    if-nez v0, :cond_15

    .line 438
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    const-string/jumbo v0, "printBanner();"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Lbsh/EvalError;
    const-string v1, "BeanShell 2.0b6 - by Pat Niemeyer (pat@pat.net)"

    invoke-virtual {p0, v1}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 447
    .end local v0    # "e":Lbsh/EvalError;
    :cond_0
    :goto_0
    new-instance v0, Lbsh/CallStack;

    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-direct {v0, v1}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    .line 449
    .local v0, "callstack":Lbsh/CallStack;
    const/4 v1, 0x0

    .line 450
    .local v1, "eof":Z
    :goto_1
    if-nez v1, :cond_13

    .line 455
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 456
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 457
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 459
    iget-boolean v3, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v3, :cond_1

    .line 460
    invoke-direct {p0}, Lbsh/Interpreter;->getBshPrompt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    .line 462
    :cond_1
    invoke-direct {p0}, Lbsh/Interpreter;->Line()Z

    move-result v3

    move v1, v3

    .line 464
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->nodeArity()I

    move-result v3

    if-lez v3, :cond_5

    .line 466
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    move-object v4, v3

    check-cast v4, Lbsh/SimpleNode;

    .line 468
    .local v3, "node":Lbsh/SimpleNode;
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ">"

    if-eqz v4, :cond_2

    .line 469
    :try_start_2
    invoke-virtual {v3, v5}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    .line 471
    :cond_2
    invoke-virtual {v3, v0, p0}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v4

    .line 474
    .local v4, "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v6

    if-gt v6, v2, :cond_4

    .line 478
    instance-of v6, v4, Lbsh/ReturnControl;

    if-eqz v6, :cond_3

    .line 479
    move-object v6, v4

    check-cast v6, Lbsh/ReturnControl;

    iget-object v6, v6, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    move-object v4, v6

    .line 481
    :cond_3
    sget-object v6, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v4, v6, :cond_5

    .line 483
    const-string v6, "$_"

    invoke-virtual {p0, v6, v4}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    iget-boolean v6, p0, Lbsh/Interpreter;->showResults:Z

    if-eqz v6, :cond_5

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 475
    :cond_4
    new-instance v5, Lbsh/InterpreterError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Callstack growing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local v0    # "callstack":Lbsh/CallStack;
    .end local v1    # "eof":Z
    throw v5
    :try_end_2
    .catch Lbsh/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lbsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    .end local v3    # "node":Lbsh/SimpleNode;
    .end local v4    # "ret":Ljava/lang/Object;
    .restart local v0    # "callstack":Lbsh/CallStack;
    .restart local v1    # "eof":Z
    :cond_5
    :goto_2
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    :goto_3
    invoke-virtual {v0}, Lbsh/CallStack;->clear()V

    .line 556
    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_5

    .line 552
    :catchall_0
    move-exception v3

    goto/16 :goto_6

    .line 536
    :catch_1
    move-exception v3

    .line 538
    .local v3, "e":Lbsh/TokenMgrError;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing input: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 545
    iget-object v4, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v4, v5}, Lbsh/Parser;->reInitTokenInput(Ljava/io/Reader;)V

    .line 547
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_6

    .line 548
    const/4 v1, 0x1

    .line 552
    .end local v3    # "e":Lbsh/TokenMgrError;
    :cond_6
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto :goto_3

    .line 528
    :catch_2
    move-exception v3

    .line 530
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 531
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 532
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    :cond_7
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_8

    .line 534
    const/4 v1, 0x1

    .line 552
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto :goto_3

    .line 515
    :catch_3
    move-exception v3

    .line 517
    .local v3, "e":Lbsh/EvalError;
    :try_start_5
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v5, "EvalError: "

    if-eqz v4, :cond_9

    .line 518
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    goto :goto_4

    .line 520
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 522
    :goto_4
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 523
    invoke-virtual {v3}, Lbsh/EvalError;->printStackTrace()V

    .line 525
    :cond_a
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v4, :cond_b

    .line 526
    const/4 v1, 0x1

    .line 552
    .end local v3    # "e":Lbsh/EvalError;
    :cond_b
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto/16 :goto_3

    .line 506
    :catch_4
    move-exception v3

    .line 508
    .local v3, "e":Lbsh/TargetError;
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Uncaught Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v3}, Lbsh/TargetError;->inNativeCode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 510
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    iget-object v5, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4, v5}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    .line 511
    :cond_c
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v4, :cond_d

    .line 512
    const/4 v1, 0x1

    .line 513
    :cond_d
    const-string v4, "$_e"

    invoke-virtual {v3}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 552
    .end local v3    # "e":Lbsh/TargetError;
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto/16 :goto_3

    .line 499
    :catch_5
    move-exception v3

    .line 501
    .local v3, "e":Lbsh/InterpreterError;
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {v3}, Lbsh/InterpreterError;->printStackTrace()V

    .line 503
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v4, :cond_e

    .line 504
    const/4 v1, 0x1

    .line 552
    .end local v3    # "e":Lbsh/InterpreterError;
    :cond_e
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto/16 :goto_3

    .line 489
    :catch_6
    move-exception v3

    .line 491
    .local v3, "e":Lbsh/ParseException;
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parser Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v3, v5}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 492
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 493
    invoke-virtual {v3}, Lbsh/ParseException;->printStackTrace()V

    .line 494
    :cond_f
    iget-boolean v4, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v4, :cond_10

    .line 495
    const/4 v1, 0x1

    .line 497
    :cond_10
    iget-object v4, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v4, v5}, Lbsh/Parser;->reInitInput(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 552
    .end local v3    # "e":Lbsh/ParseException;
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v2, :cond_11

    .line 555
    goto/16 :goto_3

    .line 556
    :cond_11
    :goto_5
    goto/16 :goto_1

    .line 552
    :goto_6
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->reset()V

    .line 554
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v2, :cond_12

    .line 555
    invoke-virtual {v0}, Lbsh/CallStack;->clear()V

    .line 556
    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_12
    throw v3

    .line 561
    :cond_13
    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lbsh/Interpreter;->exitOnEOF:Z

    if-eqz v2, :cond_14

    .line 562
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 563
    :cond_14
    return-void

    .line 431
    .end local v0    # "callstack":Lbsh/CallStack;
    .end local v1    # "eof":Z
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bsh Interpreter: No stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 902
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 903
    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 905
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 906
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 899
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 896
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 867
    if-nez p2, :cond_0

    .line 868
    sget-object p2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    .line 870
    :cond_0
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    .line 872
    .local v0, "callstack":Lbsh/CallStack;
    :try_start_0
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v1

    .line 876
    .local v1, "lhs":Lbsh/LHS;
    invoke-virtual {v1, p2, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 877
    nop

    .end local v1    # "lhs":Lbsh/LHS;
    goto :goto_0

    .line 878
    :cond_1
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, p1, p2, v2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    nop

    .line 882
    return-void

    .line 879
    :catch_0
    move-exception v1

    .line 880
    .local v1, "e":Lbsh/UtilEvalError;
    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    invoke-virtual {v1, v2, v0}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 908
    if-eqz p2, :cond_0

    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_0

    :cond_0
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 909
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "externalCL"    # Ljava/lang/ClassLoader;

    .line 1083
    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1084
    return-void
.end method

.method public setConsole(Lbsh/ConsoleInterface;)V
    .locals 1
    .param p1, "console"    # Lbsh/ConsoleInterface;

    .line 268
    iput-object p1, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    .line 269
    const-string v0, "bsh.console"

    invoke-virtual {p0, v0, p1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    .line 272
    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    .line 274
    return-void
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/PrintStream;

    .line 1176
    iput-object p1, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    .line 1177
    return-void
.end method

.method public setExitOnEOF(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1225
    iput-boolean p1, p0, Lbsh/Interpreter;->exitOnEOF:Z

    .line 1226
    return-void
.end method

.method public setNameSpace(Lbsh/NameSpace;)V
    .locals 0
    .param p1, "globalNameSpace"    # Lbsh/NameSpace;

    .line 325
    iput-object p1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    .line 326
    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1173
    iput-object p1, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    .line 1174
    return-void
.end method

.method public setShowResults(Z)V
    .locals 0
    .param p1, "showResults"    # Z

    .line 1235
    iput-boolean p1, p0, Lbsh/Interpreter;->showResults:Z

    .line 1236
    return-void
.end method

.method public setStrictJava(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1109
    iput-boolean p1, p0, Lbsh/Interpreter;->strictJava:Z

    .line 1110
    return-void
.end method

.method setu(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 889
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    nop

    .line 893
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public source(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nameSpace"    # Lbsh/NameSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    .line 573
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 574
    .local v0, "file":Ljava/io/File;
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sourcing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 575
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 577
    .local v1, "sourceIn":Ljava/io/Reader;
    :try_start_0
    invoke-virtual {p0, v1, p2, p1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v2
.end method

.method public unset(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 922
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    .line 924
    .local v0, "callstack":Lbsh/CallStack;
    :try_start_0
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v1

    .line 927
    .local v1, "lhs":Lbsh/LHS;
    iget v2, v1, Lbsh/LHS;->type:I

    if-nez v2, :cond_0

    .line 932
    iget-object v2, v1, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    invoke-virtual {v2, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    .line 936
    .end local v1    # "lhs":Lbsh/LHS;
    nop

    .line 937
    return-void

    .line 928
    .restart local v1    # "lhs":Lbsh/LHS;
    :cond_0
    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t unset, not a variable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v5, Lbsh/CallStack;

    invoke-direct {v5}, Lbsh/CallStack;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    .end local v0    # "callstack":Lbsh/CallStack;
    .end local p1    # "name":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    .end local v1    # "lhs":Lbsh/LHS;
    .restart local v0    # "callstack":Lbsh/CallStack;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Lbsh/UtilEvalError;
    new-instance v2, Lbsh/EvalError;

    invoke-virtual {v1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v5, Lbsh/CallStack;

    invoke-direct {v5}, Lbsh/CallStack;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2
.end method
