.class public Lorg/apache/sshd/common/auth/BasicCredentialsImpl;
.super Ljava/lang/Object;
.source "BasicCredentialsImpl.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/MutableBasicCredentials;
.implements Ljava/lang/Cloneable;


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->username:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->password:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->clone()Lorg/apache/sshd/common/auth/BasicCredentialsImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/sshd/common/auth/BasicCredentialsImpl;
    .locals 4

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected failure to clone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 80
    return v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 83
    return v0

    .line 86
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;

    .line 87
    .local v2, "other":Lorg/apache/sshd/common/auth/BasicCredentialsImpl;
    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 87
    :goto_0
    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->getPassword()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->password:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/apache/sshd/common/auth/BasicCredentialsImpl;->username:Ljava/lang/String;

    .line 48
    return-void
.end method
