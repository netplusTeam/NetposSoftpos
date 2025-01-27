.class public Lorg/jline/reader/Macro;
.super Ljava/lang/Object;
.source "Macro.java"

# interfaces
.implements Lorg/jline/reader/Binding;


# instance fields
.field private final sequence:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 25
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Macro;

    .line 28
    .local v0, "macro":Lorg/jline/reader/Macro;
    iget-object v1, p0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    iget-object v2, v0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 26
    .end local v0    # "macro":Lorg/jline/reader/Macro;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSequence()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/Macro;->sequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
