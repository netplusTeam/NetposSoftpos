.class synthetic Lio/netty/handler/codec/AsciiHeadersEncoder$1;
.super Ljava/lang/Object;
.source "AsciiHeadersEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/AsciiHeadersEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType:[I

.field static final synthetic $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    invoke-static {}, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->values()[Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->LF:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-virtual {v2}, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType:[I

    sget-object v3, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->CRLF:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-virtual {v3}, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 84
    :goto_1
    invoke-static {}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->values()[Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType:[I

    :try_start_2
    sget-object v3, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-virtual {v3}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType:[I

    sget-object v2, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON_SPACE:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-virtual {v2}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
