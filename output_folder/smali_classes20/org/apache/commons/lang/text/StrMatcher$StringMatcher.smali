.class final Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;
.super Lorg/apache/commons/lang/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrMatcher;-><init>()V

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    .line 351
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 363
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    array-length v0, v0

    .line 364
    .local v0, "len":I
    add-int v1, p2, v0

    const/4 v2, 0x0

    if-le v1, p4, :cond_0

    .line 365
    return v2

    .line 367
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 368
    aget-char v3, v3, v1

    aget-char v4, p1, p2

    if-eq v3, v4, :cond_1

    .line 369
    return v2

    .line 367
    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_2
    return v0
.end method
