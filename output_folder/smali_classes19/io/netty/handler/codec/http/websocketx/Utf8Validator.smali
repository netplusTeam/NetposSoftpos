.class final Lio/netty/handler/codec/http/websocketx/Utf8Validator;
.super Ljava/lang/Object;
.source "Utf8Validator.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# static fields
.field private static final STATES:[B

.field private static final TYPES:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field private checking:Z

.field private codep:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->TYPES:[B

    .line 59
    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->STATES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->state:I

    return-void
.end method


# virtual methods
.method public check(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->checking:Z

    .line 73
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    .line 74
    return-void
.end method

.method public finish()V
    .locals 3

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->checking:Z

    .line 78
    iput v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->codep:I

    .line 79
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->state:I

    if-nez v1, :cond_0

    .line 84
    return-void

    .line 80
    :cond_0
    iput v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->state:I

    .line 81
    new-instance v0, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;

    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const-string v2, "bytes are not UTF-8"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    throw v0
.end method

.method public isChecking()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->checking:Z

    return v0
.end method

.method public process(B)Z
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    sget-object v0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->TYPES:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    .line 90
    .local v0, "type":B
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->state:I

    if-eqz v1, :cond_0

    and-int/lit8 v2, p1, 0x3f

    iget v3, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->codep:I

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    shr-int/2addr v2, v0

    and-int/2addr v2, p1

    :goto_0
    iput v2, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->codep:I

    .line 92
    sget-object v2, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->STATES:[B

    add-int/2addr v1, v0

    aget-byte v1, v2, v1

    iput v1, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->state:I

    .line 94
    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 99
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->checking:Z

    .line 96
    new-instance v1, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;

    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const-string v3, "bytes are not UTF-8"

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    throw v1
.end method
