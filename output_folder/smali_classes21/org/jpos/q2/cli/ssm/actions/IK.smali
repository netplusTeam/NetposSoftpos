.class public Lorg/jpos/q2/cli/ssm/actions/IK;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "IK.java"


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

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 38
    const-string v0, "Usage: IK keyLength keyType KEYunderKEK kekLength kekType KEKunderLMK KEKcheckValue"

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
    .locals 6
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
    new-instance v4, Lorg/jpos/security/SecureDESKey;

    const/4 v0, 0x4

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    const/4 v1, 0x5

    aget-object v1, p4, v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, p4, v2

    const/4 v3, 0x7

    aget-object v3, p4, v3

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v4, "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    const/4 v0, 0x2

    aget-object v0, p4, v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    aget-object v0, p4, v0

    .line 49
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 48
    const/4 v5, 0x1

    move-object v0, p2

    move v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importKey(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;

    .line 50
    return-void
.end method
