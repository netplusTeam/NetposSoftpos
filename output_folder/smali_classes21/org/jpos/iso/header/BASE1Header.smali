.class public Lorg/jpos/iso/header/BASE1Header;
.super Lorg/jpos/iso/header/BaseHeader;
.source "BASE1Header.java"


# static fields
.field public static final LENGTH:I = 0x16

.field private static final serialVersionUID:J = 0x59bd5d92b91a5cfeL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const-string v0, "000000"

    invoke-direct {p0, v0, v0}, Lorg/jpos/iso/header/BASE1Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lorg/jpos/iso/header/BaseHeader;-><init>()V

    .line 54
    const/16 v0, 0x16

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    .line 55
    iget-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/iso/header/BASE1Header;->setHFormat(I)V

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/jpos/iso/header/BASE1Header;->setFormat(I)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/jpos/iso/header/BASE1Header;->setSource(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/jpos/iso/header/BASE1Header;->setDestination(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "format"    # I

    .line 62
    invoke-direct {p0}, Lorg/jpos/iso/header/BaseHeader;-><init>()V

    .line 63
    const/16 v0, 0x16

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    .line 64
    iget-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/iso/header/BASE1Header;->setHFormat(I)V

    .line 66
    invoke-virtual {p0, p3}, Lorg/jpos/iso/header/BASE1Header;->setFormat(I)V

    .line 67
    invoke-virtual {p0, p1}, Lorg/jpos/iso/header/BASE1Header;->setSource(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/jpos/iso/header/BASE1Header;->setDestination(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "header"    # [B

    .line 71
    invoke-direct {p0, p1}, Lorg/jpos/iso/header/BaseHeader;-><init>([B)V

    .line 72
    return-void
.end method


# virtual methods
.method public formatHeader()Ljava/lang/String;
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "h":Ljava/lang/String;
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "lf":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v2, "d":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v3, "[H 01] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v3, "[H 02] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v4, "[H 03] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v3, "[H 04] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v4, "[H 05] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v3, "[H 06] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x16

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v4, "[H 07] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v3, "[H 08] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x1c

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v4, "[H 09] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v3, "[H 10] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x24

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v4, "[H 11] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2a

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v3, "[H 12] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p0}, Lorg/jpos/iso/header/BASE1Header;->isRejected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "[H 13] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2e

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v3, "[H 14] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDestination()Ljava/lang/String;
    .locals 4

    .line 118
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getHLen()I
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRejectCode()Ljava/lang/String;
    .locals 4

    .line 140
    invoke-virtual {p0}, Lorg/jpos/iso/header/BASE1Header;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/16 v1, 0x18

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRejected()Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Lorg/jpos/iso/header/BASE1Header;->getLength()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBatchNumber(I)V
    .locals 3
    .param p1, "i"    # I

    .line 96
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x11

    aput-byte v1, v0, v2

    .line 97
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 5
    .param p1, "dest"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 108
    .local v0, "d":[B
    iget-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-void
.end method

.method public setFlags(I)V
    .locals 3
    .param p1, "i"    # I

    .line 87
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    .line 88
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    .line 89
    return-void
.end method

.method public setFormat(I)V
    .locals 3
    .param p1, "format"    # I

    .line 99
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    int-to-byte v1, p1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 100
    return-void
.end method

.method public setHFormat(I)V
    .locals 3
    .param p1, "hformat"    # I

    .line 78
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 79
    return-void
.end method

.method public setLen(I)V
    .locals 3
    .param p1, "len"    # I

    .line 102
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    array-length v0, v0

    add-int/2addr p1, v0

    .line 103
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 104
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 105
    return-void
.end method

.method public setRtCtl(I)V
    .locals 3
    .param p1, "i"    # I

    .line 84
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    int-to-byte v1, p1

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    .line 85
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 112
    .local v0, "d":[B
    iget-object v1, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "i"    # I

    .line 91
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    .line 92
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    .line 93
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    .line 94
    return-void
.end method

.method public swapDirection()V
    .locals 7

    .line 121
    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    array-length v0, v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 122
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 123
    .local v1, "source":[B
    iget-object v2, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v2, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    iget-object v5, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    const/4 v6, 0x5

    invoke-static {v2, v6, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v2, p0, Lorg/jpos/iso/header/BASE1Header;->header:[B

    invoke-static {v1, v4, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .end local v1    # "source":[B
    :cond_0
    return-void
.end method
