.class public Lorg/jpos/q2/cli/ssm/actions/FK;
.super Lorg/jpos/q2/cli/ssm/SsmActionBase;
.source "FK.java"


# instance fields
.field private prompt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/jpos/q2/cli/ssm/SsmActionBase;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/cli/ssm/actions/FK;->prompt:Z

    return-void
.end method

.method private readKeyComponent(Lorg/jpos/q2/CLIContext;I)Ljava/lang/String;
    .locals 6
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "kcNumber"    # I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "validComponent":Z
    const/4 v1, 0x0

    .line 78
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 79
    :goto_0
    if-nez v0, :cond_3

    .line 81
    :goto_1
    const-string v2, "Please enter key component:"

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->readSecurely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "Key component must be 32 hexadecimal characters."

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 87
    :goto_2
    const-string v3, "Please re-enter key component:"

    invoke-virtual {p1, v3}, Lorg/jpos/q2/CLIContext;->readSecurely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "second":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    const-string v2, "Entered key components don\'t match."

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 95
    .end local v3    # "second":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 89
    .restart local v3    # "second":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    .end local v3    # "second":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_3
    return-object v1
.end method


# virtual methods
.method protected checkUsage(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 37
    array-length v0, p2

    const/4 v1, 0x0

    const-string v2, "Usage: FK KeyLength keyType component1 component2 component3"

    const-string v3, "Usage: FK KeyLength keyType -prompt"

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 38
    const/4 v0, 0x3

    aget-object v0, p2, v0

    const-string v5, "-prompt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1, v3}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 41
    return v1

    .line 43
    :cond_0
    iput-boolean v4, p0, Lorg/jpos/q2/cli/ssm/actions/FK;->prompt:Z

    .line 44
    return v4

    .line 47
    :cond_1
    array-length v0, p2

    const/4 v5, 0x6

    if-ge v0, v5, :cond_2

    .line 48
    invoke-virtual {p1, v3}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 50
    return v1

    .line 53
    :cond_2
    return v4
.end method

.method protected doCommand(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;S[Ljava/lang/String;)V
    .locals 10
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "sm"    # Lorg/jpos/security/jceadapter/JCESecurityModule;
    .param p3, "keyLength"    # S
    .param p4, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lorg/jpos/q2/cli/ssm/actions/FK;->prompt:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jpos/q2/cli/ssm/actions/FK;->readKeyComponent(Lorg/jpos/q2/CLIContext;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "key1":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lorg/jpos/q2/cli/ssm/actions/FK;->readKeyComponent(Lorg/jpos/q2/CLIContext;I)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "key2":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/jpos/q2/cli/ssm/actions/FK;->readKeyComponent(Lorg/jpos/q2/CLIContext;I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "key3":Ljava/lang/String;
    aget-object v2, p4, v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 67
    move-object v3, p2

    move v4, p3

    move-object v6, v0

    move-object v7, v9

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;

    .line 69
    .end local v0    # "key1":Ljava/lang/String;
    .end local v1    # "key3":Ljava/lang/String;
    .end local v9    # "key2":Ljava/lang/String;
    goto :goto_0

    .line 70
    :cond_0
    aget-object v0, p4, v2

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p4, v1

    const/4 v0, 0x4

    aget-object v6, p4, v0

    const/4 v0, 0x5

    aget-object v7, p4, v0

    .line 70
    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v2 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;

    .line 73
    :goto_0
    return-void
.end method
