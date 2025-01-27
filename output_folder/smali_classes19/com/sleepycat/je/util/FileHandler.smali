.class public Lcom/sleepycat/je/util/FileHandler;
.super Ljava/util/logging/FileHandler;
.source "FileHandler.java"


# static fields
.field public static STIFLE_DEFAULT_ERROR_MANAGER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/util/FileHandler;->STIFLE_DEFAULT_ERROR_MANAGER:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "formatter"    # Ljava/util/logging/Formatter;
    .param p5, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 93
    new-instance v0, Lcom/sleepycat/je/util/FileHandler$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/FileHandler$1;-><init>(Lcom/sleepycat/je/util/FileHandler;)V

    .line 103
    .local v0, "em":Ljava/util/logging/ErrorManager;
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/util/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 106
    invoke-virtual {p0, p4}, Lcom/sleepycat/je/util/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 108
    nop

    .line 109
    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getHandlerLevel(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 112
    .local v1, "level":Ljava/util/logging/Level;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/util/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 113
    return-void
.end method
