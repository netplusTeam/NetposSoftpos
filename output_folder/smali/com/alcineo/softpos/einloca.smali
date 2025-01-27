.class public Lcom/alcineo/softpos/einloca;
.super Lcom/alcineo/softpos/aecilon;
.source "SourceFile"


# static fields
.field private static final nacieol:Lorg/slf4j/Logger;

.field private static final ocenlai:I = 0x4000


# instance fields
.field private acileon:Lcom/alcineo/softpos/noealic;

.field private aoleinc:Ljava/nio/ByteBuffer;

.field private enolcai:Ljava/nio/channels/WritableByteChannel;

.field private noaceli:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/einloca;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/einloca;->nacieol:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ByteChannel;Lcom/alcineo/softpos/noealic;)V
    .locals 0

    invoke-direct {p0, p1, p1, p2}, Lcom/alcineo/softpos/einloca;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;Lcom/alcineo/softpos/noealic;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;Lcom/alcineo/softpos/noealic;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/aecilon;-><init>()V

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/alcineo/softpos/einloca;->acileon:Lcom/alcineo/softpos/noealic;

    iput-object p1, p0, Lcom/alcineo/softpos/einloca;->noaceli:Ljava/nio/channels/ReadableByteChannel;

    iput-object p2, p0, Lcom/alcineo/softpos/einloca;->enolcai:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method private acileon()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->noaceli:Ljava/nio/channels/ReadableByteChannel;

    iget-object v3, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/alcineo/softpos/einloca;->nacieol:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "-"

    invoke-static {v4, v5}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read ({}): {}"

    invoke-interface {v3, v5, v2, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection lost, read() returned -1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acileon(JLjava/util/concurrent/TimeUnit;)Lcom/alcineo/softpos/cnaolie;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    const/4 v3, 0x0

    if-gez v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->acileon:Lcom/alcineo/softpos/noealic;

    invoke-virtual {v2, p3}, Lcom/alcineo/softpos/noealic;->acileon(Ljava/nio/ByteBuffer;)Lcom/alcineo/softpos/cnaolie;

    move-result-object v2

    iget-object v4, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Lcom/alcineo/softpos/cnaolie;->aoleinc()Lcom/alcineo/softpos/cnaolie$acileon;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/alcineo/softpos/cnaolie$acileon;->acileon:Lcom/alcineo/softpos/cnaolie$acileon;

    invoke-virtual {v2, v4}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/cnaolie$acileon;)V
    :try_end_0
    .catch Lcom/alcineo/softpos/oiencla; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alcineo/softpos/aolenci; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v2

    sget-object v4, Lcom/alcineo/softpos/einloca;->nacieol:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Received invalid data: {}"

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    if-nez p3, :cond_1

    return-object v3

    :cond_1
    iget-object p3, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alcineo/softpos/einloca;->noaceli:Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-ltz v4, :cond_3

    if-lez v4, :cond_2

    iget-object v5, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v5, Lcom/alcineo/softpos/einloca;->nacieol:Lorg/slf4j/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "-"

    invoke-static {v6, v7}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Read ({}): {}"

    invoke-interface {v5, v7, v4, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/alcineo/softpos/einloca;->aoleinc:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection lost, read() returned -1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v3
.end method

.method public native acileon(Lcom/alcineo/softpos/alicneo;)Lcom/alcineo/softpos/cnaolie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/cloanie;
        }
    .end annotation
.end method

.method public acileon(Lcom/alcineo/softpos/cnaolie;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alcineo/softpos/einloca;->acileon:Lcom/alcineo/softpos/noealic;

    invoke-virtual {v0, p1}, Lcom/alcineo/softpos/noealic;->acileon(Lcom/alcineo/softpos/cnaolie;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/alcineo/softpos/einloca;->nacieol:Lorg/slf4j/Logger;

    const-string v3, "-"

    invoke-static {v2, v3}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Write: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alcineo/softpos/einloca;->enolcai:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Lcom/alcineo/softpos/cnaolie;->aoleinc()Lcom/alcineo/softpos/cnaolie$acileon;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alcineo/softpos/cnaolie$acileon;->aoleinc:Lcom/alcineo/softpos/cnaolie$acileon;

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/cnaolie$acileon;)V

    :cond_0
    return-void
.end method

.method public native aoleinc()Lcom/alcineo/softpos/noealic;
.end method

.method public native close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native enolcai()Ljava/nio/channels/WritableByteChannel;
.end method

.method public native noaceli()Ljava/nio/channels/ReadableByteChannel;
.end method
