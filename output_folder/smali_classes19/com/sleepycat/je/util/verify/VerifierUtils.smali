.class public Lcom/sleepycat/je/util/verify/VerifierUtils;
.super Ljava/lang/Object;
.source "VerifierUtils.java"


# static fields
.field private static final EXCEPTION_KEY:Ljava/lang/String; = "ex"

.field private static final RESTORE_REQUIRED_MSG:Ljava/lang/String; = "The environment may not be opened due to persistent data corruption that was detected earlier. The marker file (7fffffff.jdb) may be deleted to allow recovery, but this is normally unsafe and not recommended. Original exception:\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMarkerFileFromException(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/lang/Throwable;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 6
    .param p0, "failureType"    # Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .param p1, "origException"    # Ljava/lang/Throwable;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 51
    const-string v0, ""

    .line 58
    .local v0, "markerFileError":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 61
    .local v1, "props":Ljava/util/Properties;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-static {p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "ex"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    new-instance v2, Lcom/sleepycat/je/log/RestoreMarker;

    .line 66
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/log/RestoreMarker;-><init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;)V

    .line 69
    .local v2, "restoreMarker":Lcom/sleepycat/je/log/RestoreMarker;
    :try_start_0
    invoke-virtual {v2, p0, v1}, Lcom/sleepycat/je/log/RestoreMarker;->createMarkerFile(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/util/Properties;)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/RestoreMarker$FileCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "restoreMarker":Lcom/sleepycat/je/log/RestoreMarker;
    .end local v3    # "e":Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
    :cond_0
    :goto_0
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persistent corruption detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2, p1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-object v1
.end method

.method public static getRestoreRequiredMessage(Lcom/sleepycat/je/log/entry/RestoreRequired;)Ljava/lang/String;
    .locals 3
    .param p0, "restoreRequired"    # Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 89
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/RestoreRequired;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 90
    .local v0, "p":Ljava/util/Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The environment may not be opened due to persistent data corruption that was detected earlier. The marker file (7fffffff.jdb) may be deleted to allow recovery, but this is normally unsafe and not recommended. Original exception:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
