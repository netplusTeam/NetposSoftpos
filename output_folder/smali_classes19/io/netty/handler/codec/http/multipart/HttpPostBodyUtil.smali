.class final Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;
.super Ljava/lang/Object;
.source "HttpPostBodyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;,
        Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    }
.end annotation


# static fields
.field public static final DEFAULT_BINARY_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TEXT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final chunkSize:I = 0x1fa0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static findEndOfString(Ljava/lang/String;)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "result":I
    :goto_0
    if-lez v0, :cond_1

    .line 146
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    goto :goto_1

    .line 145
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    return v0
.end method

.method static findNonWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 131
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    goto :goto_1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    :goto_1
    return v0
.end method
