.class public Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
.super Ljava/lang/Object;
.source "InteractiveChallenge.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private interactionInstruction:Ljava/lang/String;

.field private interactionName:Ljava/lang/String;

.field private languageTag:Ljava/lang/String;

.field private prompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/keyboard/PromptEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public addPrompt(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echo"    # Z

    .line 71
    new-instance v0, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->addPrompt(Lorg/apache/sshd/server/auth/keyboard/PromptEntry;)V

    .line 72
    return-void
.end method

.method public addPrompt(Lorg/apache/sshd/server/auth/keyboard/PromptEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    const-string v1, "No entry"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public append(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;)TB;"
        }
    .end annotation

    .line 96
    .local p1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionInstruction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getPrompts()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/keyboard/PromptEntry;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 102
    .local v1, "numEntries":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 104
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    .line 106
    .local v3, "e":Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    invoke-virtual {v3, p1}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->append(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 104
    .end local v3    # "e":Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "index":I
    :cond_0
    return-object p1
.end method

.method public clearPrompts()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->clone()Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    .locals 4

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;

    .line 116
    .local v0, "other":Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getPrompts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    .line 118
    .local v2, "entry":Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    invoke-virtual {v2}, Lorg/apache/sshd/server/auth/keyboard/PromptEntry;->clone()Lorg/apache/sshd/server/auth/keyboard/PromptEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->addPrompt(Lorg/apache/sshd/server/auth/keyboard/PromptEntry;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2    # "entry":Lorg/apache/sshd/server/auth/keyboard/PromptEntry;
    goto :goto_0

    .line 120
    :cond_0
    return-object v0

    .line 121
    .end local v0    # "other":Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->toString()Ljava/lang/String;

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

.method public getInteractionInstruction()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->interactionInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractionName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->interactionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/keyboard/PromptEntry;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    return-object v0
.end method

.method public setInteractionInstruction(Ljava/lang/String;)V
    .locals 0
    .param p1, "interactionInstruction"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->interactionInstruction:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setInteractionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "interactionName"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->interactionName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLanguageTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->languageTag:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPrompts(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/server/auth/keyboard/PromptEntry;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "prompts":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/server/auth/keyboard/PromptEntry;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->clearPrompts()V

    .line 86
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->prompts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getPrompts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method
