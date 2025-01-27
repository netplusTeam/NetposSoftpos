.class public Lorg/jpos/q2/cli/ssm/actions/CK;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "CK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jpos/q2/cli/ssm/SsmActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 36
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 37
    const-string v0, "Usage: CK KeyLength KeyType KeyUnderLMK"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "sm"    # Lorg/jpos/security/jceadapter/JCESecurityModule;
    .param p3, "keyLength"    # S
    .param p4, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/jpos/security/SecureDESKey;

    const/4 v1, 0x2

    aget-object v1, p4, v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, p4, v2

    const-string v3, ""

    invoke-direct {v0, p3, v1, v2, v3}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateKeyCheckValue(Ljava/lang/Object;)[B

    .line 51
    return-void
.end method
