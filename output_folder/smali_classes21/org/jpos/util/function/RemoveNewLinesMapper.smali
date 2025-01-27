.class public Lorg/jpos/util/function/RemoveNewLinesMapper;
.super Ljava/lang/Object;
.source "RemoveNewLinesMapper.java"

# interfaces
.implements Lorg/jpos/util/function/ByteArrayMapper;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field NEWLINE_SEPARATORS:[B

.field final SPACE:B

.field combineSpaces:Z

.field newLineAtEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->combineSpaces:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->newLineAtEnd:Z

    .line 49
    const/16 v0, 0x20

    iput-byte v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->SPACE:B

    .line 50
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->NEWLINE_SEPARATORS:[B

    return-void
.end method

.method private isNewLine(B)Z
    .locals 5
    .param p1, "aByte"    # B

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "isNewLine":Z
    iget-object v1, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->NEWLINE_SEPARATORS:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 95
    .local v4, "b":B
    if-ne p1, v4, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_1

    .line 94
    .end local v4    # "b":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/jpos/util/function/RemoveNewLinesMapper;->apply([B)[B

    move-result-object p1

    return-object p1
.end method

.method public apply([B)[B
    .locals 7
    .param p1, "bytes"    # [B

    .line 54
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 56
    .local v1, "prevSpace":Z
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_4

    aget-byte v5, p1, v3

    .line 57
    .local v5, "aByte":B
    if-ne v5, v4, :cond_1

    .line 58
    iget-boolean v4, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->combineSpaces:Z

    if-eqz v4, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 64
    :cond_1
    iget-boolean v6, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->combineSpaces:Z

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    const/4 v1, 0x0

    .line 68
    :cond_2
    invoke-direct {p0, v5}, Lorg/jpos/util/function/RemoveNewLinesMapper;->isNewLine(B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 69
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    .end local v5    # "aByte":B
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_4
    iget-boolean v2, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->combineSpaces:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 75
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    :cond_5
    iget-boolean v2, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->newLineAtEnd:Z

    if-eqz v2, :cond_6

    .line 78
    iget-object v2, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->NEWLINE_SEPARATORS:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 82
    .local v2, "result":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 83
    return-object v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 88
    const-string v0, "combine-spaces"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->combineSpaces:Z

    .line 89
    const-string v0, "newline-at-end"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/util/function/RemoveNewLinesMapper;->newLineAtEnd:Z

    .line 90
    return-void
.end method
