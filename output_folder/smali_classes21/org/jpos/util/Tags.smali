.class public Lorg/jpos/util/Tags;
.super Ljava/lang/Object;
.source "Tags.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6b8b0ff649be2d23L


# instance fields
.field private transient ts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lorg/jpos/util/Tags;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lorg/jpos/util/Tags;->setTags(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "tags"    # [Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lorg/jpos/util/Tags;-><init>()V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 43
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    iget-object v3, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/util/Tags;->setTags(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 121
    invoke-virtual {p0}, Lorg/jpos/util/Tags;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Lorg/jpos/util/Tags;)Z
    .locals 2
    .param p1, "tags"    # Lorg/jpos/util/Tags;

    .line 75
    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    iget-object v1, p1, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsAny(Lorg/jpos/util/Tags;)Z
    .locals 4
    .param p1, "tags"    # Lorg/jpos/util/Tags;

    .line 78
    iget-object v0, p1, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    return v2

    .line 81
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lorg/jpos/util/Tags;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jpos/util/Tags;

    .line 110
    .local v0, "tagSet":Lorg/jpos/util/Tags;
    iget-object v1, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    iget-object v2, v0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 108
    .end local v0    # "tagSet":Lorg/jpos/util/Tags;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x13

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 5
    .param p1, "tags"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->commaDecode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 55
    iget-object v4, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/util/Tags;->ts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 93
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 96
    :sswitch_0
    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method
