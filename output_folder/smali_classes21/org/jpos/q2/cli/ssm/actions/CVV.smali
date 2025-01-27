.class public Lorg/jpos/q2/cli/ssm/actions/CVV;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "CVV.java"


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

    .line 34
    array-length v0, p2

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 35
    const-string v0, "Usage: cvv keyLength CVK-A-underLMK KeyCheck-A CVK-B-underLMK KeyCheck-B PAN EXP ServiceCode"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .locals 9
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "sm"    # Lorg/jpos/security/jceadapter/JCESecurityModule;
    .param p3, "keyLength"    # S
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 43
    new-instance v2, Lorg/jpos/security/SecureDESKey;

    const/4 v0, 0x2

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget-object v1, p4, v1

    const-string v3, "CVK"

    invoke-direct {v2, p3, v3, v0, v1}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v2, "cvkAUnderLmk":Lorg/jpos/security/SecureDESKey;
    new-instance v0, Lorg/jpos/security/SecureDESKey;

    const/4 v1, 0x4

    aget-object v1, p4, v1

    const/4 v4, 0x5

    aget-object v4, p4, v4

    invoke-direct {v0, p3, v3, v1, v4}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 45
    .local v3, "cvkBUnderLmk":Lorg/jpos/security/SecureDESKey;
    const/4 v0, 0x6

    aget-object v6, p4, v0

    .line 46
    .local v6, "pan":Ljava/lang/String;
    const/4 v0, 0x7

    aget-object v7, p4, v0

    .line 47
    .local v7, "exp":Ljava/lang/String;
    const/16 v0, 0x8

    aget-object v8, p4, v0

    .line 48
    .local v8, "serviceCode":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "01000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    move-object v0, p2

    move-object v1, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-void
.end method
