.class Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;
.super Ljava/lang/Object;
.source "Bzip2BlockCompressor.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Bzip2BlockCompressor;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 36
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;->this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;->this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->write(I)Z

    move-result v0

    return v0
.end method
