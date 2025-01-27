.class final Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Branch"
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private cachedString:Ljava/lang/String;

.field private lastReplacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;-><init>()V

    return-void
.end method


# virtual methods
.method public createBranch()Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .locals 3

    .line 93
    new-instance v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;-><init>()V

    .line 94
    .local v0, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    iget-object v1, v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 96
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 101
    if-ne p0, p1, :cond_0

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public processNextReplacement(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "replacement"    # Ljava/lang/String;
    .param p2, "forceAppend"    # Z

    .line 135
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 137
    .local v0, "append":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 138
    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 141
    iget-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 146
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    return-object v0
.end method
