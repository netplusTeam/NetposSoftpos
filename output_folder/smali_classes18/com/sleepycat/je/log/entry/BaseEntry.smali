.class abstract Lcom/sleepycat/je/log/entry/BaseEntry;
.super Ljava/lang/Object;
.source "BaseEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/LogEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/je/log/Loggable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/log/entry/LogEntry;"
    }
.end annotation


# instance fields
.field entryType:Lcom/sleepycat/je/log/LogEntryType;

.field private final noArgsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 96
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->noArgsConstructor:Ljava/lang/reflect/Constructor;

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->noArgsConstructor:Ljava/lang/reflect/Constructor;

    .line 65
    return-void
.end method

.method static getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/je/log/Loggable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static newInstanceOfType(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/je/log/Loggable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/je/log/Loggable;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 86
    .local p0, "noArgsConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/Loggable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 2

    .line 165
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/LogEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->clone()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getLogClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->noArgsConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 122
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 131
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 141
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 136
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method newInstanceOfType()Lcom/sleepycat/je/log/Loggable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->noArgsConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/BaseEntry;->newInstanceOfType(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    return-object v0
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 159
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    return-void
.end method

.method public postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p2, "justLoggedLsn"    # J
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 155
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    return-void
.end method

.method public setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 117
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    iput-object p1, p0, Lcom/sleepycat/je/log/entry/BaseEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseEntry;, "Lcom/sleepycat/je/log/entry/BaseEntry<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/entry/BaseEntry;->dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
