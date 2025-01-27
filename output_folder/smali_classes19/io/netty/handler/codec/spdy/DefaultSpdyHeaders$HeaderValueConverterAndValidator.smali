.class final Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;
.super Lio/netty/handler/codec/CharSequenceValueConverter;
.source "DefaultSpdyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderValueConverterAndValidator"
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;

    invoke-direct {v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;->INSTANCE:Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lio/netty/handler/codec/CharSequenceValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 79
    invoke-super {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, "seq":Ljava/lang/CharSequence;
    invoke-static {v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 81
    return-object v0
.end method

.method public bridge synthetic convertObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;->convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
