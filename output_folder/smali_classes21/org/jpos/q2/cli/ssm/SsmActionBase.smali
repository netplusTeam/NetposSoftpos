.class public abstract Lorg/jpos/q2/cli/ssm/SsmActionBase;
.super Ljava/lang/Object;
.source "SsmActionBase.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z
.end method

.method protected abstract doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/jpos/q2/cli/ssm/SsmActionBase;->checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 48
    .local v0, "keyLength":S
    invoke-static {p1}, Lorg/jpos/q2/cli/SSM;->getSecurityModule(Lorg/jpos/q2/CLIContext;)Lorg/jpos/security/jceadapter/JCESecurityModule;

    move-result-object v1

    .line 49
    .local v1, "securityModule":Lorg/jpos/security/jceadapter/JCESecurityModule;
    if-nez v1, :cond_1

    .line 50
    const-string v2, "No security module initialized.  Use the INIT command to initialize one."

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 51
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/jpos/q2/cli/ssm/SsmActionBase;->doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/security/SMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "keyLength":S
    .end local v1    # "securityModule":Lorg/jpos/security/jceadapter/JCESecurityModule;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "Invalid KeyLength"

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "sme":Lorg/jpos/security/SMException;
    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "sme":Lorg/jpos/security/SMException;
    :goto_0
    nop

    .line 59
    :goto_1
    return-void
.end method
