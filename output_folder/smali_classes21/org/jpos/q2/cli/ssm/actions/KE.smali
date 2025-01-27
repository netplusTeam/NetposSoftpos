.class public Lorg/jpos/q2/cli/ssm/actions/KE;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "KE.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jpos/q2/cli/ssm/SsmActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 37
    array-length v0, p2

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 38
    const-string v0, "Usage: KE keyLength keyType KEYunderLMK KEYcheckValue kekLength kekType KEKunderLMK KEKcheckValue"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .locals 5
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "sm"    # Lorg/jpos/security/jceadapter/JCESecurityModule;
    .param p3, "keyLength"    # S
    .param p4, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/jpos/security/SecureDESKey;

    const/4 v1, 0x5

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x6

    aget-object v2, p4, v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v3, p4, v3

    const/16 v4, 0x8

    aget-object v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    new-instance v1, Lorg/jpos/security/SecureDESKey;

    const/4 v2, 0x2

    aget-object v2, p4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, p4, v3

    const/4 v4, 0x4

    aget-object v4, p4, v4

    invoke-direct {v1, p3, v2, v3, v4}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v1, "KEYunderLMK":Lorg/jpos/security/SecureDESKey;
    invoke-virtual {p2, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->exportKey(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B

    .line 51
    return-void
.end method
