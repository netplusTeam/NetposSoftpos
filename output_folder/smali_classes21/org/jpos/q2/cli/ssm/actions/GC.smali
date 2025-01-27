.class public Lorg/jpos/q2/cli/ssm/actions/GC;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "GC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/jpos/q2/cli/ssm/SsmActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 35
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 36
    const-string v0, "Usage: GC KeyLength"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .locals 0
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "sm"    # Lorg/jpos/security/jceadapter/JCESecurityModule;
    .param p3, "keyLength"    # S
    .param p4, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateClearKeyComponent(S)Ljava/lang/String;

    .line 49
    return-void
.end method
