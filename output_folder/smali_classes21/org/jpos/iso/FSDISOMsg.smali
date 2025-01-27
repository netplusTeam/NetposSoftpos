.class public Lorg/jpos/iso/FSDISOMsg;
.super Lorg/jpos/iso/ISOMsg;
.source "FSDISOMsg.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field fsd:Lorg/jpos/util/FSDMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/FSDMsg;)V
    .locals 0
    .param p1, "fsd"    # Lorg/jpos/util/FSDMsg;

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    .line 36
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 105
    invoke-super {p0}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/FSDISOMsg;

    .line 106
    .local v0, "m":Lorg/jpos/iso/FSDISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v1}, Lorg/jpos/util/FSDMsg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/FSDMsg;

    iput-object v1, v0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    .line 107
    return-object v0
.end method

.method public clone([I)Ljava/lang/Object;
    .locals 7
    .param p1, "fields"    # [I

    .line 110
    invoke-super {p0}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/FSDISOMsg;

    .line 111
    .local v0, "m":Lorg/jpos/iso/FSDISOMsg;
    new-instance v1, Lorg/jpos/util/FSDMsg;

    iget-object v2, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v2}, Lorg/jpos/util/FSDMsg;->getBasePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v3}, Lorg/jpos/util/FSDMsg;->getBaseSchema()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/util/FSDMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    .line 112
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 113
    .local v3, "field":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "f":Ljava/lang/String;
    iget-object v5, v0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    iget-object v6, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v6, v4}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v3    # "field":I
    .end local v4    # "f":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/FSDMsg;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public getFSDMsg()Lorg/jpos/util/FSDMsg;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    return-object v0
.end method

.method public getMTI()Ljava/lang/String;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/FSDISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "fldno"    # I

    .line 69
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fld"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0, p1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasField(I)Z
    .locals 1
    .param p1, "fldno"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/jpos/iso/FSDISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fld"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lorg/jpos/iso/FSDISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lorg/jpos/iso/ISOMsg;)V
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 119
    instance-of v0, p1, Lorg/jpos/iso/FSDISOMsg;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/FSDISOMsg;

    invoke-virtual {v1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/FSDMsg;->merge(Lorg/jpos/util/FSDMsg;)V

    goto :goto_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 123
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public pack()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0}, Lorg/jpos/util/FSDMsg;->packToBytes()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 94
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "basePath":Ljava/lang/String;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "baseSchema":Ljava/lang/String;
    new-instance v2, Lorg/jpos/util/FSDMsg;

    invoke-direct {v2, v0, v1}, Lorg/jpos/util/FSDMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    .line 97
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 98
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 99
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 101
    .local v4, "entry":Ljava/util/Map$Entry;
    iget-object v5, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 134
    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setResponseMTI()V
    .locals 1

    .line 130
    :try_start_0
    invoke-super {p0}, Lorg/jpos/iso/ISOMsg;->setResponseMTI()V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :goto_1
    return-void
.end method

.method public unpack([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0, p1}, Lorg/jpos/util/FSDMsg;->unpack([B)V

    .line 50
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 56
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0, p1}, Lorg/jpos/util/FSDMsg;->unpack(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    nop

    .line 62
    :try_start_1
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/jdom2/JDOMException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "in":Ljava/io/InputStream;
    throw v1

    .line 62
    .end local v0    # "e":Lorg/jdom2/JDOMException;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0}, Lorg/jpos/util/FSDMsg;->getBasePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0}, Lorg/jpos/util/FSDMsg;->getBaseSchema()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/jpos/iso/FSDISOMsg;->fsd:Lorg/jpos/util/FSDMsg;

    invoke-virtual {v0}, Lorg/jpos/util/FSDMsg;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
