.class public Lorg/apache/sshd/client/config/hosts/HostPatternValue;
.super Ljava/lang/Object;
.source "HostPatternValue.java"


# instance fields
.field private negated:Z

.field private pattern:Ljava/util/regex/Pattern;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;IZ)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "port"    # I
    .param p3, "negated"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->pattern:Ljava/util/regex/Pattern;

    .line 48
    iput p2, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->port:I

    .line 49
    iput-boolean p3, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->negated:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;Z)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "negated"    # Z

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;-><init>(Ljava/util/regex/Pattern;IZ)V

    .line 44
    return-void
.end method


# virtual methods
.method public getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->port:I

    return v0
.end method

.method public isNegated()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->negated:Z

    return v0
.end method

.method public setNegated(Z)V
    .locals 0
    .param p1, "negated"    # Z

    .line 73
    iput-boolean p1, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->negated:Z

    .line 74
    return-void
.end method

.method public setPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 57
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->pattern:Ljava/util/regex/Pattern;

    .line 58
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 65
    iput p1, p0, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->port:I

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 78
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    .local v0, "p":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "purePattern":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->isNegated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->getPort()I

    move-result v3

    .line 87
    .local v3, "portValue":I
    :try_start_0
    invoke-static {v2, v1, v3}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->appendHostPattern(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") failure to append host pattern of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 90
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
