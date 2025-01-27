.class public Lcom/dspread/xpos/j0;
.super Ljava/lang/Object;
.source "ProductionParameterManager.java"


# static fields
.field private static final c:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/j0;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private A(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private F(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 143
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 145
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    add-int/lit8 v3, v1, 0x10

    .line 146
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    invoke-static {v2, v1}, Lcom/dspread/xpos/j0;->a([B[B)[B

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/bean/c;)Z
    .locals 11

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->K()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->w()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->X()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->c()Ljava/lang/String;

    move-result-object v7

    .line 171
    :try_start_0
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 178
    :goto_0
    const-string v8, "2200"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x30

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 179
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 180
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 181
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    .line 186
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 187
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->L()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->x()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->Y()Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->d()Ljava/lang/String;

    move-result-object v7

    .line 192
    :try_start_1
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    .line 200
    :goto_1
    const-string v8, "2201"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 201
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 202
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 203
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    .line 208
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 209
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->N()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->z()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->a0()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->f()Ljava/lang/String;

    move-result-object v7

    .line 214
    :try_start_2
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    .line 221
    :goto_2
    const-string v8, "2202"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 222
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 223
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 224
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_2

    return v4

    .line 228
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 230
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->O()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->A()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->b0()Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->g()Ljava/lang/String;

    move-result-object v7

    .line 235
    :try_start_3
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    .line 242
    :goto_3
    const-string v8, "2203"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 243
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 244
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 245
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v4

    .line 248
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 251
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->P()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->B()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->c0()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->h()Ljava/lang/String;

    move-result-object v7

    .line 256
    :try_start_4
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v8

    .line 263
    :goto_4
    const-string v8, "2204"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 264
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 265
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 266
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_4

    return v4

    .line 270
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 272
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->Q()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->C()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->d0()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->i()Ljava/lang/String;

    move-result-object v7

    .line 277
    :try_start_5
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v8

    .line 284
    :goto_5
    const-string v8, "2205"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 285
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 286
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 287
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_5

    return v4

    .line 290
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 293
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->R()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->D()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->e0()Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->j()Ljava/lang/String;

    move-result-object v7

    .line 298
    :try_start_6
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v8

    .line 305
    :goto_6
    const-string v8, "2206"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 306
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 307
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 308
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_6

    return v4

    .line 312
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 314
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->S()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->E()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->f0()Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->k()Ljava/lang/String;

    move-result-object v7

    .line 319
    :try_start_7
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    .line 326
    :goto_7
    const-string v8, "2207"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 327
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 328
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 329
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_7

    return v4

    .line 332
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 334
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->T()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->F()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->g0()Ljava/lang/String;

    move-result-object v6

    .line 337
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->l()Ljava/lang/String;

    move-result-object v7

    .line 339
    :try_start_8
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 341
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    iget-object v8, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v8

    .line 346
    :goto_8
    const-string v8, "2208"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 347
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 348
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 349
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v3

    if-nez v3, :cond_8

    return v4

    .line 352
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 354
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->U()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->G()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->h0()Ljava/lang/String;

    move-result-object v6

    .line 357
    invoke-virtual {p2}, Lcom/dspread/xpos/bean/c;->m()Ljava/lang/String;

    move-result-object p2

    .line 359
    :try_start_9
    iget-object v7, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v7, v3}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v7, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v7, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    iget-object v7, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    iget-object v7, p0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {p0, v7, p2}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v7

    .line 366
    :goto_9
    const-string v7, "2209"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 367
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 368
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 369
    invoke-virtual {p2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    if-nez p1, :cond_9

    return v4

    .line 373
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return v1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 162
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/util/ArrayList;Lcom/dspread/xpos/bean/e;Lcom/dspread/xpos/bean/h;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dspread/xpos/bean/e;",
            "Lcom/dspread/xpos/bean/h;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->i()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->h()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->c()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->b()Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->f()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->e()Ljava/lang/String;

    move-result-object v7

    .line 381
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 382
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    const-string v12, "%02x"

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 383
    const-string v12, "2300"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 384
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->D()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 385
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->B()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 386
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 387
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 389
    invoke-virtual/range {p4 .. p4}, Lcom/dspread/xpos/bean/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 391
    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v2

    if-nez v2, :cond_0

    return v13

    .line 393
    :cond_0
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Lcom/dspread/xpos/bean/e;->a()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v13

    .line 396
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 397
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 399
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v13

    .line 400
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v9

    .line 401
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    .line 402
    aget-object v14, v5, v13

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    aget-object v14, v5, v9

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 404
    aget-object v14, v5, v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x3

    .line 406
    aget-object v14, v5, v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 407
    iget-object v15, v0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {v0, v15, v14}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 408
    const-string v15, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v9, 0x30

    invoke-virtual {v14, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    .line 411
    aget-object v9, v5, v16

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 412
    iget-object v12, v0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {v0, v12, v9}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 413
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x30

    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x5

    .line 416
    aget-object v5, v5, v16

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 417
    iget-object v12, v0, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    invoke-direct {v0, v12, v5}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-virtual {v5, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x30

    invoke-virtual {v5, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 419
    const-string v12, "230"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 420
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 421
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v5

    if-nez v5, :cond_1

    return v13

    .line 424
    :cond_1
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v9, 0x1

    const/16 v15, 0xe

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private a(Lcom/dspread/xpos/Vpos;[B)Z
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method public static a([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 156
    new-instance p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 157
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 158
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 159
    array-length v5, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    .line 160
    invoke-virtual {p0, v0, p1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object v0
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;[B)Z
    .locals 4

    .line 2
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x33

    const/16 v2, 0x20

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/j0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private f(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private g(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private h(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private i(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private j(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private k(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private l(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private m(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private n(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private o(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private p(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private q(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private r(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private s(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private t(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private u(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private v(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private w(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private x(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method private y(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 2
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    const v3, 0xffff

    if-le v1, v3, :cond_0

    return v2

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p2, p2

    add-int/2addr p2, v2

    .line 8
    new-array v1, p2, [B

    .line 10
    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x20

    const/16 v3, 0x80

    const/16 v4, 0xa

    invoke-direct {p2, v0, v3, v4, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/4 p2, 0x5

    .line 14
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/dspread/xpos/j0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return v2

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method protected B(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2401"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method protected C(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2400"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method protected D(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;[B)Z

    move-result p1

    return p1
.end method

.method protected E(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "21010A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->s(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/dspread/xpos/Vpos;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/bean/d;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    .line 1
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dspread/xpos/bean/e;

    .line 5
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dspread/xpos/bean/b;

    .line 8
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dspread/xpos/bean/f;

    .line 12
    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dspread/xpos/bean/h;

    .line 15
    const/4 v11, 0x4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dspread/xpos/bean/c;

    .line 18
    const/4 v12, 0x5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/dspread/xpos/bean/a;

    .line 22
    const-string v0, "0080E8A1BC1083375CE8233E115055A19C0D11E9B8FC8DE3F96F243EA3A041DDECFCA0C2DE6E462443750516C8FBD1AC61F35D855A28CE535A3FFF27D2452E19E11A063D1AF5BB0CCBEDCC593B842AA94D942E0198BD2503C6D15F1EF45A4D2D3B18B09B1421CEC7907CCBC9C42ED7309F52600F89A5204C0BD01D23F692D10D592B0003010001"

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->y(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyyMMddHHmmss"

    invoke-direct {v0, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 26
    const-string v13, "6000"

    invoke-static {v13}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 28
    array-length v14, v0

    array-length v15, v13

    add-int/2addr v14, v15

    new-array v15, v14, [B

    move v8, v4

    :goto_0
    if-ge v8, v14, :cond_1

    .line 30
    array-length v6, v13

    if-ge v8, v6, :cond_0

    .line 31
    aget-byte v6, v13, v8

    aput-byte v6, v15, v8

    goto :goto_1

    .line 33
    :cond_0
    array-length v6, v13

    sub-int v6, v8, v6

    aget-byte v6, v0, v6

    aput-byte v6, v15, v8

    :goto_1
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {v1, v2, v15}, Lcom/dspread/xpos/j0;->a(Lcom/dspread/xpos/Vpos;[B)Z

    .line 39
    invoke-virtual {v9}, Lcom/dspread/xpos/bean/f;->h()Ljava/lang/String;

    move-result-object v0

    const-string v6, "3015"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->v(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 40
    const-string v0, "2003AA998871"

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->w(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 44
    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->b()Ljava/lang/String;

    move-result-object v6

    .line 46
    const/16 v8, 0x10e

    const/16 v13, 0x210

    :try_start_0
    invoke-virtual {v5}, Lcom/dspread/xpos/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dspread/xpos/j0;->b:Ljava/lang/String;

    .line 47
    invoke-direct {v1, v0, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryp_key_config_rsa_puk:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 56
    :goto_2
    const-string v0, "2402"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->f(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 58
    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->o()Ljava/lang/String;

    move-result-object v6

    .line 60
    :try_start_1
    invoke-virtual {v5}, Lcom/dspread/xpos/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryp_key_mange_rsa_puk:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 69
    :goto_3
    const-string v0, "2403"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->k(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 73
    const-string v0, "100000000001"

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->F(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 75
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->u()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2101"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->s(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 76
    invoke-direct {v1, v2, v11}, Lcom/dspread/xpos/j0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/bean/c;)Z

    .line 77
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2108"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 79
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->w()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2100"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->q(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 80
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->m()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2102"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->m(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 81
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->K()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2103"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->l(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 82
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->g()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2104"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->h(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 83
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->y()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2105"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->r(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 84
    const-string v0, "2106"

    const-string v6, "0000000000000000000000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->e(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 85
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const-string v6, "%02x"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x30

    invoke-virtual {v6, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "2500"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->u(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 87
    :try_start_2
    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v2, v0, v5, v10}, Lcom/dspread/xpos/j0;->a(Lcom/dspread/xpos/Vpos;Ljava/util/ArrayList;Lcom/dspread/xpos/bean/e;Lcom/dspread/xpos/bean/h;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 91
    :goto_4
    invoke-virtual {v10}, Lcom/dspread/xpos/bean/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2107"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->i(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 92
    invoke-virtual {v9}, Lcom/dspread/xpos/bean/f;->p()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2000"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->t(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 93
    invoke-virtual {v9}, Lcom/dspread/xpos/bean/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2001"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {v7}, Lcom/dspread/xpos/bean/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    aget-byte v0, v0, v4

    const-string v6, "300C"

    const/16 v7, 0x8

    if-eq v0, v7, :cond_3

    const/16 v10, 0x9

    if-eq v0, v10, :cond_3

    .line 96
    iget-object v0, v1, Lcom/dspread/xpos/j0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->getFirwareType()Ljava/lang/String;

    move-result-object v0

    const-string v10, "a27cd"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    .line 102
    :cond_2
    invoke-virtual {v9}, Lcom/dspread/xpos/bean/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    goto :goto_6

    .line 103
    :cond_3
    :goto_5
    invoke-virtual {v12}, Lcom/dspread/xpos/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    const/4 v10, 0x2

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x14

    .line 105
    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 110
    :goto_6
    invoke-virtual {v12}, Lcom/dspread/xpos/bean/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 111
    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x24

    .line 112
    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "300A"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 114
    invoke-virtual {v9}, Lcom/dspread/xpos/bean/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2002"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->g(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 115
    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->I()Ljava/lang/String;

    move-result-object v6

    .line 117
    :try_start_3
    invoke-virtual {v5}, Lcom/dspread/xpos/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryp_key_pos_rsa_puk:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 125
    :goto_7
    const-string v0, "2400"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->p(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 126
    invoke-virtual {v11}, Lcom/dspread/xpos/bean/c;->H()Ljava/lang/String;

    move-result-object v6

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryp_key_pos_rsa_prk:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 130
    :try_start_4
    invoke-virtual {v5}, Lcom/dspread/xpos/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/dspread/xpos/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 132
    const-string v0, "0080"

    const/16 v5, 0x100

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 139
    :goto_8
    const-string v0, "2401"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->o(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    .line 140
    const-string v0, "2003AA998872"

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/j0;->j(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected z(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "300218"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/j0;->A(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
