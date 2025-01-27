.class public Lorg/apache/sshd/server/shell/TtyFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "TtyFilterInputStream.java"


# static fields
.field public static final INPUT_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field private lastChar:I

.field private final ttyOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->OCRNL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ONLRET:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ONOCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 44
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->INPUT_OPTIONS:Ljava/util/Set;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Collection;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "ttyOptions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/PtyMode;>;"
    const-string v0, "No input stream provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->lastChar:I

    .line 57
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->of(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->ttyOptions:Ljava/util/Set;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;)V"
        }
    .end annotation

    .line 51
    .local p2, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    sget-object v0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->INPUT_OPTIONS:Ljava/util/Set;

    invoke-static {p2, v0}, Lorg/apache/sshd/common/channel/PtyMode;->resolveEnabledOptions(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/Collection;)V

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget-object v1, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 74
    .end local p0    # "this":Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleCR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->OCRNL:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/16 v0, 0xa

    return v0

    .line 98
    :cond_0
    const/16 v0, 0xd

    return v0
.end method

.method protected handleLF()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xd

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->ttyOptions:Ljava/util/Set;

    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ONOCR:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->lastChar:I

    if-eq v0, v2, :cond_1

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->insertCharacter(Lorg/apache/sshd/common/util/buffer/Buffer;I)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 106
    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->ttyOptions:Ljava/util/Set;

    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ONLRET:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    return v2

    .line 110
    :cond_2
    return v1
.end method

.method protected insertCharacter(Lorg/apache/sshd/common/util/buffer/Buffer;I)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 5
    .param p1, "org"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "c"    # I

    .line 116
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->capacity()I

    move-result v0

    .line 117
    .local v0, "remaining":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 119
    .local v1, "readPos":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v2

    .line 121
    .local v2, "writePos":I
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 122
    int-to-byte v3, p2

    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 123
    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 124
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 125
    return-object p1

    .line 127
    .end local v2    # "writePos":I
    :cond_0
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 128
    .local v2, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    int-to-byte v3, p2

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 129
    invoke-virtual {v2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 130
    return-object v2
.end method

.method public declared-synchronized read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->readRawInput()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    monitor-exit p0

    return v0

    .line 84
    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->handleCR()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 86
    .end local p0    # "this":Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->handleLF()I

    move-result v1

    move v0, v1

    .line 90
    :cond_2
    :goto_0
    iput v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->lastChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return v0

    .line 78
    .end local v0    # "c":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 144
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->read()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v2, "c":I
    if-ne v2, v0, :cond_0

    .line 147
    monitor-exit p0

    return v0

    .line 150
    :cond_0
    int-to-byte v0, v2

    :try_start_1
    aput-byte v0, p1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return v1

    .line 154
    .end local v2    # "c":I
    .end local p0    # "this":Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V

    .line 156
    iget-object v1, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .local v1, "nb":I
    if-ne v1, v0, :cond_2

    .line 158
    monitor-exit p0

    return v1

    .line 160
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 163
    .end local v1    # "nb":I
    :cond_3
    const/4 v0, 0x0

    .line 164
    .local v0, "nb":I
    move v1, p2

    .local v1, "curPos":I
    :goto_0
    if-ge v0, p3, :cond_4

    iget-object v2, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    if-lez v2, :cond_4

    .line 165
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "curPos":I
    :cond_4
    monitor-exit p0

    return v0

    .line 143
    .end local v0    # "nb":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected readRawInput()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 2
    .param p1, "c"    # I

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    .end local p1    # "c":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 65
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 66
    :try_start_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->write(I)V

    goto :goto_0

    .line 68
    .end local p0    # "this":Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
