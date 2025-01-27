.class Lcom/sleepycat/je/log/LogBufferSegment;
.super Ljava/lang/Object;
.source "LogBufferSegment.java"


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final logBuffer:Lcom/sleepycat/je/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/log/LogBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "lb"    # Lcom/sleepycat/je/log/LogBuffer;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/je/log/LogBufferSegment;->logBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 29
    iput-object p2, p0, Lcom/sleepycat/je/log/LogBufferSegment;->data:Ljava/nio/ByteBuffer;

    .line 30
    return-void
.end method


# virtual methods
.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dataToCopy"    # Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferSegment;->logBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->latchForWrite()V

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferSegment;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferSegment;->logBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferSegment;->logBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->free()V

    .line 50
    return-void
.end method
