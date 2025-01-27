.class public Lio/netty/handler/codec/http/CombinedHttpHeaders;
.super Lio/netty/handler/codec/http/DefaultHttpHeaders;
.source "CombinedHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .param p1, "validate"    # Z

    .line 41
    new-instance v0, Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;

    sget-object v1, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-static {p1}, Lio/netty/handler/codec/http/CombinedHttpHeaders;->valueConverter(Z)Lio/netty/handler/codec/ValueConverter;

    move-result-object v2

    invoke-static {p1}, Lio/netty/handler/codec/http/CombinedHttpHeaders;->nameValidator(Z)Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Lio/netty/handler/codec/DefaultHeaders;)V

    .line 42
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 46
    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->trimOws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method
