.class final Lio/netty/handler/codec/http/cookie/CookieUtil;
.super Ljava/lang/Object;
.source "CookieUtil.java"


# static fields
.field private static final VALID_COOKIE_ATTRIBUTE_VALUE_OCTETS:Ljava/util/BitSet;

.field private static final VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

.field private static final VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validCookieNameOctets()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    .line 27
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validCookieValueOctets()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    .line 29
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validCookieAttributeValueOctets()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_ATTRIBUTE_VALUE_OCTETS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method static add(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    return-void
.end method

.method static add(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    return-void
.end method

.method static add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method

.method static addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 121
    if-nez p2, :cond_0

    .line 122
    const-string p2, ""

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method

.method static firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 135
    sget-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result v0

    return v0
.end method

.method static firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 139
    sget-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result v0

    return v0
.end method

.method static firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Ljava/util/BitSet;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 145
    .local v1, "c":C
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    return v0

    .line 143
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static stringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 80
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static stripTrailingSeparator(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparator(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 153
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 154
    .local v0, "len":I
    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 155
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 157
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

    .line 159
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_2
    return-object p0
.end method

.method private static validCookieAttributeValueOctets()Ljava/util/BitSet;
    .locals 3

    .line 71
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 72
    .local v0, "bits":Ljava/util/BitSet;
    const/16 v1, 0x20

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x3b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 76
    return-object v0
.end method

.method private static validCookieNameOctets()Ljava/util/BitSet;
    .locals 6

    .line 37
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 38
    .local v0, "bits":Ljava/util/BitSet;
    const/16 v1, 0x20

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 43
    .local v1, "separators":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 44
    .local v5, "separator":I
    invoke-virtual {v0, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 43
    .end local v5    # "separator":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x40
        0x2c
        0x3b
        0x3a
        0x5c
        0x22
        0x2f
        0x5b
        0x5d
        0x3f
        0x3d
        0x7b
        0x7d
        0x20
        0x9
    .end array-data
.end method

.method private static validCookieValueOctets()Ljava/util/BitSet;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 53
    .local v0, "bits":Ljava/util/BitSet;
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 54
    const/16 v1, 0x23

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x2b

    if-gt v1, v2, :cond_0

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x2d

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0x3a

    if-gt v1, v2, :cond_1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x3c

    .restart local v1    # "i":I
    :goto_2
    const/16 v2, 0x5b

    if-gt v1, v2, :cond_2

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x5d

    .restart local v1    # "i":I
    :goto_3
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_3

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method static validateAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 167
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    return-object v0

    .line 173
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/cookie/CookieUtil;->VALID_COOKIE_ATTRIBUTE_VALUE_OCTETS:Ljava/util/BitSet;

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result v0

    .line 174
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 177
    return-object p1

    .line 175
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains the prohibited characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
