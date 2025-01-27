.class public Lcom/sleepycat/je/utilint/CmdUtil;
.super Ljava/lang/Object;
.source "CmdUtil.java"


# static fields
.field private static final printableChars:Ljava/lang/String; = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatEntry(Ljava/lang/StringBuilder;[BZ)V
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "entryData"    # [B
    .param p2, "formatUsingPrintable"    # Z

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-byte v2, p1, v1

    .line 80
    .local v2, "element":B
    and-int/lit16 v3, v2, 0xff

    .line 81
    .local v3, "b":I
    const/16 v4, 0x30

    const/16 v5, 0x10

    if-eqz p2, :cond_3

    .line 82
    invoke-static {v3}, Lcom/sleepycat/je/utilint/CmdUtil;->isPrint(I)Z

    move-result v6

    const/16 v7, 0x5c

    if-eqz v6, :cond_1

    .line 83
    if-ne v3, v7, :cond_0

    .line 84
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    add-int/lit8 v4, v3, -0x21

    const-string v5, "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "hex":Ljava/lang/String;
    if-ge v3, v5, :cond_2

    .line 91
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v6    # "hex":Ljava/lang/String;
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .restart local v6    # "hex":Ljava/lang/String;
    if-ge v3, v5, :cond_4

    .line 98
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v2    # "element":B
    .end local v3    # "b":I
    .end local v6    # "hex":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_5
    return-void
.end method

.method public static getArg([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "argv"    # [Ljava/lang/String;
    .param p1, "whichArg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 38
    aget-object v0, p0, p1

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 148
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "clsName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "lastName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | -jar je-<version>.jar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isPrint(I)Z
    .locals 1
    .param p0, "b"    # I

    .line 106
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/16 v0, 0x20

    if-ge v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeUtilityEnvironment(Ljava/io/File;Z)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 3
    .param p0, "envHome"    # Ljava/io/File;
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 118
    .local v0, "config":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 121
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_LOGGING_DBLOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 125
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 129
    nop

    .line 130
    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getProps(Lcom/sleepycat/je/EnvironmentMutableConfig;)Ljava/util/Properties;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->applyFileConfig(Ljava/io/File;Ljava/util/Properties;Z)V

    .line 132
    new-instance v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 136
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->finishInit(Lcom/sleepycat/je/EnvironmentConfig;)Z

    .line 138
    return-object v1
.end method

.method public static readLongNumber(Ljava/lang/String;)J
    .locals 2
    .param p0, "longVal"    # Ljava/lang/String;

    .line 49
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    .line 52
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLsn(Ljava/lang/String;)J
    .locals 7
    .param p0, "lsnVal"    # Ljava/lang/String;

    .line 60
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "slashOff":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v2

    .line 63
    .local v2, "fileNum":J
    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v4

    return-wide v4

    .line 65
    .end local v2    # "fileNum":J
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 66
    .local v1, "fileNum":J
    add-int/lit8 v3, v0, 0x1

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v3

    .line 68
    .local v3, "offset":J
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    return-wide v5
.end method
