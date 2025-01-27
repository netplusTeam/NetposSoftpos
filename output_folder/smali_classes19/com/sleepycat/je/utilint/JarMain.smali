.class public Lcom/sleepycat/je/utilint/JarMain;
.super Ljava/lang/Object;
.source "JarMain.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: java <utility> [options...]"

.field private static utilPrefixMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    .line 42
    const-string v1, "DbCacheSize"

    const-string v2, "com.sleepycat.je.util."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbDump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbDeleteReservedFiles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbFilterStats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbLoad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbPrintLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbTruncateLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbRunAction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbScavenger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbSpace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbStat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbVerify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbVerifyLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbEnableReplication"

    const-string v2, "com.sleepycat.je.rep.util."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbGroupAdmin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbPing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "LDiff"

    const-string v2, "com.sleepycat.je.rep.util.ldiff."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbDumpGroup"

    const-string v2, "com.sleepycat.je.rep.utilint."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbFeederPrintLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbStreamVerify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbSync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbRepRunAction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const-string v1, "DbNullNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static availableUtilities()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "util":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v2    # "util":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 86
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 87
    const-string v0, "Missing utility name"

    invoke-static {v0}, Lcom/sleepycat/je/utilint/JarMain;->usage(Ljava/lang/String;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/JarMain;->utilPrefixMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "utilPrefix":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 92
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Available utilities are: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/sleepycat/je/utilint/JarMain;->availableUtilities()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string v3, "No such utility"

    invoke-static {v3}, Lcom/sleepycat/je/utilint/JarMain;->usage(Ljava/lang/String;)V

    .line 97
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 99
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "main"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    aput-object v6, v5, v2

    .line 100
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    .local v4, "mainMethod":Ljava/lang/reflect/Method;
    array-length v5, p0

    sub-int/2addr v5, v1

    new-array v5, v5, [Ljava/lang/String;

    .line 103
    .local v5, "mainArgs":[Ljava/lang/String;
    array-length v6, v5

    invoke-static {p0, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/4 v6, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v4, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    nop

    .end local v0    # "utilPrefix":Ljava/lang/String;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "mainMethod":Ljava/lang/reflect/Method;
    .end local v5    # "mainArgs":[Ljava/lang/String;
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/JarMain;->usage(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ITE":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/JarMain;->usage(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Problem invoking main method:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 117
    .end local v0    # "ITE":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 118
    :goto_1
    return-void
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: java <utility> [options...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 124
    return-void
.end method
