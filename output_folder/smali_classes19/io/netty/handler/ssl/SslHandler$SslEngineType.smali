.class abstract enum Lio/netty/handler/ssl/SslHandler$SslEngineType;
.super Ljava/lang/Enum;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SslEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/SslHandler$SslEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field public static final enum CONSCRYPT:Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field public static final enum JDK:Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field public static final enum TCNATIVE:Lio/netty/handler/ssl/SslHandler$SslEngineType;


# instance fields
.field final cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

.field final wantsDirectBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 183
    new-instance v0, Lio/netty/handler/ssl/SslHandler$SslEngineType$1;

    sget-object v1, Lio/netty/handler/codec/ByteToMessageDecoder;->COMPOSITE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    const-string v2, "TCNATIVE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lio/netty/handler/ssl/SslHandler$SslEngineType$1;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    sput-object v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->TCNATIVE:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    .line 230
    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslEngineType$2;

    sget-object v2, Lio/netty/handler/codec/ByteToMessageDecoder;->COMPOSITE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    const-string v5, "CONSCRYPT"

    invoke-direct {v1, v5, v4, v4, v2}, Lio/netty/handler/ssl/SslHandler$SslEngineType$2;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    sput-object v1, Lio/netty/handler/ssl/SslHandler$SslEngineType;->CONSCRYPT:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    .line 274
    new-instance v2, Lio/netty/handler/ssl/SslHandler$SslEngineType$3;

    sget-object v5, Lio/netty/handler/codec/ByteToMessageDecoder;->MERGE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    const-string v6, "JDK"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lio/netty/handler/ssl/SslHandler$SslEngineType$3;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    sput-object v2, Lio/netty/handler/ssl/SslHandler$SslEngineType;->JDK:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    .line 182
    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/ssl/SslHandler$SslEngineType;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v7

    sput-object v5, Lio/netty/handler/ssl/SslHandler$SslEngineType;->$VALUES:[Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V
    .locals 0
    .param p3, "wantsDirectBuffer"    # Z
    .param p4, "cumulator"    # Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;",
            ")V"
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    iput-boolean p3, p0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    .line 332
    iput-object p4, p0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;Lio/netty/handler/ssl/SslHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;
    .param p5, "x4"    # Lio/netty/handler/ssl/SslHandler$1;

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/ssl/SslHandler$SslEngineType;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    return-void
.end method

.method static forEngine(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 326
    instance-of v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->TCNATIVE:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    if-eqz v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->CONSCRYPT:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->JDK:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 182
    const-class v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 1

    .line 182
    sget-object v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->$VALUES:[Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/SslHandler$SslEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-object v0
.end method


# virtual methods
.method abstract allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
.end method

.method abstract calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I
.end method

.method abstract jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z
.end method

.method abstract unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method
