.class public Lorg/jpos/q2/cli/ssm/actions/INIT;
.super Ljava/lang/Object;
.source "INIT.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 9
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    array-length v0, p2

    .line 43
    .local v0, "numArgs":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    const-string v1, "Usage: init -lmk filename -rebuildlmk -jce <provider class name>"

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 45
    return-void

    .line 47
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 48
    .local v2, "cfgProps":Ljava/util/Properties;
    new-instance v3, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v3, v2}, Lorg/jpos/core/SimpleConfiguration;-><init>(Ljava/util/Properties;)V

    .line 49
    .local v3, "cfg":Lorg/jpos/core/SimpleConfiguration;
    const/4 v4, 0x1

    .line 50
    .local v4, "curArg":I
    :goto_0
    if-gt v4, v0, :cond_4

    .line 51
    if-ge v4, v0, :cond_1

    aget-object v5, p2, v4

    const-string v6, "-lmk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "curArg":I
    .local v5, "curArg":I
    aget-object v4, p2, v4

    const-string v6, "lmk"

    invoke-virtual {v2, v6, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v4, v5

    .line 55
    .end local v5    # "curArg":I
    .restart local v4    # "curArg":I
    :cond_1
    if-ge v4, v0, :cond_2

    aget-object v5, p2, v4

    const-string v6, "-jce"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "curArg":I
    .restart local v5    # "curArg":I
    aget-object v4, p2, v4

    const-string v6, "provider"

    invoke-virtual {v2, v6, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v4, v5

    .line 59
    .end local v5    # "curArg":I
    .restart local v4    # "curArg":I
    :cond_2
    if-ge v4, v0, :cond_3

    aget-object v5, p2, v4

    const-string v6, "-rebuildlmk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 60
    const-string v5, "rebuildlmk"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 63
    :cond_3
    add-int/2addr v4, v1

    goto :goto_0

    .line 65
    :cond_4
    new-instance v1, Lorg/jpos/security/jceadapter/JCESecurityModule;

    invoke-direct {v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;-><init>()V

    .line 66
    .local v1, "sm":Lorg/jpos/security/jceadapter/JCESecurityModule;
    new-instance v5, Lorg/jpos/util/Logger;

    invoke-direct {v5}, Lorg/jpos/util/Logger;-><init>()V

    .line 67
    .local v5, "logger":Lorg/jpos/util/Logger;
    new-instance v6, Lorg/jpos/util/SimpleLogListener;

    new-instance v7, Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Lorg/jpos/util/SimpleLogListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v5, v6}, Lorg/jpos/util/Logger;->addListener(Lorg/jpos/util/LogListener;)V

    .line 68
    const-string v6, "jce-security-module"

    invoke-virtual {v1, v5, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 71
    invoke-static {p1, v1}, Lorg/jpos/q2/cli/SSM;->setSecurityModule(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;)V
    :try_end_0
    .catch Lorg/jpos/core/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v6

    .line 73
    .local v6, "e":Lorg/jpos/core/ConfigurationException;
    invoke-virtual {p1, v6}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 75
    .end local v6    # "e":Lorg/jpos/core/ConfigurationException;
    :goto_1
    return-void
.end method
