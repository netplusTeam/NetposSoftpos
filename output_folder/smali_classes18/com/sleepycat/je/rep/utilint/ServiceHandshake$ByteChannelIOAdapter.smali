.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteChannelIOAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;->channel:Ljava/nio/channels/ByteChannel;

    .line 1060
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
