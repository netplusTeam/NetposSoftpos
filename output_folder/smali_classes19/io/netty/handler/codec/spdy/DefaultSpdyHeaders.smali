.class public Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;
.super Lio/netty/handler/codec/DefaultHeaders;
.source "DefaultSpdyHeaders.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyHeaders;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/DefaultHeaders<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/netty/handler/codec/spdy/SpdyHeaders;",
        ">;",
        "Lio/netty/handler/codec/spdy/SpdyHeaders;"
    }
.end annotation


# static fields
.field private static final SpdyNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$1;

    invoke-direct {v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;->SpdyNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "validate"    # Z

    .line 43
    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    if-eqz p1, :cond_0

    sget-object v1, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;->INSTANCE:Lio/netty/handler/codec/spdy/DefaultSpdyHeaders$HeaderValueConverterAndValidator;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;->SpdyNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_1

    :cond_1
    sget-object v2, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 46
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 70
    if-eqz p3, :cond_0

    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getAllAsString(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lio/netty/handler/codec/HeadersUtils;->getAllAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 50
    invoke-static {p0, p1}, Lio/netty/handler/codec/HeadersUtils;->getAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iteratorAsString()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lio/netty/handler/codec/HeadersUtils;->iteratorAsString(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
