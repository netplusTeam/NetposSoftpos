.class final Lio/netty/handler/codec/http/CookieUtil;
.super Ljava/lang/Object;
.source "CookieUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

.field private static final VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lio/netty/handler/codec/http/CookieUtil;->validCookieValueOctets()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    .line 28
    invoke-static {v0}, Lio/netty/handler/codec/http/CookieUtil;->validCookieNameOctets(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 71
    sget-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result v0

    return v0
.end method

.method static firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 75
    sget-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result v0

    return v0
.end method

.method static firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Ljava/util/BitSet;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 80
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 81
    .local v1, "c":C
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    return v0

    .line 79
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 89
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 90
    .local v0, "len":I
    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 91
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 93
    if-ne v0, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    .line 95
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 98
    :cond_2
    return-object p0
.end method

.method private static validCookieNameOctets(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .param p0, "validCookieValueOctets"    # Ljava/util/BitSet;

    .line 50
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 51
    .local v0, "bits":Ljava/util/BitSet;
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 52
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 53
    const/16 v1, 0x29

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 54
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 55
    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 56
    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 57
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 58
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 59
    const/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 60
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 61
    const/16 v1, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 62
    const/16 v1, 0x3d

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 63
    const/16 v1, 0x7b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 64
    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 65
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 66
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 67
    return-object v0
.end method

.method private static validCookieValueOctets()Ljava/util/BitSet;
    .locals 3

    .line 32
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 33
    .local v0, "bits":Ljava/util/BitSet;
    const/16 v1, 0x23

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 38
    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 39
    const/16 v1, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 40
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 41
    return-object v0
.end method
