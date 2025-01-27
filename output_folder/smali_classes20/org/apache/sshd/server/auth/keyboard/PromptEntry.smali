.class public Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
.super Ljava/lang/Object;
.source "PromptEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x71e1bed0ea22b988L


# instance fields
.field private echo:Z

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echo"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->prompt:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->echo:Z

    .line 43
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;)TB;"
        }
    .end annotation

    .line 62
    .local p1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->getPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->isEcho()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 64
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->clone()Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    .locals 4

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 81
    return v0

    .line 84
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    .line 85
    .local v2, "other":Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->getPrompt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->getPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->isEcho()Z

    move-result v3

    invoke-virtual {v2}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->isEcho()Z

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->getPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->isEcho()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEcho()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->echo:Z

    return v0
.end method

.method public setEcho(Z)V
    .locals 0
    .param p1, "echo"    # Z

    .line 58
    iput-boolean p1, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->echo:Z

    .line 59
    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->prompt:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(echo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->isEcho()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
