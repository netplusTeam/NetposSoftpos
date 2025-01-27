.class public Lorg/jpos/iso/packager/EuroSubFieldPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "EuroSubFieldPackager.java"


# static fields
.field protected static tagPrefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    sput-object v0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 9
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 58
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 61
    .local v2, "tab":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    .local v4, "ent":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 63
    .local v5, "i":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v6, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/jpos/iso/ISOComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 69
    :try_start_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/iso/ISOComponent;

    .line 70
    .local v6, "f":Lorg/jpos/iso/ISOComponent;
    iget-object v7, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v7

    .line 71
    .local v7, "b":[B
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v6    # "f":Lorg/jpos/iso/ISOComponent;
    .end local v7    # "b":[B
    goto :goto_1

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error packing subfield "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 76
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v3

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ent":Ljava/util/Map$Entry;
    .end local v5    # "i":Ljava/lang/Integer;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    goto :goto_0

    .line 66
    .restart local v4    # "ent":Ljava/util/Map$Entry;
    .restart local v5    # "i":Ljava/lang/Integer;
    :cond_2
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported sub-field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packing field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v3

    .line 80
    .end local v4    # "ent":Ljava/util/Map$Entry;
    .end local v5    # "i":Ljava/lang/Integer;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 81
    .local v3, "d":[B
    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_4

    .line 82
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :cond_4
    nop

    .line 84
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 83
    return-object v3

    .line 58
    .end local v2    # "tab":Ljava/util/Map;
    .end local v3    # "d":[B
    :catchall_0
    move-exception v2

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_2
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 85
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 7
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 104
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    const/4 v1, 0x0

    .line 105
    .local v1, "consumed":I
    const/4 v2, 0x0

    .line 108
    .local v2, "c":Lorg/jpos/iso/ISOComponent;
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_5

    .line 111
    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lorg/jpos/iso/packager/EuroSubFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v3, p2, v1}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    .line 113
    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    if-eqz v4, :cond_4

    .line 116
    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    .line 117
    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 118
    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 120
    :cond_1
    iget-object v4, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_2

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<unpack fld=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" packager=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/iso/packager/EuroSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  <value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 128
    const-string v4, "</unpack>"

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 130
    :cond_2
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 134
    .end local v3    # "i":I
    :cond_3
    goto/16 :goto_0

    .line 114
    .restart local v3    # "i":I
    :cond_4
    new-instance v4, Lorg/jpos/iso/ISOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported sub-field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unpacking field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    .end local v3    # "i":I
    :cond_5
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 136
    return v1
.end method
