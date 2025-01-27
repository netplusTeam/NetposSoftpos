.class public Lorg/jpos/security/SecureDESKey;
.super Lorg/jpos/security/SecureVariantKey;
.source "SecureDESKey.java"


# static fields
.field protected static final KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x7eea91862bff4532L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "([^:;]*)([:;])?([^:;])?([^:;])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/SecureDESKey;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/jpos/security/SecureVariantKey;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;BLorg/jpos/security/KeyScheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "variant"    # B
    .param p4, "scheme"    # Lorg/jpos/security/KeyScheme;
    .param p5, "keyHexString"    # Ljava/lang/String;
    .param p6, "keyCheckValueHexString"    # Ljava/lang/String;

    .line 119
    invoke-static {p5}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p6}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;BLorg/jpos/security/KeyScheme;[B[B)V

    .line 120
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;BLorg/jpos/security/KeyScheme;[B[B)V
    .locals 0
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "variant"    # B
    .param p4, "scheme"    # Lorg/jpos/security/KeyScheme;
    .param p5, "keyBytes"    # [B
    .param p6, "keyCheckValue"    # [B

    .line 69
    invoke-direct {p0}, Lorg/jpos/security/SecureVariantKey;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/jpos/security/SecureDESKey;->setKeyLength(S)V

    .line 71
    invoke-virtual {p0, p2}, Lorg/jpos/security/SecureDESKey;->setKeyType(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p3}, Lorg/jpos/security/SecureDESKey;->setVariant(B)V

    .line 73
    invoke-virtual {p0, p4}, Lorg/jpos/security/SecureDESKey;->setScheme(Lorg/jpos/security/KeyScheme;)V

    .line 74
    invoke-virtual {p0, p5}, Lorg/jpos/security/SecureDESKey;->setKeyBytes([B)V

    .line 75
    invoke-virtual {p0, p6}, Lorg/jpos/security/SecureDESKey;->setKeyCheckValue([B)V

    .line 76
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyHexString"    # Ljava/lang/String;
    .param p4, "keyCheckValueHexString"    # Ljava/lang/String;

    .line 105
    invoke-static {p3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;[B[B)V

    .line 106
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;[B[B)V
    .locals 0
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyBytes"    # [B
    .param p4, "keyCheckValue"    # [B

    .line 87
    invoke-direct {p0}, Lorg/jpos/security/SecureVariantKey;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lorg/jpos/security/SecureDESKey;->setKeyLength(S)V

    .line 89
    invoke-virtual {p0, p2}, Lorg/jpos/security/SecureDESKey;->setKeyType(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p3}, Lorg/jpos/security/SecureDESKey;->setKeyBytes([B)V

    .line 91
    invoke-virtual {p0, p4}, Lorg/jpos/security/SecureDESKey;->setKeyCheckValue([B)V

    .line 92
    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getVariant()B

    .line 93
    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getScheme()Lorg/jpos/security/KeyScheme;

    .line 94
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<secure-des-key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " length=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jpos/security/SecureDESKey;->keyType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " variant=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getVariant()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " scheme=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getScheme()Lorg/jpos/security/KeyScheme;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lorg/jpos/security/SecureDESKey;->keyName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jpos/security/SecureDESKey;->keyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getKeyBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<check-value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureDESKey;->getKeyCheckValue()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</check-value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</secure-des-key>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public getScheme()Lorg/jpos/security/KeyScheme;
    .locals 6

    .line 143
    iget-object v0, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    return-object v0

    .line 148
    :cond_0
    iget-short v0, p0, Lorg/jpos/security/SecureDESKey;->keyLength:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 154
    :sswitch_0
    sget-object v0, Lorg/jpos/security/KeyScheme;->Y:Lorg/jpos/security/KeyScheme;

    iput-object v0, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    goto :goto_0

    .line 152
    :sswitch_1
    sget-object v0, Lorg/jpos/security/KeyScheme;->X:Lorg/jpos/security/KeyScheme;

    iput-object v0, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    goto :goto_0

    .line 150
    :sswitch_2
    sget-object v0, Lorg/jpos/security/KeyScheme;->Z:Lorg/jpos/security/KeyScheme;

    iput-object v0, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    .line 156
    :goto_0
    sget-object v0, Lorg/jpos/security/SecureDESKey;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/jpos/security/SecureDESKey;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 157
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 158
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/security/KeyScheme;->valueOf(Ljava/lang/String;)Lorg/jpos/security/KeyScheme;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not valid key scheme"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/jpos/security/SecureDESKey;->scheme:Lorg/jpos/security/KeyScheme;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getVariant()B
    .locals 5

    .line 124
    iget-object v0, p0, Lorg/jpos/security/SecureDESKey;->variant:Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/jpos/security/SecureDESKey;->variant:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/security/SecureDESKey;->variant:Ljava/lang/Byte;

    .line 130
    sget-object v0, Lorg/jpos/security/SecureDESKey;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/jpos/security/SecureDESKey;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 131
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 132
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/security/SecureDESKey;->variant:Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid key variant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jpos/security/SecureDESKey;->variant:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method
