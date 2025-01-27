.class public Lio/netty/channel/DefaultFileRegion;
.super Lio/netty/util/AbstractReferenceCounted;
.source "DefaultFileRegion.java"

# interfaces
.implements Lio/netty/channel/FileRegion;


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final count:J

.field private final f:Ljava/io/File;

.field private file:Ljava/nio/channels/FileChannel;

.field private final position:J

.field private transferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lio/netty/channel/DefaultFileRegion;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DefaultFileRegion;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "position"    # J
    .param p4, "count"    # J

    .line 69
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 70
    const-string v0, "f"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lio/netty/channel/DefaultFileRegion;->f:Ljava/io/File;

    .line 71
    const-string v0, "position"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->position:J

    .line 72
    const-string v0, "count"

    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 2
    .param p1, "file"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J

    .line 54
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 55
    const-string v0, "file"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 56
    const-string v0, "position"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->position:J

    .line 57
    const-string v0, "count"

    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/DefaultFileRegion;->f:Ljava/io/File;

    .line 59
    return-void
.end method

.method static validate(Lio/netty/channel/DefaultFileRegion;J)V
    .locals 8
    .param p0, "region"    # Lio/netty/channel/DefaultFileRegion;
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 187
    .local v0, "size":J
    iget-wide v2, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    sub-long/2addr v2, p1

    .line 188
    .local v2, "count":J
    iget-wide v4, p0, Lio/netty/channel/DefaultFileRegion;->position:J

    add-long/2addr v4, v2

    add-long/2addr v4, p1

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    .line 191
    return-void

    .line 189
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Underlying file size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " smaller then requested count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    return-wide v0
.end method

.method protected deallocate()V
    .locals 4

    .line 145
    iget-object v0, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 147
    .local v0, "file":Ljava/nio/channels/FileChannel;
    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 153
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lio/netty/channel/DefaultFileRegion;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close a file."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/netty/channel/DefaultFileRegion;->f:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 90
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public retain()Lio/netty/channel/FileRegion;
    .locals 0

    .line 161
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    .line 162
    return-object p0
.end method

.method public retain(I)Lio/netty/channel/FileRegion;
    .locals 0
    .param p1, "increment"    # I

    .line 167
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    .line 168
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->retain()Lio/netty/channel/FileRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultFileRegion;->retain(I)Lio/netty/channel/FileRegion;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/channel/FileRegion;
    .locals 0

    .line 173
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/FileRegion;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 178
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->touch()Lio/netty/channel/FileRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultFileRegion;->touch(Ljava/lang/Object;)Lio/netty/channel/FileRegion;

    move-result-object p1

    return-object p1
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .locals 10
    .param p1, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    sub-long/2addr v0, p2

    .line 116
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_4

    cmp-long v2, p2, v8

    if-ltz v2, :cond_4

    .line 121
    cmp-long v2, v0, v8

    if-nez v2, :cond_0

    .line 122
    return-wide v8

    .line 124
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->refCnt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p0}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 130
    iget-object v2, p0, Lio/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    iget-wide v3, p0, Lio/netty/channel/DefaultFileRegion;->position:J

    add-long/2addr v3, p2

    move-wide v5, v0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    .line 131
    .local v2, "written":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 132
    iget-wide v4, p0, Lio/netty/channel/DefaultFileRegion;->transferred:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/channel/DefaultFileRegion;->transferred:J

    goto :goto_0

    .line 133
    :cond_1
    cmp-long v4, v2, v8

    if-nez v4, :cond_2

    .line 138
    invoke-static {p0, p2, p3}, Lio/netty/channel/DefaultFileRegion;->validate(Lio/netty/channel/DefaultFileRegion;J)V

    .line 140
    :cond_2
    :goto_0
    return-wide v2

    .line 125
    .end local v2    # "written":J
    :cond_3
    new-instance v2, Lio/netty/util/IllegalReferenceCountException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v2

    .line 117
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected: 0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lio/netty/channel/DefaultFileRegion;->count:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public transfered()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iget-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->transferred:J

    return-wide v0
.end method

.method public transferred()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lio/netty/channel/DefaultFileRegion;->transferred:J

    return-wide v0
.end method
