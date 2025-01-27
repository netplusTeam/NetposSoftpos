.class public abstract Lio/netty/handler/codec/http/cookie/CookieEncoder;
.super Ljava/lang/Object;
.source "CookieEncoder.java"


# instance fields
.field protected final strict:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/CookieEncoder;->strict:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected validateCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 34
    iget-boolean v0, p0, Lio/netty/handler/codec/http/cookie/CookieEncoder;->strict:Z

    if-eqz v0, :cond_3

    .line 37
    invoke-static {p1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    if-gez v0, :cond_2

    .line 41
    invoke-static {p2}, Lio/netty/handler/codec/http/cookie/CookieUtil;->unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    .local v0, "unwrappedValue":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 46
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I

    move-result v2

    move v1, v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookie value contains an invalid char: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookie value wrapping quotes are not balanced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    .end local v0    # "unwrappedValue":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cookie name contains an invalid char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v1    # "pos":I
    :cond_3
    :goto_0
    return-void
.end method
