.class public Lcom/sleepycat/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassReader;-><init>([B)V

    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 430
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sleepycat/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassReader;-><init>([B)V

    .line 433
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 143
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sleepycat/asm/ClassReader;-><init>([BII)V

    .line 144
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 159
    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x35

    if-gt v0, v1, :cond_2

    .line 163
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    .line 164
    array-length v0, v0

    .line 165
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sleepycat/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "max":I
    add-int/lit8 v2, p2, 0xa

    .line 168
    .local v2, "index":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 169
    iget-object v4, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v4, v3

    .line 171
    aget-byte v4, p1, v2

    packed-switch v4, :pswitch_data_0

    .line 201
    :pswitch_0
    const/4 v4, 0x3

    .local v4, "size":I
    goto :goto_1

    .line 193
    .end local v4    # "size":I
    :pswitch_1
    const/4 v4, 0x4

    .line 194
    .restart local v4    # "size":I
    goto :goto_1

    .line 183
    .end local v4    # "size":I
    :pswitch_2
    const/16 v4, 0x9

    .line 184
    .restart local v4    # "size":I
    add-int/lit8 v3, v3, 0x1

    .line 185
    goto :goto_1

    .line 179
    .end local v4    # "size":I
    :pswitch_3
    const/4 v4, 0x5

    .line 180
    .restart local v4    # "size":I
    goto :goto_1

    .line 187
    .end local v4    # "size":I
    :pswitch_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    .line 188
    .restart local v4    # "size":I
    if-le v4, v1, :cond_0

    .line 189
    move v1, v4

    .line 204
    :cond_0
    :goto_1
    add-int/2addr v2, v4

    .line 168
    .end local v4    # "size":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "i":I
    :cond_1
    iput v1, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    .line 208
    iput v2, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    .line 209
    return-void

    .line 160
    .end local v0    # "n":I
    .end local v1    # "max":I
    .end local v2    # "index":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private copyBootstrapMethods(Lcom/sleepycat/asm/ClassWriter;[Lcom/sleepycat/asm/Item;[C)V
    .locals 10
    .param p1, "classWriter"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "items"    # [Lcom/sleepycat/asm/Item;
    .param p3, "c"    # [C

    .line 373
    invoke-direct {p0}, Lcom/sleepycat/asm/ClassReader;->getAttributes()I

    move-result v0

    .line 374
    .local v0, "u":I
    const/4 v1, 0x0

    .line 375
    .local v1, "found":Z
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 376
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3, p3}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const/4 v1, 0x1

    .line 379
    goto :goto_1

    .line 381
    :cond_0
    add-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v0, v4

    .line 375
    .end local v3    # "attrName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 383
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 384
    return-void

    .line 387
    :cond_2
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 388
    .local v2, "boostrapMethodCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    add-int/lit8 v4, v0, 0xa

    .local v4, "v":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 389
    sub-int v5, v4, v0

    add-int/lit8 v5, v5, -0xa

    .line 390
    .local v5, "position":I
    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p3}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 391
    .local v6, "hashCode":I
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .local v7, "k":I
    :goto_3
    if-lez v7, :cond_3

    .line 392
    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p0, v8}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {p0, v8, p3}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v6, v8

    .line 393
    add-int/lit8 v4, v4, 0x2

    .line 391
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 395
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x4

    .line 396
    new-instance v7, Lcom/sleepycat/asm/Item;

    invoke-direct {v7, v3}, Lcom/sleepycat/asm/Item;-><init>(I)V

    .line 397
    .local v7, "item":Lcom/sleepycat/asm/Item;
    const v8, 0x7fffffff

    and-int/2addr v8, v6

    invoke-virtual {v7, v5, v8}, Lcom/sleepycat/asm/Item;->set(II)V

    .line 398
    iget v8, v7, Lcom/sleepycat/asm/Item;->hashCode:I

    array-length v9, p2

    rem-int/2addr v8, v9

    .line 399
    .local v8, "index":I
    aget-object v9, p2, v8

    iput-object v9, v7, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 400
    aput-object v7, p2, v8

    .line 388
    .end local v5    # "position":I
    .end local v6    # "hashCode":I
    .end local v7    # "item":Lcom/sleepycat/asm/Item;
    .end local v8    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 402
    .end local v3    # "j":I
    .end local v4    # "v":I
    :cond_4
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 403
    .local v3, "attrSize":I
    new-instance v4, Lcom/sleepycat/asm/ByteVector;

    add-int/lit8 v5, v3, 0x3e

    invoke-direct {v4, v5}, Lcom/sleepycat/asm/ByteVector;-><init>(I)V

    .line 404
    .local v4, "bootstrapMethods":Lcom/sleepycat/asm/ByteVector;
    iget-object v5, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v6, v0, 0xa

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 405
    iput v2, p1, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 406
    iput-object v4, p1, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    .line 407
    return-void
.end method

.method private createDebugLabel(I[Lcom/sleepycat/asm/Label;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 2389
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2390
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v0

    iget v1, v0, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 2392
    :cond_0
    return-void
.end method

.method private createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 2373
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v0

    .line 2374
    .local v0, "label":Lcom/sleepycat/asm/Label;
    iget v1, v0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 2375
    return-object v0
.end method

.method private getAttributes()I
    .locals 4

    .line 2401
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 2403
    .local v1, "u":I
    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 2404
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_0

    .line 2405
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2404
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2407
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 2403
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2409
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 2410
    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_3

    .line 2411
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "j":I
    :goto_3
    if-lez v2, :cond_2

    .line 2412
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2411
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2414
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x8

    .line 2410
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2417
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method private getImplicitFrame(Lcom/sleepycat/asm/Context;)V
    .locals 8
    .param p1, "frame"    # Lcom/sleepycat/asm/Context;

    .line 2145
    iget-object v0, p1, Lcom/sleepycat/asm/Context;->desc:Ljava/lang/String;

    .line 2146
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p1, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    .line 2147
    .local v1, "locals":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2148
    .local v2, "local":I
    iget v3, p1, Lcom/sleepycat/asm/Context;->access:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 2149
    iget-object v3, p1, Lcom/sleepycat/asm/Context;->name:Ljava/lang/String;

    const-string v4, "<init>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2150
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .local v3, "local":I
    sget-object v4, Lcom/sleepycat/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    .line 2152
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    iget v4, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p1, Lcom/sleepycat/asm/Context;->buffer:[C

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    .line 2155
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 2157
    .local v3, "i":I
    :goto_1
    move v4, v3

    .line 2158
    .local v4, "j":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3b

    sparse-switch v3, :sswitch_data_0

    .line 2194
    goto/16 :goto_6

    .line 2176
    :goto_2
    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_2

    .line 2177
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2179
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x4c

    if-ne v3, v7, :cond_3

    .line 2180
    add-int/lit8 v5, v5, 0x1

    .line 2181
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    .line 2182
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2185
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .local v3, "local":I
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 2186
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2188
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :goto_4
    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_4

    .line 2189
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2191
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 2192
    move v2, v3

    move v3, v7

    goto :goto_5

    .line 2170
    .end local v3    # "local":I
    .end local v7    # "i":I
    .restart local v2    # "local":I
    .restart local v5    # "i":I
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lcom/sleepycat/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2171
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2167
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lcom/sleepycat/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2168
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2173
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lcom/sleepycat/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2174
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2164
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_5
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lcom/sleepycat/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2165
    move v2, v3

    move v3, v5

    .line 2196
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v2    # "local":I
    .local v3, "i":I
    :goto_5
    goto :goto_1

    .line 2197
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :goto_6
    iput v2, p1, Lcom/sleepycat/asm/Context;->localCount:I

    .line 2198
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I
    .locals 8
    .param p1, "context"    # Lcom/sleepycat/asm/Context;
    .param p2, "u"    # I

    .line 1836
    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 1837
    .local v0, "target":I
    ushr-int/lit8 v1, v0, 0x18

    const/high16 v2, -0x1000000

    sparse-switch v1, :sswitch_data_0

    .line 1886
    ushr-int/lit8 v1, v0, 0x18

    const/16 v3, 0x43

    if-ge v1, v3, :cond_1

    const/16 v2, -0x100

    goto :goto_1

    .line 1873
    :sswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    .line 1874
    add-int/lit8 p2, p2, 0x4

    .line 1875
    goto :goto_2

    .line 1852
    :sswitch_1
    and-int/2addr v0, v2

    .line 1853
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1854
    .local v1, "n":I
    new-array v2, v1, [Lcom/sleepycat/asm/Label;

    iput-object v2, p1, Lcom/sleepycat/asm/Context;->start:[Lcom/sleepycat/asm/Label;

    .line 1855
    new-array v2, v1, [Lcom/sleepycat/asm/Label;

    iput-object v2, p1, Lcom/sleepycat/asm/Context;->end:[Lcom/sleepycat/asm/Label;

    .line 1856
    new-array v2, v1, [I

    iput-object v2, p1, Lcom/sleepycat/asm/Context;->index:[I

    .line 1857
    add-int/lit8 p2, p2, 0x3

    .line 1858
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1859
    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1860
    .local v3, "start":I
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1861
    .local v4, "length":I
    iget-object v5, p1, Lcom/sleepycat/asm/Context;->start:[Lcom/sleepycat/asm/Label;

    iget-object v6, p1, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    invoke-direct {p0, v3, v6}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1862
    iget-object v5, p1, Lcom/sleepycat/asm/Context;->end:[Lcom/sleepycat/asm/Label;

    add-int v6, v3, v4

    iget-object v7, p1, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    invoke-direct {p0, v6, v7}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1863
    iget-object v5, p1, Lcom/sleepycat/asm/Context;->index:[I

    add-int/lit8 v6, p2, 0x4

    invoke-virtual {p0, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aput v6, v5, v2

    .line 1864
    nop

    .end local v3    # "start":I
    .end local v4    # "length":I
    add-int/lit8 p2, p2, 0x6

    .line 1858
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1866
    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 1847
    .end local v1    # "n":I
    :sswitch_2
    and-int/2addr v0, v2

    .line 1848
    add-int/lit8 p2, p2, 0x1

    .line 1849
    goto :goto_2

    .line 1841
    :sswitch_3
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 1842
    add-int/lit8 p2, p2, 0x2

    .line 1843
    goto :goto_2

    .line 1886
    :cond_1
    :goto_1
    and-int/2addr v0, v2

    .line 1887
    add-int/lit8 p2, p2, 0x3

    .line 1890
    :goto_2
    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 1891
    .local v1, "pathLength":I
    iput v0, p1, Lcom/sleepycat/asm/Context;->typeRef:I

    .line 1892
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/sleepycat/asm/TypePath;

    iget-object v3, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    invoke-direct {v2, v3, p2}, Lcom/sleepycat/asm/TypePath;-><init>([BI)V

    :goto_3
    iput-object v2, p1, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 1893
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readAnnotationValue(I[CLjava/lang/String;Lcom/sleepycat/asm/AnnotationVisitor;)I
    .locals 7
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "av"    # Lcom/sleepycat/asm/AnnotationVisitor;

    .line 1994
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 1995
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 2003
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 1997
    :sswitch_0
    add-int/lit8 v0, p1, 0x5

    return v0

    .line 2001
    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, v0, v3}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 1999
    :sswitch_2
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v1, v3}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 2006
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "v":I
    .local v3, "v":I
    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_a

    .line 2033
    :sswitch_3
    invoke-virtual {p0, v3, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2034
    add-int/lit8 v3, v3, 0x2

    .line 2035
    goto/16 :goto_a

    .line 2037
    :sswitch_4
    invoke-virtual {p0, v3, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, p1, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    add-int/lit8 v3, v3, 0x4

    .line 2039
    goto/16 :goto_a

    .line 2041
    :sswitch_5
    invoke-virtual {p0, v3, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2042
    add-int/lit8 v3, v3, 0x2

    .line 2043
    goto/16 :goto_a

    .line 2049
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    .line 2050
    .local p1, "size":I
    add-int/lit8 v3, v3, 0x2

    .line 2051
    if-nez p1, :cond_1

    .line 2052
    add-int/lit8 v1, v3, -0x2

    .line 2053
    invoke-virtual {p4, p3}, Lcom/sleepycat/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v2

    .line 2052
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 2055
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "v":I
    .local v4, "v":I
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_2

    .line 2131
    add-int/lit8 v1, v4, -0x3

    invoke-virtual {p4, p3}, Lcom/sleepycat/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v2

    invoke-direct {p0, v1, p2, v0, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v3

    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2066
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_7
    new-array v2, p1, [Z

    .line 2067
    .local v2, "zv":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 2068
    iget-object v5, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    aput-boolean v5, v2, v3

    .line 2069
    add-int/lit8 v4, v4, 0x3

    .line 2067
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2071
    :cond_3
    invoke-virtual {p4, p3, v2}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2072
    add-int/lit8 v0, v4, -0x1

    .line 2073
    .end local v4    # "v":I
    .local v0, "v":I
    move v3, v0

    goto/16 :goto_a

    .line 2075
    .end local v0    # "v":I
    .end local v2    # "zv":[Z
    .end local v3    # "i":I
    .restart local v4    # "v":I
    :sswitch_8
    new-array v0, p1, [S

    .line 2076
    .local v0, "sv":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 2077
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 2078
    add-int/lit8 v4, v4, 0x3

    .line 2076
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2080
    :cond_4
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2081
    add-int/lit8 v3, v4, -0x1

    .line 2082
    .end local v4    # "v":I
    .local v3, "v":I
    goto/16 :goto_a

    .line 2102
    .end local v0    # "sv":[S
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_9
    new-array v0, p1, [J

    .line 2103
    .local v0, "lv":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, p1, :cond_5

    .line 2104
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2105
    add-int/lit8 v4, v4, 0x3

    .line 2103
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2107
    :cond_5
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2108
    add-int/lit8 v3, v4, -0x1

    .line 2109
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2093
    .end local v0    # "lv":[J
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_a
    new-array v0, p1, [I

    .line 2094
    .local v0, "iv":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, p1, :cond_6

    .line 2095
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 2096
    add-int/lit8 v4, v4, 0x3

    .line 2094
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2098
    :cond_6
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2099
    add-int/lit8 v3, v4, -0x1

    .line 2100
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2111
    .end local v0    # "iv":[I
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_b
    new-array v0, p1, [F

    .line 2112
    .local v0, "fv":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p1, :cond_7

    .line 2113
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    .line 2114
    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    .line 2115
    add-int/lit8 v4, v4, 0x3

    .line 2112
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2117
    :cond_7
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2118
    add-int/lit8 v3, v4, -0x1

    .line 2119
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2121
    .end local v0    # "fv":[F
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_c
    new-array v0, p1, [D

    .line 2122
    .local v0, "dv":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p1, :cond_8

    .line 2123
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    .line 2124
    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2125
    add-int/lit8 v4, v4, 0x3

    .line 2122
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2127
    :cond_8
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2128
    add-int/lit8 v3, v4, -0x1

    .line 2129
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2084
    .end local v0    # "dv":[D
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_d
    new-array v0, p1, [C

    .line 2085
    .local v0, "cv":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p1, :cond_9

    .line 2086
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 2087
    add-int/lit8 v4, v4, 0x3

    .line 2085
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2089
    :cond_9
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2090
    add-int/lit8 v3, v4, -0x1

    .line 2091
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2057
    .end local v0    # "cv":[C
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_e
    new-array v0, p1, [B

    .line 2058
    .local v0, "bv":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p1, :cond_a

    .line 2059
    iget-object v2, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2060
    add-int/lit8 v4, v4, 0x3

    .line 2058
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2062
    :cond_a
    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2063
    add-int/lit8 v3, v4, -0x1

    .line 2064
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2019
    .end local v0    # "bv":[B
    .end local v1    # "i":I
    .end local p1    # "size":I
    :sswitch_f
    iget-object p1, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    .line 2020
    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2019
    :goto_9
    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2022
    add-int/lit8 v3, v3, 0x2

    .line 2023
    goto :goto_a

    .line 2025
    :sswitch_10
    iget-object p1, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2026
    add-int/lit8 v3, v3, 0x2

    .line 2027
    goto :goto_a

    .line 2011
    :sswitch_11
    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2012
    add-int/lit8 v3, v3, 0x2

    .line 2013
    goto :goto_a

    .line 2029
    :sswitch_12
    iget-object p1, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2030
    add-int/lit8 v3, v3, 0x2

    .line 2031
    goto :goto_a

    .line 2015
    :sswitch_13
    iget-object p1, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2016
    add-int/lit8 v3, v3, 0x2

    .line 2017
    goto :goto_a

    .line 2045
    :sswitch_14
    add-int/lit8 p1, v3, 0x2

    .line 2046
    invoke-virtual {p0, v3, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 2045
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v3

    .line 2047
    nop

    .line 2134
    :goto_a
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x5b -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_14
        0x42 -> :sswitch_13
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x46 -> :sswitch_11
        0x49 -> :sswitch_11
        0x4a -> :sswitch_11
        0x53 -> :sswitch_10
        0x5a -> :sswitch_f
        0x5b -> :sswitch_6
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x73 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_e
        0x43 -> :sswitch_d
        0x44 -> :sswitch_c
        0x46 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_9
        0x53 -> :sswitch_8
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method private readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I
    .locals 3
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "named"    # Z
    .param p4, "av"    # Lcom/sleepycat/asm/AnnotationVisitor;

    .line 1958
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1959
    .local v0, "i":I
    add-int/lit8 p1, p1, 0x2

    .line 1960
    if-eqz p3, :cond_0

    .line 1961
    :goto_0
    if-lez v0, :cond_1

    .line 1962
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p4}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lcom/sleepycat/asm/AnnotationVisitor;)I

    move-result p1

    .line 1961
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1965
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 1966
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lcom/sleepycat/asm/AnnotationVisitor;)I

    move-result p1

    .line 1965
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1969
    :cond_1
    if-eqz p4, :cond_2

    .line 1970
    invoke-virtual {p4}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnd()V

    .line 1972
    :cond_2
    return p1
.end method

.method private readAttribute([Lcom/sleepycat/asm/Attribute;Ljava/lang/String;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;
    .locals 11
    .param p1, "attrs"    # [Lcom/sleepycat/asm/Attribute;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "buf"    # [C
    .param p6, "codeOff"    # I
    .param p7, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 2456
    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2457
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/sleepycat/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2458
    aget-object v4, v0, v2

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/sleepycat/asm/Attribute;->read(Lcom/sleepycat/asm/ClassReader;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v3

    return-object v3

    .line 2456
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2461
    .end local v2    # "i":I
    :cond_1
    new-instance v3, Lcom/sleepycat/asm/Attribute;

    invoke-direct {v3, p2}, Lcom/sleepycat/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/asm/Attribute;->read(Lcom/sleepycat/asm/ClassReader;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v2

    return-object v2
.end method

.method private static readClass(Ljava/io/InputStream;Z)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    if-eqz p0, :cond_7

    .line 452
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 453
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 455
    .local v1, "len":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 456
    .local v2, "n":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 457
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 458
    new-array v3, v1, [B

    .line 459
    .local v3, "c":[B
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    move-object v0, v3

    .line 462
    .end local v3    # "c":[B
    :cond_0
    nop

    .line 477
    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 462
    :cond_1
    return-object v0

    .line 464
    :cond_2
    add-int/2addr v1, v2

    .line 465
    :try_start_1
    array-length v3, v0

    if-ne v1, v3, :cond_5

    .line 466
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    .local v3, "last":I
    if-gez v3, :cond_4

    .line 468
    nop

    .line 477
    if-eqz p1, :cond_3

    .line 478
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 468
    :cond_3
    return-object v0

    .line 470
    :cond_4
    :try_start_2
    array-length v5, v0

    add-int/lit16 v5, v5, 0x3e8

    new-array v5, v5, [B

    .line 471
    .local v5, "c":[B
    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "len":I
    .local v4, "len":I
    int-to-byte v6, v3

    aput-byte v6, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    move-object v0, v5

    move v1, v4

    .line 475
    .end local v2    # "n":I
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v5    # "c":[B
    .restart local v1    # "len":I
    :cond_5
    goto :goto_0

    .line 477
    .end local v0    # "b":[B
    .end local v1    # "len":I
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_6

    .line 478
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    .line 449
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCode(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;I)V
    .locals 48
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "u"    # I

    .line 1147
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v0, p3

    iget-object v13, v7, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 1148
    .local v13, "b":[B
    iget-object v12, v14, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 1149
    .local v12, "c":[C
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 1150
    .local v11, "maxStack":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 1151
    .local v10, "maxLocals":I
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v9

    .line 1152
    .local v9, "codeLength":I
    const/16 v8, 0x8

    add-int/2addr v0, v8

    .line 1155
    .end local p3    # "u":I
    .local v0, "u":I
    move/from16 v16, v0

    .line 1156
    .local v16, "codeStart":I
    add-int v6, v0, v9

    .line 1157
    .local v6, "codeEnd":I
    add-int/lit8 v1, v9, 0x2

    new-array v1, v1, [Lcom/sleepycat/asm/Label;

    iput-object v1, v14, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    move-object v5, v1

    .line 1158
    .local v5, "labels":[Lcom/sleepycat/asm/Label;
    add-int/lit8 v1, v9, 0x1

    invoke-direct {v7, v1, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1159
    :goto_0
    const/16 v4, 0x84

    const/4 v3, 0x1

    if-ge v0, v6, :cond_3

    .line 1160
    sub-int v1, v0, v16

    .line 1161
    .local v1, "offset":I
    aget-byte v2, v13, v0

    and-int/lit16 v2, v2, 0xff

    .line 1162
    .local v2, "opcode":I
    sget-object v17, Lcom/sleepycat/asm/ClassWriter;->TYPE:[B

    aget-byte v17, v17, v2

    packed-switch v17, :pswitch_data_0

    .line 1228
    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_3

    .line 1172
    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v7, v3, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1173
    add-int/lit8 v0, v0, 0x3

    .line 1174
    goto/16 :goto_3

    .line 1181
    :pswitch_2
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v13, v3

    and-int/lit16 v2, v3, 0xff

    .line 1182
    if-ne v2, v4, :cond_0

    .line 1183
    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_3

    .line 1185
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 1187
    goto/16 :goto_3

    .line 1201
    :pswitch_3
    add-int/lit8 v3, v0, 0x4

    and-int/lit8 v4, v1, 0x3

    sub-int/2addr v3, v4

    .line 1203
    .end local v0    # "u":I
    .local v3, "u":I
    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v7, v0, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1204
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 1205
    add-int/lit8 v4, v3, 0xc

    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v7, v4, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1206
    add-int/lit8 v3, v3, 0x8

    .line 1204
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1208
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x8

    .line 1209
    move v0, v3

    goto :goto_3

    .line 1190
    .end local v3    # "u":I
    .local v0, "u":I
    :pswitch_4
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v17, v1, 0x3

    sub-int v4, v4, v17

    .line 1192
    .end local v0    # "u":I
    .local v4, "u":I
    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v7, v0, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1193
    add-int/lit8 v0, v4, 0x8

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v8

    sub-int/2addr v0, v8

    add-int/2addr v0, v3

    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_2

    .line 1194
    add-int/lit8 v3, v4, 0xc

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v7, v3, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1195
    add-int/lit8 v4, v4, 0x4

    .line 1193
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1197
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0xc

    .line 1198
    move v0, v4

    goto :goto_3

    .line 1177
    .end local v4    # "u":I
    .local v0, "u":I
    :pswitch_5
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v7, v3, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1178
    add-int/lit8 v0, v0, 0x5

    .line 1179
    goto :goto_3

    .line 1168
    :pswitch_6
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readShort(I)S

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v7, v3, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1169
    add-int/lit8 v0, v0, 0x3

    .line 1170
    goto :goto_3

    .line 1224
    :pswitch_7
    add-int/lit8 v0, v0, 0x5

    .line 1225
    goto :goto_3

    .line 1220
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    .line 1221
    goto :goto_3

    .line 1213
    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    .line 1214
    goto :goto_3

    .line 1165
    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    .line 1166
    nop

    .line 1231
    .end local v1    # "offset":I
    .end local v2    # "opcode":I
    :goto_3
    const/16 v8, 0x8

    goto/16 :goto_0

    .line 1234
    :cond_3
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "i":I
    :goto_4
    if-lez v1, :cond_4

    .line 1235
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-direct {v7, v2, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v2

    .line 1236
    .local v2, "start":Lcom/sleepycat/asm/Label;
    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-direct {v7, v8, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v8

    .line 1237
    .local v8, "end":Lcom/sleepycat/asm/Label;
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {v7, v4, v5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v4

    .line 1238
    .local v4, "handler":Lcom/sleepycat/asm/Label;
    iget-object v3, v7, Lcom/sleepycat/asm/ClassReader;->items:[I

    move/from16 v19, v6

    .end local v6    # "codeEnd":I
    .local v19, "codeEnd":I
    add-int/lit8 v6, v0, 0x8

    invoke-virtual {v7, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v3, v3, v6

    invoke-virtual {v7, v3, v12}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v15, v2, v8, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitTryCatchBlock(Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Ljava/lang/String;)V

    .line 1240
    nop

    .end local v2    # "start":Lcom/sleepycat/asm/Label;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "handler":Lcom/sleepycat/asm/Label;
    .end local v8    # "end":Lcom/sleepycat/asm/Label;
    add-int/lit8 v0, v0, 0x8

    .line 1234
    add-int/lit8 v1, v1, -0x1

    move/from16 v6, v19

    const/4 v3, 0x1

    const/16 v4, 0x84

    goto :goto_4

    .end local v19    # "codeEnd":I
    .restart local v6    # "codeEnd":I
    :cond_4
    move/from16 v19, v6

    .line 1242
    .end local v1    # "i":I
    .end local v6    # "codeEnd":I
    .restart local v19    # "codeEnd":I
    add-int/lit8 v0, v0, 0x2

    .line 1245
    const/4 v1, 0x0

    .line 1246
    .local v1, "tanns":[I
    const/4 v2, 0x0

    .line 1247
    .local v2, "itanns":[I
    const/4 v8, 0x0

    .line 1248
    .local v8, "tann":I
    const/16 v20, 0x0

    .line 1249
    .local v20, "itann":I
    const/4 v3, -0x1

    .line 1250
    .local v3, "ntoff":I
    const/4 v4, -0x1

    .line 1251
    .local v4, "nitoff":I
    const/4 v6, 0x0

    .line 1252
    .local v6, "varTable":I
    const/16 v21, 0x0

    .line 1253
    .local v21, "varTypeTable":I
    const/16 v22, 0x1

    .line 1254
    .local v22, "zip":Z
    move-object/from16 v23, v1

    .end local v1    # "tanns":[I
    .local v23, "tanns":[I
    iget v1, v14, Lcom/sleepycat/asm/Context;->flags:I

    const/16 v17, 0x8

    and-int/lit8 v1, v1, 0x8

    move/from16 v24, v8

    .end local v8    # "tann":I
    .local v24, "tann":I
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 1255
    .local v1, "unzip":Z
    :goto_5
    const/16 v25, 0x0

    .line 1256
    .local v25, "stackMap":I
    const/16 v26, 0x0

    .line 1257
    .local v26, "stackMapSize":I
    const/16 v27, 0x0

    .line 1258
    .local v27, "frameCount":I
    const/16 v28, 0x0

    .line 1259
    .local v28, "frame":Lcom/sleepycat/asm/Context;
    const/16 v29, 0x0

    .line 1261
    .local v29, "attributes":Lcom/sleepycat/asm/Attribute;
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v30

    move/from16 v47, v21

    move/from16 v21, v0

    move/from16 v0, v22

    move/from16 v22, v3

    move v3, v6

    move-object/from16 v6, v23

    move/from16 v23, v4

    move-object v4, v2

    move/from16 v2, v47

    .local v0, "zip":Z
    .local v2, "varTypeTable":I
    .local v3, "varTable":I
    .local v4, "itanns":[I
    .local v6, "tanns":[I
    .local v21, "u":I
    .local v22, "ntoff":I
    .local v23, "nitoff":I
    .local v30, "i":I
    :goto_6
    move-object/from16 v31, v4

    .end local v4    # "itanns":[I
    .local v31, "itanns":[I
    move/from16 v32, v3

    .end local v3    # "varTable":I
    .local v32, "varTable":I
    if-lez v30, :cond_1b

    .line 1262
    add-int/lit8 v3, v21, 0x2

    invoke-virtual {v7, v3, v12}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1263
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "LocalVariableTable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1264
    iget v4, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    .line 1265
    add-int/lit8 v4, v21, 0x8

    .line 1266
    .end local v32    # "varTable":I
    .local v4, "varTable":I
    add-int/lit8 v8, v21, 0x8

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .local v8, "j":I
    move/from16 v32, v21

    .local v32, "v":I
    :goto_7
    if-lez v8, :cond_6

    .line 1267
    move/from16 v36, v0

    .end local v0    # "zip":Z
    .local v36, "zip":Z
    add-int/lit8 v0, v32, 0xa

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1268
    .local v0, "label":I
    invoke-direct {v7, v0, v5}, Lcom/sleepycat/asm/ClassReader;->createDebugLabel(I[Lcom/sleepycat/asm/Label;)V

    .line 1269
    move/from16 v37, v1

    .end local v1    # "unzip":Z
    .local v37, "unzip":Z
    add-int/lit8 v1, v32, 0xc

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1270
    invoke-direct {v7, v0, v5}, Lcom/sleepycat/asm/ClassReader;->createDebugLabel(I[Lcom/sleepycat/asm/Label;)V

    .line 1271
    nop

    .end local v0    # "label":I
    add-int/lit8 v32, v32, 0xa

    .line 1266
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    goto :goto_7

    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .local v0, "zip":Z
    .restart local v1    # "unzip":Z
    :cond_6
    move/from16 v36, v0

    move/from16 v37, v1

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    move-object/from16 v18, v3

    move v3, v4

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v15, v37

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v8    # "j":I
    .end local v32    # "v":I
    goto/16 :goto_11

    .line 1264
    .end local v4    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v0    # "zip":Z
    .restart local v1    # "unzip":Z
    .local v32, "varTable":I
    :cond_7
    move/from16 v36, v0

    move/from16 v37, v1

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    move/from16 v38, v2

    const/4 v4, 0x1

    goto/16 :goto_e

    .line 1274
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v0    # "zip":Z
    .restart local v1    # "unzip":Z
    :cond_8
    move/from16 v36, v0

    move/from16 v37, v1

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1275
    add-int/lit8 v0, v21, 0x8

    move v2, v0

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v2    # "varTypeTable":I
    .local v0, "varTypeTable":I
    goto/16 :goto_11

    .line 1276
    .end local v0    # "varTypeTable":I
    .restart local v2    # "varTypeTable":I
    :cond_9
    const-string v0, "LineNumberTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1277
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 1278
    add-int/lit8 v0, v21, 0x8

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "j":I
    move/from16 v1, v21

    .local v1, "v":I
    :goto_8
    if-lez v0, :cond_c

    .line 1279
    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1280
    .local v4, "label":I
    invoke-direct {v7, v4, v5}, Lcom/sleepycat/asm/ClassReader;->createDebugLabel(I[Lcom/sleepycat/asm/Label;)V

    .line 1281
    aget-object v8, v5, v4

    .line 1282
    .local v8, "l":Lcom/sleepycat/asm/Label;
    :goto_9
    move/from16 v38, v2

    .end local v2    # "varTypeTable":I
    .local v38, "varTypeTable":I
    iget v2, v8, Lcom/sleepycat/asm/Label;->line:I

    if-lez v2, :cond_b

    .line 1283
    iget-object v2, v8, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    if-nez v2, :cond_a

    .line 1284
    new-instance v2, Lcom/sleepycat/asm/Label;

    invoke-direct {v2}, Lcom/sleepycat/asm/Label;-><init>()V

    iput-object v2, v8, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1286
    :cond_a
    iget-object v8, v8, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    move/from16 v2, v38

    goto :goto_9

    .line 1288
    :cond_b
    add-int/lit8 v2, v1, 0xc

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    iput v2, v8, Lcom/sleepycat/asm/Label;->line:I

    .line 1289
    nop

    .end local v4    # "label":I
    .end local v8    # "l":Lcom/sleepycat/asm/Label;
    add-int/lit8 v1, v1, 0x4

    .line 1278
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v38

    goto :goto_8

    .end local v38    # "varTypeTable":I
    .restart local v2    # "varTypeTable":I
    :cond_c
    move/from16 v38, v2

    .end local v2    # "varTypeTable":I
    .restart local v38    # "varTypeTable":I
    const/4 v4, 0x1

    .end local v0    # "j":I
    .end local v1    # "v":I
    goto/16 :goto_e

    .line 1277
    .end local v38    # "varTypeTable":I
    .restart local v2    # "varTypeTable":I
    :cond_d
    move/from16 v38, v2

    .end local v2    # "varTypeTable":I
    .restart local v38    # "varTypeTable":I
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 1292
    .end local v38    # "varTypeTable":I
    .restart local v2    # "varTypeTable":I
    :cond_e
    move/from16 v38, v2

    .end local v2    # "varTypeTable":I
    .restart local v38    # "varTypeTable":I
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1293
    add-int/lit8 v0, v21, 0x8

    const/4 v1, 0x1

    invoke-direct {v7, v15, v14, v0, v1}, Lcom/sleepycat/asm/ClassReader;->readTypeAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)[I

    move-result-object v0

    .line 1294
    .end local v6    # "tanns":[I
    .local v0, "tanns":[I
    array-length v1, v0

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v2

    const/16 v4, 0x43

    if-ge v2, v4, :cond_f

    goto :goto_a

    :cond_f
    aget v2, v0, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1295
    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v33, v1

    goto :goto_b

    .line 1294
    :cond_10
    :goto_a
    const/16 v33, -0x1

    .line 1295
    :goto_b
    move/from16 v1, v33

    move-object v6, v0

    move/from16 v22, v1

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v22    # "ntoff":I
    .local v1, "ntoff":I
    goto/16 :goto_11

    .line 1296
    .end local v0    # "tanns":[I
    .end local v1    # "ntoff":I
    .restart local v6    # "tanns":[I
    .restart local v22    # "ntoff":I
    :cond_11
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1297
    add-int/lit8 v0, v21, 0x8

    const/4 v1, 0x0

    invoke-direct {v7, v15, v14, v0, v1}, Lcom/sleepycat/asm/ClassReader;->readTypeAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)[I

    move-result-object v0

    .line 1298
    .end local v31    # "itanns":[I
    .local v0, "itanns":[I
    array-length v2, v0

    if-eqz v2, :cond_13

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v2

    const/16 v4, 0x43

    if-ge v2, v4, :cond_12

    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    aget v2, v0, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1299
    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v33, v1

    goto :goto_d

    .line 1298
    :cond_13
    const/4 v4, 0x1

    :goto_c
    const/16 v33, -0x1

    .line 1299
    :goto_d
    move/from16 v1, v33

    move-object v4, v0

    move/from16 v23, v1

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v31, v12

    move/from16 v12, v19

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    .end local v23    # "nitoff":I
    .local v1, "nitoff":I
    goto/16 :goto_11

    .line 1300
    .end local v0    # "itanns":[I
    .end local v1    # "nitoff":I
    .restart local v23    # "nitoff":I
    .restart local v31    # "itanns":[I
    :cond_14
    const/4 v4, 0x1

    const-string v0, "StackMapTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1301
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_16

    .line 1302
    add-int/lit8 v0, v21, 0xa

    .line 1303
    .end local v25    # "stackMap":I
    .local v0, "stackMap":I
    add-int/lit8 v1, v21, 0x4

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 1304
    .end local v26    # "stackMapSize":I
    .local v1, "stackMapSize":I
    add-int/lit8 v2, v21, 0x8

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v27    # "frameCount":I
    .local v2, "frameCount":I
    goto/16 :goto_11

    .line 1324
    .end local v0    # "stackMap":I
    .end local v1    # "stackMapSize":I
    .end local v2    # "frameCount":I
    .restart local v25    # "stackMap":I
    .restart local v26    # "stackMapSize":I
    .restart local v27    # "frameCount":I
    :cond_15
    const-string v0, "StackMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1325
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_16

    .line 1326
    const/4 v0, 0x0

    .line 1327
    .end local v36    # "zip":Z
    .local v0, "zip":Z
    add-int/lit8 v1, v21, 0xa

    .line 1328
    .end local v25    # "stackMap":I
    .local v1, "stackMap":I
    add-int/lit8 v2, v21, 0x4

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    .line 1329
    .end local v26    # "stackMapSize":I
    .local v2, "stackMapSize":I
    add-int/lit8 v8, v21, 0x8

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v27, v8

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v27    # "frameCount":I
    .local v8, "frameCount":I
    goto/16 :goto_11

    .line 1348
    .end local v0    # "zip":Z
    .end local v1    # "stackMap":I
    .end local v8    # "frameCount":I
    .end local v38    # "varTypeTable":I
    .local v2, "varTypeTable":I
    .restart local v25    # "stackMap":I
    .restart local v26    # "stackMapSize":I
    .restart local v27    # "frameCount":I
    .restart local v36    # "zip":Z
    :cond_16
    :goto_e
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v2    # "varTypeTable":I
    .restart local v38    # "varTypeTable":I
    goto/16 :goto_11

    .line 1337
    :cond_17
    const/4 v0, 0x0

    move v8, v0

    move-object/from16 v2, v29

    .end local v29    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v2, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v8, "j":I
    :goto_f
    iget-object v0, v14, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    array-length v0, v0

    if-ge v8, v0, :cond_1a

    .line 1338
    iget-object v0, v14, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/sleepycat/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1339
    iget-object v0, v14, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    aget-object v0, v0, v8

    add-int/lit8 v18, v21, 0x8

    add-int/lit8 v1, v21, 0x4

    .line 1340
    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v29

    add-int/lit8 v33, v16, -0x8

    .line 1339
    move/from16 v1, v36

    .end local v36    # "zip":Z
    .local v1, "zip":Z
    move/from16 v39, v1

    move/from16 v15, v37

    .end local v1    # "zip":Z
    .end local v37    # "unzip":Z
    .local v15, "unzip":Z
    .local v39, "zip":Z
    move-object/from16 v1, p0

    move/from16 v34, v9

    move/from16 v40, v38

    move-object v9, v2

    .end local v2    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v34, "codeLength":I
    .local v40, "varTypeTable":I
    move/from16 v2, v18

    move-object/from16 v18, v3

    move/from16 v4, v32

    .end local v3    # "attrName":Ljava/lang/String;
    .end local v32    # "varTable":I
    .local v4, "varTable":I
    .local v18, "attrName":Ljava/lang/String;
    move/from16 v3, v29

    move/from16 v42, v4

    move-object/from16 v43, v31

    .end local v4    # "varTable":I
    .end local v31    # "itanns":[I
    .local v42, "varTable":I
    .local v43, "itanns":[I
    move-object v4, v12

    move-object/from16 p3, v5

    .end local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .local p3, "labels":[Lcom/sleepycat/asm/Label;
    move/from16 v5, v33

    move-object/from16 v45, v6

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .local v12, "codeEnd":I
    .local v31, "c":[C
    .local v45, "tanns":[I
    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/Attribute;->read(Lcom/sleepycat/asm/ClassReader;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v0

    .line 1341
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    if-eqz v0, :cond_19

    .line 1342
    iput-object v9, v0, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1343
    move-object v1, v0

    move-object v2, v1

    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "attributes":Lcom/sleepycat/asm/Attribute;
    goto :goto_10

    .line 1338
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    .end local v1    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v15    # "unzip":Z
    .end local v18    # "attrName":Ljava/lang/String;
    .end local v34    # "codeLength":I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v42    # "varTable":I
    .end local v43    # "itanns":[I
    .end local v45    # "tanns":[I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v2    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v3    # "attrName":Ljava/lang/String;
    .restart local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v6    # "tanns":[I
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    :cond_18
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v45, v6

    move/from16 v34, v9

    move-object/from16 v43, v31

    move/from16 v42, v32

    move/from16 v39, v36

    move/from16 v15, v37

    move/from16 v40, v38

    move-object v9, v2

    move-object/from16 v31, v12

    move/from16 v12, v19

    .line 1337
    .end local v2    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .end local v32    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .restart local v18    # "attrName":Ljava/lang/String;
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v42    # "varTable":I
    .restart local v43    # "itanns":[I
    .restart local v45    # "tanns":[I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_19
    move-object v2, v9

    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v2    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p3

    move/from16 v19, v12

    move/from16 v37, v15

    move-object/from16 v3, v18

    move-object/from16 v12, v31

    move/from16 v9, v34

    move/from16 v36, v39

    move/from16 v38, v40

    move/from16 v32, v42

    move-object/from16 v31, v43

    move-object/from16 v6, v45

    const/4 v4, 0x1

    move-object/from16 v15, p1

    goto/16 :goto_f

    .end local v15    # "unzip":Z
    .end local v18    # "attrName":Ljava/lang/String;
    .end local v34    # "codeLength":I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v42    # "varTable":I
    .end local v43    # "itanns":[I
    .end local v45    # "tanns":[I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v3    # "attrName":Ljava/lang/String;
    .restart local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v6    # "tanns":[I
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    :cond_1a
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v45, v6

    move/from16 v34, v9

    move-object/from16 v43, v31

    move/from16 v42, v32

    move/from16 v39, v36

    move/from16 v15, v37

    move/from16 v40, v38

    move-object v9, v2

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v2    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .end local v32    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .restart local v18    # "attrName":Ljava/lang/String;
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v42    # "varTable":I
    .restart local v43    # "itanns":[I
    .restart local v45    # "tanns":[I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    move-object/from16 v29, v9

    move/from16 v0, v39

    move/from16 v2, v40

    move/from16 v3, v42

    move-object/from16 v4, v43

    .line 1348
    .end local v8    # "j":I
    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v42    # "varTable":I
    .end local v43    # "itanns":[I
    .end local v45    # "tanns":[I
    .local v0, "zip":Z
    .local v2, "varTypeTable":I
    .local v3, "varTable":I
    .local v4, "itanns":[I
    .restart local v6    # "tanns":[I
    .restart local v29    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_11
    add-int/lit8 v1, v21, 0x4

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int v21, v21, v1

    .line 1261
    .end local v18    # "attrName":Ljava/lang/String;
    add-int/lit8 v30, v30, -0x1

    move-object/from16 v5, p3

    move/from16 v19, v12

    move v1, v15

    move-object/from16 v12, v31

    move/from16 v9, v34

    move-object/from16 v15, p1

    goto/16 :goto_6

    .end local v3    # "varTable":I
    .end local v4    # "itanns":[I
    .end local v15    # "unzip":Z
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .local v1, "unzip":Z
    .restart local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    :cond_1b
    move/from16 v39, v0

    move v15, v1

    move/from16 v40, v2

    move-object/from16 p3, v5

    move-object/from16 v45, v6

    move/from16 v34, v9

    move-object/from16 v43, v31

    move/from16 v42, v32

    const/16 v4, 0x43

    move-object/from16 v31, v12

    move/from16 v12, v19

    .line 1350
    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .end local v5    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v6    # "tanns":[I
    .end local v9    # "codeLength":I
    .end local v19    # "codeEnd":I
    .end local v30    # "i":I
    .end local v32    # "varTable":I
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v42    # "varTable":I
    .restart local v43    # "itanns":[I
    .restart local v45    # "tanns":[I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    add-int/lit8 v21, v21, 0x2

    .line 1353
    if-eqz v25, :cond_22

    .line 1359
    move-object/from16 v0, p2

    .line 1360
    .end local v28    # "frame":Lcom/sleepycat/asm/Context;
    .local v0, "frame":Lcom/sleepycat/asm/Context;
    const/4 v3, -0x1

    iput v3, v0, Lcom/sleepycat/asm/Context;->offset:I

    .line 1361
    const/4 v1, 0x0

    iput v1, v0, Lcom/sleepycat/asm/Context;->mode:I

    .line 1362
    iput v1, v0, Lcom/sleepycat/asm/Context;->localCount:I

    .line 1363
    iput v1, v0, Lcom/sleepycat/asm/Context;->localDiff:I

    .line 1364
    iput v1, v0, Lcom/sleepycat/asm/Context;->stackCount:I

    .line 1365
    new-array v1, v10, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    .line 1366
    new-array v1, v11, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    .line 1367
    if-eqz v15, :cond_1c

    .line 1368
    invoke-direct {v7, v14}, Lcom/sleepycat/asm/ClassReader;->getImplicitFrame(Lcom/sleepycat/asm/Context;)V

    .line 1381
    :cond_1c
    move/from16 v1, v25

    .local v1, "i":I
    :goto_12
    add-int v2, v25, v26

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_21

    .line 1382
    aget-byte v2, v13, v1

    const/16 v5, 0x8

    if-ne v2, v5, :cond_20

    .line 1383
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1384
    .local v2, "v":I
    if-ltz v2, :cond_1f

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .restart local v9    # "codeLength":I
    if-ge v2, v9, :cond_1e

    .line 1385
    add-int v5, v16, v2

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xbb

    if-ne v5, v6, :cond_1d

    .line 1386
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .local v8, "labels":[Lcom/sleepycat/asm/Label;
    invoke-direct {v7, v2, v8}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    goto :goto_13

    .line 1385
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_1d
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    goto :goto_13

    .line 1384
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_1e
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    goto :goto_13

    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_1f
    move-object/from16 v8, p3

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "codeLength":I
    goto :goto_13

    .line 1382
    .end local v2    # "v":I
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_20
    move-object/from16 v8, p3

    move/from16 v9, v34

    .line 1381
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "codeLength":I
    :goto_13
    add-int/lit8 v1, v1, 0x1

    move-object/from16 p3, v8

    move/from16 v34, v9

    goto :goto_12

    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_21
    move-object/from16 v8, p3

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "codeLength":I
    move-object/from16 v28, v0

    goto :goto_14

    .line 1353
    .end local v0    # "frame":Lcom/sleepycat/asm/Context;
    .end local v1    # "i":I
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v28    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_22
    move-object/from16 v8, p3

    move/from16 v9, v34

    const/4 v3, -0x1

    .line 1392
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "codeLength":I
    :goto_14
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_23

    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 1405
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move v2, v10

    move-object v3, v5

    move v5, v4

    move v4, v6

    move v6, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_15

    .line 1392
    :cond_23
    move v6, v4

    .line 1409
    :goto_15
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_24

    const/16 v1, -0x21

    goto :goto_16

    :cond_24
    const/4 v1, 0x0

    :goto_16
    move/from16 v18, v1

    .line 1410
    .local v18, "opcodeDelta":I
    const/4 v0, 0x0

    .line 1411
    .local v0, "insertFrame":Z
    move/from16 v1, v16

    move/from16 v19, v0

    move v5, v1

    .line 1412
    .end local v0    # "insertFrame":Z
    .end local v21    # "u":I
    .local v5, "u":I
    .local v19, "insertFrame":Z
    :goto_17
    const/4 v4, 0x0

    if-ge v5, v12, :cond_43

    .line 1413
    sub-int v3, v5, v16

    .line 1416
    .local v3, "offset":I
    aget-object v2, v8, v3

    .line 1417
    .local v2, "l":Lcom/sleepycat/asm/Label;
    if-eqz v2, :cond_25

    .line 1418
    iget-object v0, v2, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1419
    .local v0, "next":Lcom/sleepycat/asm/Label;
    iput-object v4, v2, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1420
    move v4, v15

    move-object/from16 v15, p1

    .end local v15    # "unzip":Z
    .local v4, "unzip":Z
    invoke-virtual {v15, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1421
    iget v1, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_26

    iget v1, v2, Lcom/sleepycat/asm/Label;->line:I

    if-lez v1, :cond_26

    .line 1422
    iget v1, v2, Lcom/sleepycat/asm/Label;->line:I

    invoke-virtual {v15, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitLineNumber(ILcom/sleepycat/asm/Label;)V

    .line 1423
    :goto_18
    if-eqz v0, :cond_26

    .line 1424
    iget v1, v0, Lcom/sleepycat/asm/Label;->line:I

    invoke-virtual {v15, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitLineNumber(ILcom/sleepycat/asm/Label;)V

    .line 1425
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    goto :goto_18

    .line 1417
    .end local v0    # "next":Lcom/sleepycat/asm/Label;
    .end local v4    # "unzip":Z
    .restart local v15    # "unzip":Z
    :cond_25
    move v4, v15

    move-object/from16 v15, p1

    .line 1431
    .end local v15    # "unzip":Z
    .restart local v4    # "unzip":Z
    :cond_26
    move/from16 v1, v25

    move-object/from16 v0, v28

    .end local v25    # "stackMap":I
    .end local v28    # "frame":Lcom/sleepycat/asm/Context;
    .local v0, "frame":Lcom/sleepycat/asm/Context;
    .local v1, "stackMap":I
    :goto_19
    if-eqz v0, :cond_2d

    iget v6, v0, Lcom/sleepycat/asm/Context;->offset:I

    if-eq v6, v3, :cond_28

    iget v6, v0, Lcom/sleepycat/asm/Context;->offset:I

    move/from16 v21, v10

    const/4 v10, -0x1

    .end local v10    # "maxLocals":I
    .local v21, "maxLocals":I
    if-ne v6, v10, :cond_27

    goto :goto_1a

    :cond_27
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v9, v4

    goto/16 :goto_1e

    .end local v21    # "maxLocals":I
    .restart local v10    # "maxLocals":I
    :cond_28
    move/from16 v21, v10

    const/4 v10, -0x1

    .line 1435
    .end local v10    # "maxLocals":I
    .restart local v21    # "maxLocals":I
    :goto_1a
    iget v6, v0, Lcom/sleepycat/asm/Context;->offset:I

    if-eq v6, v10, :cond_2b

    .line 1436
    move/from16 v6, v39

    .end local v39    # "zip":Z
    .local v6, "zip":Z
    if-eqz v6, :cond_2a

    if-eqz v4, :cond_29

    move-object/from16 p3, v2

    move v10, v3

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v33, v11

    move/from16 v36, v12

    move-object v11, v0

    move v12, v1

    move v9, v4

    goto :goto_1b

    .line 1440
    :cond_29
    iget v10, v0, Lcom/sleepycat/asm/Context;->mode:I

    move-object/from16 p3, v2

    .end local v2    # "l":Lcom/sleepycat/asm/Label;
    .local p3, "l":Lcom/sleepycat/asm/Label;
    iget v2, v0, Lcom/sleepycat/asm/Context;->localDiff:I

    move/from16 v30, v3

    .end local v3    # "offset":I
    .local v30, "offset":I
    iget-object v3, v0, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    move/from16 v37, v4

    .end local v4    # "unzip":Z
    .restart local v37    # "unzip":Z
    iget v4, v0, Lcom/sleepycat/asm/Context;->stackCount:I

    move/from16 v32, v5

    .end local v5    # "u":I
    .local v32, "u":I
    iget-object v5, v0, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    move/from16 v33, v11

    move-object v11, v0

    .end local v0    # "frame":Lcom/sleepycat/asm/Context;
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .local v33, "maxStack":I
    move-object/from16 v0, p1

    move/from16 v36, v12

    move v12, v1

    .end local v1    # "stackMap":I
    .local v12, "stackMap":I
    .local v36, "codeEnd":I
    move v1, v10

    move-object/from16 v10, p3

    .end local p3    # "l":Lcom/sleepycat/asm/Label;
    .local v10, "l":Lcom/sleepycat/asm/Label;
    move/from16 v10, v30

    .end local v30    # "offset":I
    .local v10, "offset":I
    .restart local p3    # "l":Lcom/sleepycat/asm/Label;
    move/from16 v30, v9

    move/from16 v9, v37

    .end local v37    # "unzip":Z
    .local v9, "unzip":Z
    .local v30, "codeLength":I
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1c

    .line 1436
    .end local v10    # "offset":I
    .end local v30    # "codeLength":I
    .end local v32    # "u":I
    .end local v33    # "maxStack":I
    .end local v36    # "codeEnd":I
    .end local p3    # "l":Lcom/sleepycat/asm/Label;
    .restart local v0    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lcom/sleepycat/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    :cond_2a
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v33, v11

    move/from16 v36, v12

    move-object v11, v0

    move v12, v1

    move v9, v4

    .line 1437
    .end local v0    # "frame":Lcom/sleepycat/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lcom/sleepycat/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .local v9, "unzip":Z
    .restart local v10    # "offset":I
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .local v12, "stackMap":I
    .restart local v30    # "codeLength":I
    .restart local v32    # "u":I
    .restart local v33    # "maxStack":I
    .restart local v36    # "codeEnd":I
    .restart local p3    # "l":Lcom/sleepycat/asm/Label;
    :goto_1b
    const/4 v1, -0x1

    iget v2, v11, Lcom/sleepycat/asm/Context;->localCount:I

    iget-object v3, v11, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    iget v4, v11, Lcom/sleepycat/asm/Context;->stackCount:I

    iget-object v5, v11, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 1445
    :goto_1c
    const/4 v0, 0x0

    move/from16 v19, v0

    .end local v19    # "insertFrame":Z
    .local v0, "insertFrame":Z
    goto :goto_1d

    .line 1435
    .end local v6    # "zip":Z
    .end local v10    # "offset":I
    .end local v30    # "codeLength":I
    .end local v32    # "u":I
    .end local v33    # "maxStack":I
    .end local v36    # "codeEnd":I
    .end local p3    # "l":Lcom/sleepycat/asm/Label;
    .local v0, "frame":Lcom/sleepycat/asm/Context;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lcom/sleepycat/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v19    # "insertFrame":Z
    .restart local v39    # "zip":Z
    :cond_2b
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v9, v4

    .line 1447
    .end local v0    # "frame":Lcom/sleepycat/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lcom/sleepycat/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v10    # "offset":I
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .local v12, "stackMap":I
    .restart local v30    # "codeLength":I
    .restart local v32    # "u":I
    .restart local v33    # "maxStack":I
    .restart local v36    # "codeEnd":I
    .restart local p3    # "l":Lcom/sleepycat/asm/Label;
    :goto_1d
    if-lez v27, :cond_2c

    .line 1448
    invoke-direct {v7, v12, v6, v9, v11}, Lcom/sleepycat/asm/ClassReader;->readFrame(IZZLcom/sleepycat/asm/Context;)I

    move-result v1

    .line 1449
    .end local v12    # "stackMap":I
    .restart local v1    # "stackMap":I
    add-int/lit8 v27, v27, -0x1

    move-object/from16 v2, p3

    move/from16 v39, v6

    move v4, v9

    move v3, v10

    move-object v0, v11

    move/from16 v10, v21

    move/from16 v9, v30

    move/from16 v5, v32

    move/from16 v11, v33

    move/from16 v12, v36

    const/16 v6, 0x43

    goto/16 :goto_19

    .line 1451
    .end local v1    # "stackMap":I
    .restart local v12    # "stackMap":I
    :cond_2c
    const/4 v0, 0x0

    move-object/from16 v2, p3

    move/from16 v39, v6

    move v4, v9

    move v3, v10

    move v1, v12

    move/from16 v10, v21

    move/from16 v9, v30

    move/from16 v5, v32

    move/from16 v11, v33

    move/from16 v12, v36

    const/16 v6, 0x43

    .end local v11    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v0    # "frame":Lcom/sleepycat/asm/Context;
    goto/16 :goto_19

    .line 1431
    .end local v6    # "zip":Z
    .end local v21    # "maxLocals":I
    .end local v30    # "codeLength":I
    .end local v32    # "u":I
    .end local v33    # "maxStack":I
    .end local v36    # "codeEnd":I
    .end local p3    # "l":Lcom/sleepycat/asm/Label;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lcom/sleepycat/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v10, "maxLocals":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v39    # "zip":Z
    :cond_2d
    move-object/from16 p3, v2

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v21, v10

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v10, v3

    move v9, v4

    .line 1457
    .end local v0    # "frame":Lcom/sleepycat/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lcom/sleepycat/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v10, "offset":I
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .local v12, "stackMap":I
    .restart local v21    # "maxLocals":I
    .restart local v30    # "codeLength":I
    .restart local v32    # "u":I
    .restart local v33    # "maxStack":I
    .restart local v36    # "codeEnd":I
    .restart local p3    # "l":Lcom/sleepycat/asm/Label;
    :goto_1e
    if-eqz v19, :cond_2e

    .line 1458
    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 1459
    const/16 v19, 0x0

    .line 1463
    :cond_2e
    aget-byte v0, v13, v32

    and-int/lit16 v4, v0, 0xff

    .line 1464
    .local v4, "opcode":I
    sget-object v0, Lcom/sleepycat/asm/ClassWriter;->TYPE:[B

    aget-byte v0, v0, v4

    const/16 v1, 0xc8

    packed-switch v0, :pswitch_data_1

    .line 1637
    :pswitch_b
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .local v44, "frame":Lcom/sleepycat/asm/Context;
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5, v9}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v32, 0x3

    aget-byte v1, v13, v5

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 1638
    add-int/lit8 v5, v32, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    .end local v32    # "u":I
    .restart local v5    # "u":I
    goto/16 :goto_29

    .line 1518
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_c
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v10, v0

    aget-object v0, v8, v3

    invoke-virtual {v15, v1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1522
    const/4 v0, 0x1

    .line 1523
    .end local v19    # "insertFrame":Z
    .local v0, "insertFrame":Z
    add-int/lit8 v5, v32, 0x5

    .line 1524
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v19, v0

    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1493
    .end local v0    # "insertFrame":Z
    .end local v5    # "u":I
    .restart local v19    # "insertFrame":Z
    .restart local v32    # "u":I
    :pswitch_d
    const/16 v0, 0xda

    if-ge v4, v0, :cond_2f

    add-int/lit8 v0, v4, -0x31

    goto :goto_1f

    :cond_2f
    add-int/lit8 v0, v4, -0x14

    .line 1494
    .end local v4    # "opcode":I
    .local v0, "opcode":I
    :goto_1f
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int v3, v10, v2

    aget-object v2, v8, v3

    .line 1500
    .local v2, "target":Lcom/sleepycat/asm/Label;
    const/16 v3, 0xa7

    if-eq v0, v3, :cond_32

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_30

    const/4 v5, 0x1

    goto :goto_21

    .line 1503
    :cond_30
    const/16 v3, 0xa6

    if-gt v0, v3, :cond_31

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    sub-int/2addr v3, v5

    goto :goto_20

    :cond_31
    const/4 v5, 0x1

    xor-int/lit8 v3, v0, 0x1

    :goto_20
    move v0, v3

    .line 1505
    add-int/lit8 v3, v10, 0x3

    invoke-direct {v7, v3, v8}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v3

    .line 1506
    .local v3, "endif":Lcom/sleepycat/asm/Label;
    invoke-virtual {v15, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1507
    invoke-virtual {v15, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1511
    const/16 v19, 0x1

    move v4, v0

    goto :goto_22

    .line 1500
    .end local v3    # "endif":Lcom/sleepycat/asm/Label;
    :cond_32
    const/4 v5, 0x1

    .line 1501
    :goto_21
    add-int/lit8 v1, v0, 0x21

    invoke-virtual {v15, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    move v4, v0

    .line 1513
    .end local v0    # "opcode":I
    .restart local v4    # "opcode":I
    :goto_22
    add-int/lit8 v0, v32, 0x3

    .line 1514
    .end local v32    # "u":I
    .local v0, "u":I
    move v5, v0

    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1527
    .end local v0    # "u":I
    .end local v2    # "target":Lcom/sleepycat/asm/Label;
    .restart local v32    # "u":I
    :pswitch_e
    const/4 v5, 0x1

    add-int/lit8 v0, v32, 0x1

    aget-byte v0, v13, v0

    and-int/lit16 v4, v0, 0xff

    .line 1528
    const/16 v3, 0x84

    if-ne v4, v3, :cond_33

    .line 1529
    add-int/lit8 v0, v32, 0x2

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v32, 0x4

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readShort(I)S

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1530
    add-int/lit8 v0, v32, 0x6

    move v5, v0

    move/from16 v38, v3

    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v32    # "u":I
    .restart local v0    # "u":I
    goto/16 :goto_29

    .line 1532
    .end local v0    # "u":I
    .restart local v32    # "u":I
    :cond_33
    add-int/lit8 v0, v32, 0x2

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v15, v4, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1533
    add-int/lit8 v0, v32, 0x4

    .line 1535
    .end local v32    # "u":I
    .restart local v0    # "u":I
    move v5, v0

    move/from16 v38, v3

    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    goto/16 :goto_29

    .line 1554
    .end local v0    # "u":I
    .restart local v32    # "u":I
    :pswitch_f
    const/16 v3, 0x84

    const/4 v5, 0x1

    add-int/lit8 v0, v32, 0x4

    and-int/lit8 v1, v10, 0x3

    sub-int/2addr v0, v1

    .line 1556
    .end local v32    # "u":I
    .restart local v0    # "u":I
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v10

    .line 1557
    .local v1, "label":I
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    .line 1558
    .local v2, "len":I
    new-array v3, v2, [I

    .line 1559
    .local v3, "keys":[I
    new-array v5, v2, [Lcom/sleepycat/asm/Label;

    .line 1560
    .local v5, "values":[Lcom/sleepycat/asm/Label;
    const/16 v17, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 1561
    const/16 v25, 0x0

    move/from16 v39, v6

    move/from16 v6, v25

    .local v6, "i":I
    .restart local v39    # "zip":Z
    :goto_23
    if-ge v6, v2, :cond_34

    .line 1562
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v25

    aput v25, v3, v6

    .line 1563
    move/from16 v25, v2

    .end local v2    # "len":I
    .local v25, "len":I
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v10

    aget-object v2, v8, v2

    aput-object v2, v5, v6

    .line 1564
    add-int/lit8 v0, v0, 0x8

    .line 1561
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v25

    goto :goto_23

    .end local v25    # "len":I
    .restart local v2    # "len":I
    :cond_34
    move/from16 v25, v2

    .line 1566
    .end local v2    # "len":I
    .end local v6    # "i":I
    .restart local v25    # "len":I
    aget-object v2, v8, v1

    invoke-virtual {v15, v2, v3, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitLookupSwitchInsn(Lcom/sleepycat/asm/Label;[I[Lcom/sleepycat/asm/Label;)V

    .line 1567
    move v5, v0

    move/from16 v37, v9

    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1538
    .end local v0    # "u":I
    .end local v1    # "label":I
    .end local v3    # "keys":[I
    .end local v5    # "values":[Lcom/sleepycat/asm/Label;
    .end local v25    # "len":I
    .end local v39    # "zip":Z
    .local v6, "zip":Z
    .restart local v32    # "u":I
    :pswitch_10
    move/from16 v39, v6

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .restart local v39    # "zip":Z
    add-int/lit8 v5, v32, 0x4

    and-int/lit8 v0, v10, 0x3

    sub-int/2addr v5, v0

    .line 1540
    .end local v32    # "u":I
    .local v5, "u":I
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v10, v0

    .line 1541
    .local v3, "label":I
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 1542
    .local v0, "min":I
    add-int/lit8 v1, v5, 0x8

    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 1543
    .local v1, "max":I
    sub-int v2, v1, v0

    const/4 v6, 0x1

    add-int/2addr v2, v6

    new-array v2, v2, [Lcom/sleepycat/asm/Label;

    .line 1544
    .local v2, "table":[Lcom/sleepycat/asm/Label;
    add-int/lit8 v5, v5, 0xc

    .line 1545
    const/16 v25, 0x0

    move/from16 v6, v25

    .local v6, "i":I
    :goto_24
    move/from16 v37, v9

    .end local v9    # "unzip":Z
    .restart local v37    # "unzip":Z
    array-length v9, v2

    if-ge v6, v9, :cond_35

    .line 1546
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v10

    aget-object v9, v8, v9

    aput-object v9, v2, v6

    .line 1547
    add-int/lit8 v5, v5, 0x4

    .line 1545
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v37

    goto :goto_24

    .line 1549
    .end local v6    # "i":I
    :cond_35
    aget-object v6, v8, v3

    invoke-virtual {v15, v0, v1, v6, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 1550
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1632
    .end local v0    # "min":I
    .end local v1    # "max":I
    .end local v2    # "table":[Lcom/sleepycat/asm/Label;
    .end local v3    # "label":I
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .local v6, "zip":Z
    .restart local v9    # "unzip":Z
    .restart local v32    # "u":I
    :pswitch_11
    move/from16 v39, v6

    move/from16 v37, v9

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v9    # "unzip":Z
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    add-int/lit8 v5, v32, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v32, 0x2

    aget-byte v1, v13, v5

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1633
    add-int/lit8 v5, v32, 0x3

    .line 1634
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1586
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .restart local v9    # "unzip":Z
    .restart local v32    # "u":I
    :pswitch_12
    move/from16 v39, v6

    move/from16 v37, v9

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v9    # "unzip":Z
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move-object/from16 v9, v31

    .end local v31    # "c":[C
    .local v9, "c":[C
    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1587
    add-int/lit8 v5, v32, 0x3

    .line 1588
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1582
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_13
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    add-int/lit8 v5, v32, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1583
    add-int/lit8 v5, v32, 0x2

    .line 1584
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1485
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_14
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    add-int v0, v4, v18

    add-int/lit8 v5, v32, 0x1

    .line 1486
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int v3, v10, v1

    aget-object v1, v8, v3

    .line 1485
    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1487
    add-int/lit8 v5, v32, 0x5

    .line 1488
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1481
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_15
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v3, v10, v0

    aget-object v0, v8, v3

    invoke-virtual {v15, v4, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1482
    add-int/lit8 v5, v32, 0x3

    .line 1483
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1610
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_16
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    iget-object v0, v7, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 1611
    .local v0, "cpIndex":I
    iget-object v1, v14, Lcom/sleepycat/asm/Context;->bootstrapMethods:[I

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 1612
    .local v1, "bsmIndex":I
    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v9}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/asm/Handle;

    .line 1613
    .local v2, "bsm":Lcom/sleepycat/asm/Handle;
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1614
    .local v3, "bsmArgCount":I
    new-array v5, v3, [Ljava/lang/Object;

    .line 1615
    .local v5, "bsmArgs":[Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x4

    .line 1616
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_25
    if-ge v6, v3, :cond_36

    .line 1617
    move/from16 v25, v3

    .end local v3    # "bsmArgCount":I
    .local v25, "bsmArgCount":I
    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v7, v3, v9}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    .line 1618
    add-int/lit8 v1, v1, 0x2

    .line 1616
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v25

    goto :goto_25

    .end local v25    # "bsmArgCount":I
    .restart local v3    # "bsmArgCount":I
    :cond_36
    move/from16 v25, v3

    .line 1620
    .end local v3    # "bsmArgCount":I
    .end local v6    # "i":I
    .restart local v25    # "bsmArgCount":I
    iget-object v3, v7, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v7, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v0, v3, v6

    .line 1621
    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1622
    .local v3, "iname":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v7, v6, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1623
    .local v6, "idesc":Ljava/lang/String;
    invoke-virtual {v15, v3, v6, v2, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)V

    .line 1624
    add-int/lit8 v28, v32, 0x5

    .line 1625
    .end local v32    # "u":I
    .local v28, "u":I
    move-object/from16 v44, v11

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v5, v28

    const/16 v38, 0x84

    goto/16 :goto_29

    .line 1591
    .end local v0    # "cpIndex":I
    .end local v1    # "bsmIndex":I
    .end local v2    # "bsm":Lcom/sleepycat/asm/Handle;
    .end local v3    # "iname":Ljava/lang/String;
    .end local v5    # "bsmArgs":[Ljava/lang/Object;
    .end local v25    # "bsmArgCount":I
    .end local v28    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_17
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    iget-object v0, v7, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 1592
    .restart local v0    # "cpIndex":I
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v13, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_37

    const/4 v5, 0x1

    goto :goto_26

    :cond_37
    const/4 v5, 0x0

    :goto_26
    const/4 v6, 0x1

    .line 1593
    .local v5, "itf":Z
    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1594
    .local v3, "iowner":Ljava/lang/String;
    iget-object v1, v7, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v2, v1, v2

    .line 1595
    .end local v0    # "cpIndex":I
    .local v2, "cpIndex":I
    invoke-virtual {v7, v2, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, "iname":Ljava/lang/String;
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "idesc":Ljava/lang/String;
    const/16 v6, 0xb6

    if-ge v4, v6, :cond_38

    .line 1598
    invoke-virtual {v15, v4, v3, v1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move-object/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v44, v11

    const/16 v38, 0x84

    move v11, v4

    goto :goto_27

    .line 1600
    :cond_38
    move-object v6, v0

    .end local v0    # "idesc":Ljava/lang/String;
    .local v6, "idesc":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v25, v1

    .end local v1    # "iname":Ljava/lang/String;
    .local v25, "iname":Ljava/lang/String;
    move v1, v4

    move/from16 v28, v2

    .end local v2    # "cpIndex":I
    .local v28, "cpIndex":I
    move-object v2, v3

    move-object/from16 v31, v3

    const/16 v38, 0x84

    .end local v3    # "iowner":Ljava/lang/String;
    .local v31, "iowner":Ljava/lang/String;
    move-object/from16 v3, v25

    move-object/from16 v44, v11

    move v11, v4

    .end local v4    # "opcode":I
    .local v11, "opcode":I
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1602
    :goto_27
    const/16 v0, 0xb9

    if-ne v11, v0, :cond_39

    .line 1603
    add-int/lit8 v0, v32, 0x5

    move v5, v0

    move v4, v11

    move/from16 v0, v22

    move/from16 v1, v24

    .end local v32    # "u":I
    .local v0, "u":I
    goto/16 :goto_29

    .line 1605
    .end local v0    # "u":I
    .restart local v32    # "u":I
    :cond_39
    add-int/lit8 v0, v32, 0x3

    .line 1607
    .end local v32    # "u":I
    .restart local v0    # "u":I
    move v5, v0

    move v4, v11

    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_29

    .line 1628
    .end local v0    # "u":I
    .end local v5    # "itf":Z
    .end local v25    # "iname":Ljava/lang/String;
    .end local v28    # "cpIndex":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .local v31, "c":[C
    .restart local v32    # "u":I
    :pswitch_18
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5, v9}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1629
    add-int/lit8 v5, v32, 0x3

    .line 1630
    .end local v32    # "u":I
    .local v5, "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_29

    .line 1470
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_19
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    const/16 v0, 0x36

    if-le v11, v0, :cond_3a

    .line 1471
    add-int/lit8 v4, v11, -0x3b

    .line 1472
    .end local v11    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v1, v4, 0x2

    add-int/2addr v1, v0

    and-int/lit8 v0, v4, 0x3

    invoke-virtual {v15, v1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_28

    .line 1475
    .end local v4    # "opcode":I
    .restart local v11    # "opcode":I
    :cond_3a
    add-int/lit8 v4, v11, -0x1a

    .line 1476
    .end local v11    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v4, 0x3

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1478
    :goto_28
    add-int/lit8 v5, v32, 0x1

    .line 1479
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_29

    .line 1570
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_1a
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    add-int/lit8 v5, v32, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v15, v11, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1571
    add-int/lit8 v5, v32, 0x2

    .line 1572
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_29

    .line 1578
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_1b
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v15, v11, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1579
    add-int/lit8 v5, v32, 0x3

    .line 1580
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_29

    .line 1574
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_1c
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    add-int/lit8 v5, v32, 0x1

    aget-byte v0, v13, v5

    invoke-virtual {v15, v11, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1575
    add-int/lit8 v5, v32, 0x2

    .line 1576
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_29

    .line 1466
    .end local v5    # "u":I
    .end local v37    # "unzip":Z
    .end local v39    # "zip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v4    # "opcode":I
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v11, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v32    # "u":I
    :pswitch_1d
    move/from16 v39, v6

    move/from16 v37, v9

    move-object/from16 v44, v11

    move-object/from16 v9, v31

    const/16 v17, 0x8

    const/16 v38, 0x84

    move v11, v4

    .end local v4    # "opcode":I
    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .local v11, "opcode":I
    .restart local v37    # "unzip":Z
    .restart local v39    # "zip":Z
    .restart local v44    # "frame":Lcom/sleepycat/asm/Context;
    invoke-virtual {v15, v11}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1467
    add-int/lit8 v5, v32, 0x1

    .line 1468
    .end local v32    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    .line 1643
    .end local v11    # "opcode":I
    .end local v22    # "ntoff":I
    .end local v24    # "tann":I
    .local v0, "ntoff":I
    .local v1, "tann":I
    .restart local v4    # "opcode":I
    :goto_29
    move-object/from16 v11, v45

    .end local v45    # "tanns":[I
    .local v11, "tanns":[I
    if-eqz v11, :cond_3e

    array-length v2, v11

    if-ge v1, v2, :cond_3e

    if-gt v0, v10, :cond_3e

    .line 1644
    if-ne v0, v10, :cond_3b

    .line 1645
    aget v2, v11, v1

    invoke-direct {v7, v14, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 1646
    .local v2, "v":I
    add-int/lit8 v3, v2, 0x2

    iget v6, v14, Lcom/sleepycat/asm/Context;->typeRef:I

    move/from16 v22, v0

    .end local v0    # "ntoff":I
    .restart local v22    # "ntoff":I
    iget-object v0, v14, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 1648
    move/from16 v24, v4

    .end local v4    # "opcode":I
    .local v24, "opcode":I
    invoke-virtual {v7, v2, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1647
    move/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v25, "v":I
    invoke-virtual {v15, v6, v0, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsnAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 1646
    invoke-direct {v7, v3, v9, v2, v0}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    goto :goto_2a

    .line 1644
    .end local v22    # "ntoff":I
    .end local v24    # "opcode":I
    .end local v25    # "v":I
    .restart local v0    # "ntoff":I
    .restart local v4    # "opcode":I
    :cond_3b
    move/from16 v22, v0

    move/from16 v24, v4

    .line 1650
    .end local v0    # "ntoff":I
    .end local v4    # "opcode":I
    .restart local v22    # "ntoff":I
    .restart local v24    # "opcode":I
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    array-length v0, v11

    if-ge v1, v0, :cond_3d

    aget v0, v11, v1

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v2, 0x43

    if-ge v0, v2, :cond_3c

    goto :goto_2b

    :cond_3c
    aget v0, v11, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1651
    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    goto :goto_2c

    .line 1650
    :cond_3d
    :goto_2b
    const/4 v3, -0x1

    .line 1651
    :goto_2c
    move v0, v3

    move-object/from16 v45, v11

    move/from16 v4, v24

    .end local v22    # "ntoff":I
    .restart local v0    # "ntoff":I
    goto :goto_29

    .line 1643
    .end local v24    # "opcode":I
    .restart local v4    # "opcode":I
    :cond_3e
    move/from16 v22, v0

    move/from16 v24, v4

    .line 1653
    .end local v0    # "ntoff":I
    .end local v4    # "opcode":I
    .restart local v22    # "ntoff":I
    .restart local v24    # "opcode":I
    move/from16 v0, v20

    move/from16 v2, v23

    .end local v20    # "itann":I
    .end local v23    # "nitoff":I
    .local v0, "itann":I
    .local v2, "nitoff":I
    :goto_2d
    move-object/from16 v6, v43

    .end local v43    # "itanns":[I
    .local v6, "itanns":[I
    if-eqz v6, :cond_42

    array-length v3, v6

    if-ge v0, v3, :cond_42

    if-gt v2, v10, :cond_42

    .line 1654
    if-ne v2, v10, :cond_3f

    .line 1655
    aget v3, v6, v0

    invoke-direct {v7, v14, v3}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v3

    .line 1656
    .local v3, "v":I
    add-int/lit8 v4, v3, 0x2

    move/from16 v25, v1

    .end local v1    # "tann":I
    .local v25, "tann":I
    iget v1, v14, Lcom/sleepycat/asm/Context;->typeRef:I

    move/from16 v20, v2

    .end local v2    # "nitoff":I
    .local v20, "nitoff":I
    iget-object v2, v14, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 1658
    move/from16 v28, v5

    .end local v5    # "u":I
    .local v28, "u":I
    invoke-virtual {v7, v3, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1657
    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "v":I
    .local v23, "v":I
    invoke-virtual {v15, v1, v2, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsnAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v1

    .line 1656
    const/4 v2, 0x1

    invoke-direct {v7, v4, v9, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    goto :goto_2e

    .line 1654
    .end local v20    # "nitoff":I
    .end local v23    # "v":I
    .end local v25    # "tann":I
    .end local v28    # "u":I
    .restart local v1    # "tann":I
    .restart local v2    # "nitoff":I
    .restart local v5    # "u":I
    :cond_3f
    move/from16 v25, v1

    move/from16 v20, v2

    move/from16 v28, v5

    const/4 v3, 0x0

    .line 1660
    .end local v1    # "tann":I
    .end local v2    # "nitoff":I
    .end local v5    # "u":I
    .restart local v20    # "nitoff":I
    .restart local v25    # "tann":I
    .restart local v28    # "u":I
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    array-length v1, v6

    if-ge v0, v1, :cond_41

    aget v1, v6, v0

    .line 1661
    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v2, 0x43

    if-ge v1, v2, :cond_40

    const/16 v31, 0x1

    goto :goto_2f

    :cond_40
    aget v1, v6, v0

    const/16 v31, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1662
    invoke-virtual {v7, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_30

    .line 1660
    :cond_41
    const/16 v2, 0x43

    const/16 v31, 0x1

    .line 1661
    :goto_2f
    const/4 v1, -0x1

    .line 1662
    :goto_30
    move v2, v1

    move-object/from16 v43, v6

    move/from16 v1, v25

    move/from16 v5, v28

    .end local v20    # "nitoff":I
    .local v1, "nitoff":I
    goto :goto_2d

    .line 1653
    .end local v25    # "tann":I
    .end local v28    # "u":I
    .local v1, "tann":I
    .restart local v2    # "nitoff":I
    .restart local v5    # "u":I
    :cond_42
    move/from16 v25, v1

    move/from16 v20, v2

    move/from16 v28, v5

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/16 v31, 0x1

    .line 1664
    .end local v1    # "tann":I
    .end local v2    # "nitoff":I
    .end local v5    # "u":I
    .end local v10    # "offset":I
    .end local v24    # "opcode":I
    .end local p3    # "l":Lcom/sleepycat/asm/Label;
    .restart local v20    # "nitoff":I
    .restart local v25    # "tann":I
    .restart local v28    # "u":I
    move-object/from16 v43, v6

    move-object/from16 v31, v9

    move-object/from16 v45, v11

    move/from16 v23, v20

    move/from16 v10, v21

    move/from16 v24, v25

    move/from16 v5, v28

    move/from16 v9, v30

    move/from16 v11, v33

    move/from16 v15, v37

    move-object/from16 v28, v44

    move/from16 v20, v0

    move v6, v2

    move/from16 v25, v12

    move/from16 v12, v36

    goto/16 :goto_17

    .line 1665
    .end local v0    # "itann":I
    .end local v6    # "itanns":[I
    .end local v21    # "maxLocals":I
    .end local v30    # "codeLength":I
    .end local v33    # "maxStack":I
    .end local v36    # "codeEnd":I
    .end local v37    # "unzip":Z
    .end local v44    # "frame":Lcom/sleepycat/asm/Context;
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v10, "maxLocals":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .local v20, "itann":I
    .local v23, "nitoff":I
    .local v24, "tann":I
    .local v25, "stackMap":I
    .local v28, "frame":Lcom/sleepycat/asm/Context;
    .restart local v31    # "c":[C
    .restart local v43    # "itanns":[I
    .restart local v45    # "tanns":[I
    :cond_43
    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v21, v10

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v37, v15

    move-object/from16 v9, v31

    move-object/from16 v6, v43

    move-object/from16 v11, v45

    const/16 v31, 0x1

    move-object/from16 v15, p1

    .end local v5    # "u":I
    .end local v10    # "maxLocals":I
    .end local v12    # "codeEnd":I
    .end local v15    # "unzip":Z
    .end local v31    # "c":[C
    .end local v43    # "itanns":[I
    .end local v45    # "tanns":[I
    .restart local v6    # "itanns":[I
    .local v9, "c":[C
    .local v11, "tanns":[I
    .restart local v21    # "maxLocals":I
    .restart local v30    # "codeLength":I
    .restart local v32    # "u":I
    .restart local v33    # "maxStack":I
    .restart local v36    # "codeEnd":I
    .restart local v37    # "unzip":Z
    aget-object v0, v8, v30

    if-eqz v0, :cond_44

    .line 1666
    aget-object v0, v8, v30

    invoke-virtual {v15, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1670
    :cond_44
    iget v0, v14, Lcom/sleepycat/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4c

    move/from16 v12, v42

    .end local v42    # "varTable":I
    .local v12, "varTable":I
    if-eqz v12, :cond_4b

    .line 1671
    const/4 v0, 0x0

    .line 1672
    .local v0, "typeTable":[I
    move/from16 v10, v40

    .end local v40    # "varTypeTable":I
    .local v10, "varTypeTable":I
    if-eqz v10, :cond_46

    .line 1673
    add-int/lit8 v2, v10, 0x2

    .line 1674
    .end local v32    # "u":I
    .local v2, "u":I
    invoke-virtual {v7, v10}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [I

    .line 1675
    array-length v1, v0

    move v5, v2

    .end local v2    # "u":I
    .local v1, "i":I
    .restart local v5    # "u":I
    :goto_31
    if-lez v1, :cond_45

    .line 1676
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v5, 0x6

    aput v2, v0, v1

    .line 1677
    const/4 v2, -0x1

    add-int/2addr v1, v2

    add-int/lit8 v3, v5, 0x8

    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v0, v1

    .line 1678
    add-int/2addr v1, v2

    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v0, v1

    .line 1679
    add-int/lit8 v5, v5, 0xa

    goto :goto_31

    .line 1675
    :cond_45
    move/from16 v32, v5

    move-object v5, v0

    goto :goto_32

    .line 1672
    .end local v1    # "i":I
    .end local v5    # "u":I
    .restart local v32    # "u":I
    :cond_46
    move-object v5, v0

    .line 1682
    .end local v0    # "typeTable":[I
    .local v5, "typeTable":[I
    :goto_32
    add-int/lit8 v3, v12, 0x2

    .line 1683
    .end local v32    # "u":I
    .local v3, "u":I
    invoke-virtual {v7, v12}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v17, v0

    .local v17, "i":I
    :goto_33
    if-lez v17, :cond_4a

    .line 1684
    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1685
    .local v2, "start":I
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v32

    .line 1686
    .local v32, "length":I
    add-int/lit8 v0, v3, 0x8

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1687
    .local v1, "index":I
    const/4 v0, 0x0

    .line 1688
    .local v0, "vsignature":Ljava/lang/String;
    if-eqz v5, :cond_48

    .line 1689
    const/16 v34, 0x0

    move/from16 v4, v34

    .local v4, "j":I
    :goto_34
    move-object/from16 v34, v0

    .end local v0    # "vsignature":Ljava/lang/String;
    .local v34, "vsignature":Ljava/lang/String;
    array-length v0, v5

    if-ge v4, v0, :cond_49

    .line 1690
    aget v0, v5, v4

    if-ne v0, v2, :cond_47

    add-int/lit8 v0, v4, 0x1

    aget v0, v5, v0

    if-ne v0, v1, :cond_47

    .line 1691
    add-int/lit8 v0, v4, 0x2

    aget v0, v5, v0

    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 1692
    .end local v34    # "vsignature":Ljava/lang/String;
    .restart local v0    # "vsignature":Ljava/lang/String;
    move-object/from16 v34, v0

    goto :goto_35

    .line 1689
    .end local v0    # "vsignature":Ljava/lang/String;
    .restart local v34    # "vsignature":Ljava/lang/String;
    :cond_47
    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, v34

    goto :goto_34

    .line 1688
    .end local v4    # "j":I
    .end local v34    # "vsignature":Ljava/lang/String;
    .restart local v0    # "vsignature":Ljava/lang/String;
    :cond_48
    move-object/from16 v34, v0

    .line 1696
    .end local v0    # "vsignature":Ljava/lang/String;
    .restart local v34    # "vsignature":Ljava/lang/String;
    :cond_49
    :goto_35
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v3, 0x6

    invoke-virtual {v7, v0, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v35

    aget-object v38, v8, v2

    add-int v0, v2, v32

    aget-object v40, v8, v0

    move-object/from16 v0, p1

    move/from16 v41, v1

    .end local v1    # "index":I
    .local v41, "index":I
    move-object v1, v4

    move/from16 v42, v2

    .end local v2    # "start":I
    .local v42, "start":I
    move-object/from16 v2, v35

    move/from16 v35, v3

    .end local v3    # "u":I
    .local v35, "u":I
    move-object/from16 v3, v34

    move-object/from16 v4, v38

    move-object/from16 v38, v5

    .end local v5    # "typeTable":[I
    .local v38, "typeTable":[I
    move-object/from16 v5, v40

    move-object/from16 v46, v6

    move/from16 v15, v31

    move/from16 v31, v39

    .end local v6    # "itanns":[I
    .end local v39    # "zip":Z
    .local v31, "zip":Z
    .local v46, "itanns":[I
    move/from16 v6, v41

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;I)V

    .line 1699
    nop

    .end local v32    # "length":I
    .end local v34    # "vsignature":Ljava/lang/String;
    .end local v41    # "index":I
    .end local v42    # "start":I
    add-int/lit8 v3, v35, 0xa

    .line 1683
    .end local v35    # "u":I
    .restart local v3    # "u":I
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v5, v38

    move-object/from16 v6, v46

    const/4 v4, 0x0

    move/from16 v31, v15

    move-object/from16 v15, p1

    goto :goto_33

    .end local v31    # "zip":Z
    .end local v38    # "typeTable":[I
    .end local v46    # "itanns":[I
    .restart local v5    # "typeTable":[I
    .restart local v6    # "itanns":[I
    .restart local v39    # "zip":Z
    :cond_4a
    move/from16 v35, v3

    move-object/from16 v38, v5

    move-object/from16 v46, v6

    move/from16 v15, v31

    move/from16 v31, v39

    .end local v3    # "u":I
    .end local v5    # "typeTable":[I
    .end local v6    # "itanns":[I
    .end local v39    # "zip":Z
    .restart local v31    # "zip":Z
    .restart local v35    # "u":I
    .restart local v38    # "typeTable":[I
    .restart local v46    # "itanns":[I
    move/from16 v5, v35

    goto :goto_37

    .line 1670
    .end local v10    # "varTypeTable":I
    .end local v17    # "i":I
    .end local v31    # "zip":Z
    .end local v35    # "u":I
    .end local v38    # "typeTable":[I
    .end local v46    # "itanns":[I
    .restart local v6    # "itanns":[I
    .local v32, "u":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    :cond_4b
    move-object/from16 v46, v6

    move/from16 v15, v31

    move/from16 v31, v39

    move/from16 v10, v40

    .end local v6    # "itanns":[I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .restart local v10    # "varTypeTable":I
    .restart local v31    # "zip":Z
    .restart local v46    # "itanns":[I
    goto :goto_36

    .end local v10    # "varTypeTable":I
    .end local v12    # "varTable":I
    .end local v31    # "zip":Z
    .end local v46    # "itanns":[I
    .restart local v6    # "itanns":[I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .local v42, "varTable":I
    :cond_4c
    move-object/from16 v46, v6

    move/from16 v15, v31

    move/from16 v31, v39

    move/from16 v10, v40

    move/from16 v12, v42

    .line 1704
    .end local v6    # "itanns":[I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v42    # "varTable":I
    .restart local v10    # "varTypeTable":I
    .restart local v12    # "varTable":I
    .restart local v31    # "zip":Z
    .restart local v46    # "itanns":[I
    :goto_36
    move/from16 v5, v32

    .end local v32    # "u":I
    .local v5, "u":I
    :goto_37
    const/16 v0, 0x20

    if-eqz v11, :cond_4f

    .line 1705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    array-length v2, v11

    if-ge v1, v2, :cond_4e

    .line 1706
    aget v2, v11, v1

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v2

    shr-int/2addr v2, v15

    if-ne v2, v0, :cond_4d

    .line 1707
    aget v2, v11, v1

    invoke-direct {v7, v14, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 1708
    .local v2, "v":I
    add-int/lit8 v3, v2, 0x2

    iget v4, v14, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v6, v14, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    iget-object v15, v14, Lcom/sleepycat/asm/Context;->start:[Lcom/sleepycat/asm/Label;

    iget-object v0, v14, Lcom/sleepycat/asm/Context;->end:[Lcom/sleepycat/asm/Label;

    move/from16 v17, v5

    .end local v5    # "u":I
    .local v17, "u":I
    iget-object v5, v14, Lcom/sleepycat/asm/Context;->index:[I

    .line 1711
    invoke-virtual {v7, v2, v9}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "v":I
    const/16 v32, 0x1

    .line 1709
    move-object/from16 v34, v8

    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .local v34, "labels":[Lcom/sleepycat/asm/Label;
    move-object/from16 v8, p1

    move/from16 v35, v30

    move-object/from16 v30, v9

    .end local v9    # "c":[C
    .local v30, "c":[C
    .local v35, "codeLength":I
    move v9, v4

    move/from16 v4, v21

    move/from16 v21, v10

    .end local v10    # "varTypeTable":I
    .local v4, "maxLocals":I
    .local v21, "varTypeTable":I
    move-object v10, v6

    move/from16 v6, v33

    move-object/from16 v33, v11

    .end local v11    # "tanns":[I
    .local v6, "maxStack":I
    .local v33, "tanns":[I
    move-object v11, v15

    move-object/from16 v15, v30

    move/from16 v30, v36

    move/from16 v36, v12

    .end local v12    # "varTable":I
    .local v15, "c":[C
    .local v30, "codeEnd":I
    .local v36, "varTable":I
    move-object v12, v0

    move-object v0, v13

    .end local v13    # "b":[B
    .local v0, "b":[B
    move-object v13, v5

    move-object v5, v14

    move-object v14, v2

    move-object/from16 v2, p1

    move-object/from16 v38, v0

    move/from16 v39, v4

    move-object v0, v15

    const/4 v4, 0x1

    .end local v4    # "maxLocals":I
    .end local v15    # "c":[C
    .local v0, "c":[C
    .local v38, "b":[B
    .local v39, "maxLocals":I
    move/from16 v15, v32

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/sleepycat/asm/TypePath;[Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;[ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v8

    .line 1708
    invoke-direct {v7, v3, v0, v4, v8}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    goto :goto_39

    .line 1706
    .end local v0    # "c":[C
    .end local v6    # "maxStack":I
    .end local v17    # "u":I
    .end local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v35    # "codeLength":I
    .end local v38    # "b":[B
    .end local v39    # "maxLocals":I
    .restart local v5    # "u":I
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "c":[C
    .restart local v10    # "varTypeTable":I
    .restart local v11    # "tanns":[I
    .restart local v12    # "varTable":I
    .restart local v13    # "b":[B
    .local v21, "maxLocals":I
    .local v30, "codeLength":I
    .local v33, "maxStack":I
    .local v36, "codeEnd":I
    :cond_4d
    move-object/from16 v2, p1

    move/from16 v17, v5

    move-object/from16 v34, v8

    move-object v0, v9

    move-object/from16 v38, v13

    move-object v5, v14

    move v4, v15

    move/from16 v39, v21

    move/from16 v35, v30

    move/from16 v6, v33

    move/from16 v30, v36

    move/from16 v21, v10

    move-object/from16 v33, v11

    move/from16 v36, v12

    .line 1705
    .end local v5    # "u":I
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "c":[C
    .end local v10    # "varTypeTable":I
    .end local v11    # "tanns":[I
    .end local v12    # "varTable":I
    .end local v13    # "b":[B
    .restart local v0    # "c":[C
    .restart local v6    # "maxStack":I
    .restart local v17    # "u":I
    .local v21, "varTypeTable":I
    .local v30, "codeEnd":I
    .local v33, "tanns":[I
    .restart local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v35    # "codeLength":I
    .local v36, "varTable":I
    .restart local v38    # "b":[B
    .restart local v39    # "maxLocals":I
    :goto_39
    add-int/lit8 v1, v1, 0x1

    move-object v9, v0

    move v15, v4

    move-object v14, v5

    move/from16 v5, v17

    move/from16 v10, v21

    move-object/from16 v11, v33

    move-object/from16 v8, v34

    move/from16 v12, v36

    move-object/from16 v13, v38

    move/from16 v21, v39

    const/16 v0, 0x20

    move/from16 v33, v6

    move/from16 v36, v30

    move/from16 v30, v35

    goto/16 :goto_38

    .end local v0    # "c":[C
    .end local v6    # "maxStack":I
    .end local v17    # "u":I
    .end local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v35    # "codeLength":I
    .end local v38    # "b":[B
    .end local v39    # "maxLocals":I
    .restart local v5    # "u":I
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "c":[C
    .restart local v10    # "varTypeTable":I
    .restart local v11    # "tanns":[I
    .restart local v12    # "varTable":I
    .restart local v13    # "b":[B
    .local v21, "maxLocals":I
    .local v30, "codeLength":I
    .local v33, "maxStack":I
    .local v36, "codeEnd":I
    :cond_4e
    move-object/from16 v2, p1

    move/from16 v17, v5

    move-object/from16 v34, v8

    move-object v0, v9

    move-object/from16 v38, v13

    move-object v5, v14

    move v4, v15

    move/from16 v39, v21

    move/from16 v35, v30

    move/from16 v6, v33

    move/from16 v30, v36

    move/from16 v21, v10

    move-object/from16 v33, v11

    move/from16 v36, v12

    .end local v5    # "u":I
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "c":[C
    .end local v10    # "varTypeTable":I
    .end local v11    # "tanns":[I
    .end local v12    # "varTable":I
    .end local v13    # "b":[B
    .restart local v0    # "c":[C
    .restart local v6    # "maxStack":I
    .restart local v17    # "u":I
    .local v21, "varTypeTable":I
    .local v30, "codeEnd":I
    .local v33, "tanns":[I
    .restart local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v35    # "codeLength":I
    .local v36, "varTable":I
    .restart local v38    # "b":[B
    .restart local v39    # "maxLocals":I
    goto :goto_3a

    .line 1704
    .end local v0    # "c":[C
    .end local v1    # "i":I
    .end local v6    # "maxStack":I
    .end local v17    # "u":I
    .end local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v35    # "codeLength":I
    .end local v38    # "b":[B
    .end local v39    # "maxLocals":I
    .restart local v5    # "u":I
    .restart local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v9    # "c":[C
    .restart local v10    # "varTypeTable":I
    .restart local v11    # "tanns":[I
    .restart local v12    # "varTable":I
    .restart local v13    # "b":[B
    .local v21, "maxLocals":I
    .local v30, "codeLength":I
    .local v33, "maxStack":I
    .local v36, "codeEnd":I
    :cond_4f
    move-object/from16 v2, p1

    move/from16 v17, v5

    move-object/from16 v34, v8

    move-object v0, v9

    move-object/from16 v38, v13

    move-object v5, v14

    move v4, v15

    move/from16 v39, v21

    move/from16 v35, v30

    move/from16 v6, v33

    move/from16 v30, v36

    move/from16 v21, v10

    move-object/from16 v33, v11

    move/from16 v36, v12

    .line 1716
    .end local v5    # "u":I
    .end local v8    # "labels":[Lcom/sleepycat/asm/Label;
    .end local v9    # "c":[C
    .end local v10    # "varTypeTable":I
    .end local v11    # "tanns":[I
    .end local v12    # "varTable":I
    .end local v13    # "b":[B
    .restart local v0    # "c":[C
    .restart local v6    # "maxStack":I
    .restart local v17    # "u":I
    .local v21, "varTypeTable":I
    .local v30, "codeEnd":I
    .local v33, "tanns":[I
    .restart local v34    # "labels":[Lcom/sleepycat/asm/Label;
    .restart local v35    # "codeLength":I
    .local v36, "varTable":I
    .restart local v38    # "b":[B
    .restart local v39    # "maxLocals":I
    :goto_3a
    move-object/from16 v1, v46

    .end local v46    # "itanns":[I
    .local v1, "itanns":[I
    if-eqz v1, :cond_52

    .line 1717
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    array-length v8, v1

    if-ge v3, v8, :cond_51

    .line 1718
    aget v8, v1, v3

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v8

    shr-int/2addr v8, v4

    const/16 v15, 0x20

    if-ne v8, v15, :cond_50

    .line 1719
    aget v8, v1, v3

    invoke-direct {v7, v5, v8}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v8

    .line 1720
    .local v8, "v":I
    add-int/lit8 v14, v8, 0x2

    iget v9, v5, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v10, v5, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    iget-object v11, v5, Lcom/sleepycat/asm/Context;->start:[Lcom/sleepycat/asm/Label;

    iget-object v12, v5, Lcom/sleepycat/asm/Context;->end:[Lcom/sleepycat/asm/Label;

    iget-object v13, v5, Lcom/sleepycat/asm/Context;->index:[I

    .line 1723
    invoke-virtual {v7, v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v32

    .end local v8    # "v":I
    const/16 v40, 0x0

    .line 1721
    move-object/from16 v8, p1

    move-object/from16 v43, v1

    move v1, v14

    .end local v1    # "itanns":[I
    .restart local v43    # "itanns":[I
    move-object/from16 v14, v32

    move/from16 v32, v15

    move/from16 v15, v40

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/sleepycat/asm/TypePath;[Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;[ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v8

    .line 1720
    invoke-direct {v7, v1, v0, v4, v8}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    goto :goto_3c

    .line 1718
    .end local v43    # "itanns":[I
    .restart local v1    # "itanns":[I
    :cond_50
    move-object/from16 v43, v1

    move/from16 v32, v15

    .line 1717
    .end local v1    # "itanns":[I
    .restart local v43    # "itanns":[I
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v43

    goto :goto_3b

    .end local v43    # "itanns":[I
    .restart local v1    # "itanns":[I
    :cond_51
    move-object/from16 v43, v1

    .end local v1    # "itanns":[I
    .restart local v43    # "itanns":[I
    goto :goto_3d

    .line 1716
    .end local v3    # "i":I
    .end local v43    # "itanns":[I
    .restart local v1    # "itanns":[I
    :cond_52
    move-object/from16 v43, v1

    .line 1730
    .end local v1    # "itanns":[I
    .restart local v43    # "itanns":[I
    :goto_3d
    move-object/from16 v1, v29

    .end local v29    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_3e
    if-eqz v1, :cond_53

    .line 1731
    iget-object v3, v1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1732
    .local v3, "attr":Lcom/sleepycat/asm/Attribute;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1733
    invoke-virtual {v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 1734
    move-object v1, v3

    .line 1735
    .end local v3    # "attr":Lcom/sleepycat/asm/Attribute;
    goto :goto_3e

    .line 1738
    :cond_53
    move/from16 v3, v39

    .end local v39    # "maxLocals":I
    .local v3, "maxLocals":I
    invoke-virtual {v2, v6, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 1739
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private readField(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;I)I
    .locals 25
    .param p1, "classVisitor"    # Lcom/sleepycat/asm/ClassVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "u"    # I

    .line 833
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 834
    .local v10, "c":[C
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 835
    .local v1, "access":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 836
    .local v17, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    .line 837
    .local v18, "desc":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x6

    .line 840
    .end local p3    # "u":I
    .local v0, "u":I
    const/4 v2, 0x0

    .line 841
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x0

    .line 842
    .local v3, "anns":I
    const/4 v4, 0x0

    .line 843
    .local v4, "ianns":I
    const/4 v5, 0x0

    .line 844
    .local v5, "tanns":I
    const/4 v6, 0x0

    .line 845
    .local v6, "itanns":I
    const/4 v7, 0x0

    .line 846
    .local v7, "value":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 848
    .local v11, "attributes":Lcom/sleepycat/asm/Attribute;
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    move/from16 v19, v1

    move-object/from16 v20, v2

    move v15, v3

    move v14, v4

    move v13, v5

    move-object/from16 v21, v7

    move-object v7, v11

    move/from16 v16, v12

    move v11, v0

    move v12, v6

    .end local v0    # "u":I
    .end local v1    # "access":I
    .end local v2    # "signature":Ljava/lang/String;
    .end local v3    # "anns":I
    .end local v4    # "ianns":I
    .end local v5    # "tanns":I
    .end local v6    # "itanns":I
    .local v7, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v11, "u":I
    .local v12, "itanns":I
    .local v13, "tanns":I
    .local v14, "ianns":I
    .local v15, "anns":I
    .local v16, "i":I
    .local v19, "access":I
    .local v20, "signature":Ljava/lang/String;
    .local v21, "value":Ljava/lang/Object;
    :goto_0
    if-lez v16, :cond_a

    .line 849
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {v8, v1, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 852
    .local v6, "attrName":Ljava/lang/String;
    const-string v1, "ConstantValue"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 854
    .local v1, "item":I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v1, v10}, Lcom/sleepycat/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    .line 855
    .end local v1    # "item":I
    .end local v21    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    :goto_1
    move-object/from16 v21, v0

    move-object/from16 v24, v6

    goto/16 :goto_2

    .end local v0    # "value":Ljava/lang/Object;
    .restart local v21    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v24, v6

    .end local v20    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_2

    .line 857
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v20    # "signature":Ljava/lang/String;
    :cond_2
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    const/high16 v0, 0x20000

    or-int v0, v19, v0

    move/from16 v19, v0

    move-object/from16 v24, v6

    .end local v19    # "access":I
    .local v0, "access":I
    goto/16 :goto_2

    .line 859
    .end local v0    # "access":I
    .restart local v19    # "access":I
    :cond_3
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    const v0, 0x41000

    or-int v0, v19, v0

    move/from16 v19, v0

    move-object/from16 v24, v6

    .end local v19    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_2

    .line 862
    .end local v0    # "access":I
    .restart local v19    # "access":I
    :cond_4
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 863
    add-int/lit8 v0, v11, 0x8

    move v15, v0

    move-object/from16 v24, v6

    .end local v15    # "anns":I
    .local v0, "anns":I
    goto :goto_2

    .line 864
    .end local v0    # "anns":I
    .restart local v15    # "anns":I
    :cond_5
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    add-int/lit8 v0, v11, 0x8

    move v13, v0

    move-object/from16 v24, v6

    .end local v13    # "tanns":I
    .local v0, "tanns":I
    goto :goto_2

    .line 866
    .end local v0    # "tanns":I
    .restart local v13    # "tanns":I
    :cond_6
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 867
    add-int/lit8 v0, v11, 0x8

    move v14, v0

    move-object/from16 v24, v6

    .end local v14    # "ianns":I
    .local v0, "ianns":I
    goto :goto_2

    .line 868
    .end local v0    # "ianns":I
    .restart local v14    # "ianns":I
    :cond_7
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 869
    add-int/lit8 v0, v11, 0x8

    move v12, v0

    move-object/from16 v24, v6

    .end local v12    # "itanns":I
    .local v0, "itanns":I
    goto :goto_2

    .line 871
    .end local v0    # "itanns":I
    .restart local v12    # "itanns":I
    :cond_8
    iget-object v1, v9, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    add-int/lit8 v3, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    .line 872
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v4

    const/16 v22, -0x1

    const/16 v23, 0x0

    .line 871
    move-object/from16 v0, p0

    move-object v2, v6

    move-object v5, v10

    move-object/from16 v24, v6

    .end local v6    # "attrName":Ljava/lang/String;
    .local v24, "attrName":Ljava/lang/String;
    move/from16 v6, v22

    move-object v9, v7

    .end local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v9, "attributes":Lcom/sleepycat/asm/Attribute;
    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/asm/ClassReader;->readAttribute([Lcom/sleepycat/asm/Attribute;Ljava/lang/String;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v0

    .line 873
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    if-eqz v0, :cond_9

    .line 874
    iput-object v9, v0, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 875
    move-object v1, v0

    move-object v7, v1

    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "attributes":Lcom/sleepycat/asm/Attribute;
    goto :goto_2

    .line 873
    .end local v1    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    :cond_9
    move-object v7, v9

    .line 878
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_2
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    .line 848
    .end local v24    # "attrName":Ljava/lang/String;
    add-int/lit8 v16, v16, -0x1

    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_a
    move-object v9, v7

    .line 880
    .end local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v16    # "i":I
    .restart local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    add-int/lit8 v1, v11, 0x2

    .line 883
    .end local v11    # "u":I
    .local v1, "u":I
    move-object/from16 v11, p1

    move v6, v12

    .end local v12    # "itanns":I
    .local v6, "itanns":I
    move/from16 v12, v19

    move v5, v13

    .end local v13    # "tanns":I
    .restart local v5    # "tanns":I
    move-object/from16 v13, v17

    move v4, v14

    .end local v14    # "ianns":I
    .restart local v4    # "ianns":I
    move-object/from16 v14, v18

    move v3, v15

    .end local v15    # "anns":I
    .restart local v3    # "anns":I
    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-virtual/range {v11 .. v16}, Lcom/sleepycat/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;

    move-result-object v2

    .line 885
    .local v2, "fv":Lcom/sleepycat/asm/FieldVisitor;
    if-nez v2, :cond_b

    .line 886
    return v1

    .line 890
    :cond_b
    const/4 v7, 0x1

    if-eqz v3, :cond_c

    .line 891
    invoke-virtual {v8, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .local v11, "i":I
    add-int/lit8 v15, v3, 0x2

    .local v15, "v":I
    :goto_3
    if-lez v11, :cond_c

    .line 892
    add-int/lit8 v12, v15, 0x2

    .line 893
    invoke-virtual {v8, v15, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v7}, Lcom/sleepycat/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v13

    .line 892
    invoke-direct {v8, v12, v10, v7, v13}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v15

    .line 891
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 896
    .end local v11    # "i":I
    .end local v15    # "v":I
    :cond_c
    const/4 v11, 0x0

    if-eqz v4, :cond_d

    .line 897
    invoke-virtual {v8, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .local v12, "i":I
    add-int/lit8 v14, v4, 0x2

    .local v14, "v":I
    :goto_4
    if-lez v12, :cond_d

    .line 898
    add-int/lit8 v13, v14, 0x2

    .line 899
    invoke-virtual {v8, v14, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v11}, Lcom/sleepycat/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v15

    .line 898
    invoke-direct {v8, v13, v10, v7, v15}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v14

    .line 897
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 902
    .end local v12    # "i":I
    .end local v14    # "v":I
    :cond_d
    if-eqz v5, :cond_f

    .line 903
    invoke-virtual {v8, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .restart local v12    # "i":I
    add-int/lit8 v13, v5, 0x2

    .local v13, "v":I
    :goto_5
    if-lez v12, :cond_e

    .line 904
    move-object v14, v9

    move-object/from16 v9, p2

    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v14, "attributes":Lcom/sleepycat/asm/Attribute;
    invoke-direct {v8, v9, v13}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v13

    .line 905
    add-int/lit8 v15, v13, 0x2

    iget v0, v9, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v11, v9, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 907
    move/from16 v22, v3

    .end local v3    # "anns":I
    .local v22, "anns":I
    invoke-virtual {v8, v13, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-virtual {v2, v0, v11, v3, v7}, Lcom/sleepycat/asm/FieldVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 905
    invoke-direct {v8, v15, v10, v7, v0}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v13

    .line 903
    add-int/lit8 v12, v12, -0x1

    move-object v9, v14

    move/from16 v3, v22

    const/4 v11, 0x0

    goto :goto_5

    .end local v14    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v22    # "anns":I
    .restart local v3    # "anns":I
    .restart local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    :cond_e
    move/from16 v22, v3

    move-object v14, v9

    move-object/from16 v9, p2

    .end local v3    # "anns":I
    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v14    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v22    # "anns":I
    goto :goto_6

    .line 902
    .end local v12    # "i":I
    .end local v13    # "v":I
    .end local v14    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v22    # "anns":I
    .restart local v3    # "anns":I
    .restart local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    :cond_f
    move/from16 v22, v3

    move-object v14, v9

    move-object/from16 v9, p2

    .line 910
    .end local v3    # "anns":I
    .end local v9    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v14    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v22    # "anns":I
    :goto_6
    if-eqz v6, :cond_10

    .line 911
    invoke-virtual {v8, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    add-int/lit8 v12, v6, 0x2

    .local v12, "v":I
    :goto_7
    if-lez v0, :cond_10

    .line 912
    invoke-direct {v8, v9, v12}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v3

    .line 913
    .end local v12    # "v":I
    .local v3, "v":I
    add-int/lit8 v11, v3, 0x2

    iget v12, v9, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v13, v9, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 915
    invoke-virtual {v8, v3, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 914
    const/4 v7, 0x0

    invoke-virtual {v2, v12, v13, v15, v7}, Lcom/sleepycat/asm/FieldVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v12

    .line 913
    const/4 v13, 0x1

    invoke-direct {v8, v11, v10, v13, v12}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v12

    .line 911
    .end local v3    # "v":I
    .restart local v12    # "v":I
    add-int/lit8 v0, v0, -0x1

    move v7, v13

    goto :goto_7

    .line 920
    .end local v0    # "i":I
    .end local v12    # "v":I
    :cond_10
    move-object v7, v14

    .end local v14    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_8
    if-eqz v7, :cond_11

    .line 921
    iget-object v0, v7, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 922
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    const/4 v3, 0x0

    iput-object v3, v7, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 923
    invoke-virtual {v2, v7}, Lcom/sleepycat/asm/FieldVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 924
    move-object v7, v0

    .line 925
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    goto :goto_8

    .line 928
    :cond_11
    invoke-virtual {v2}, Lcom/sleepycat/asm/FieldVisitor;->visitEnd()V

    .line 930
    return v1
.end method

.method private readFrame(IZZLcom/sleepycat/asm/Context;)I
    .locals 17
    .param p1, "stackMap"    # I
    .param p2, "zip"    # Z
    .param p3, "unzip"    # Z
    .param p4, "frame"    # Lcom/sleepycat/asm/Context;

    .line 2216
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v8, v7, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 2217
    .local v8, "c":[C
    iget-object v9, v7, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    .line 2220
    .local v9, "labels":[Lcom/sleepycat/asm/Label;
    const/16 v0, 0xff

    if-eqz p2, :cond_0

    .line 2221
    iget-object v1, v6, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "stackMap":I
    .local v2, "stackMap":I
    aget-byte v1, v1, p1

    and-int/2addr v1, v0

    move v11, v1

    move v10, v2

    .local v1, "tag":I
    goto :goto_0

    .line 2223
    .end local v1    # "tag":I
    .end local v2    # "stackMap":I
    .restart local p1    # "stackMap":I
    :cond_0
    const/16 v1, 0xff

    .line 2224
    .restart local v1    # "tag":I
    const/4 v2, -0x1

    iput v2, v7, Lcom/sleepycat/asm/Context;->offset:I

    move/from16 v10, p1

    move v11, v1

    .line 2226
    .end local v1    # "tag":I
    .end local p1    # "stackMap":I
    .local v10, "stackMap":I
    .local v11, "tag":I
    :goto_0
    const/4 v12, 0x0

    iput v12, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    .line 2227
    const/4 v1, 0x3

    const/16 v2, 0x40

    if-ge v11, v2, :cond_1

    .line 2228
    move v0, v11

    .line 2229
    .local v0, "delta":I
    iput v1, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2230
    iput v12, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    goto/16 :goto_6

    .line 2231
    .end local v0    # "delta":I
    :cond_1
    const/16 v2, 0x80

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-ge v11, v2, :cond_2

    .line 2232
    add-int/lit8 v12, v11, -0x40

    .line 2233
    .local v12, "delta":I
    iget-object v1, v7, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I

    move-result v10

    .line 2234
    iput v13, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2235
    iput v14, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    move v0, v12

    goto/16 :goto_6

    .line 2237
    .end local v12    # "delta":I
    :cond_2
    invoke-virtual {v6, v10}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 2238
    .local v15, "delta":I
    add-int/lit8 v10, v10, 0x2

    .line 2239
    const/16 v2, 0xf7

    if-ne v11, v2, :cond_3

    .line 2240
    iget-object v1, v7, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I

    move-result v10

    .line 2241
    iput v13, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2242
    iput v14, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    move v0, v15

    goto/16 :goto_6

    .line 2243
    :cond_3
    const/16 v2, 0xf8

    const/4 v13, 0x2

    const/16 v3, 0xfb

    if-lt v11, v2, :cond_4

    if-ge v11, v3, :cond_4

    .line 2245
    iput v13, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2246
    rsub-int v0, v11, 0xfb

    iput v0, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    .line 2247
    iget v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    iget v1, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    sub-int/2addr v0, v1

    iput v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    .line 2248
    iput v12, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    goto :goto_1

    .line 2249
    :cond_4
    if-ne v11, v3, :cond_5

    .line 2250
    iput v1, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2251
    iput v12, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    .line 2281
    :goto_1
    move v0, v15

    goto/16 :goto_6

    .line 2252
    :cond_5
    if-ge v11, v0, :cond_8

    .line 2253
    if-eqz p3, :cond_6

    iget v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    goto :goto_2

    :cond_6
    move v0, v12

    .line 2254
    .local v0, "local":I
    :goto_2
    add-int/lit16 v1, v11, -0xfb

    move v2, v0

    move v13, v10

    move v10, v1

    .end local v0    # "local":I
    .local v2, "local":I
    .local v10, "i":I
    .local v13, "stackMap":I
    :goto_3
    if-lez v10, :cond_7

    .line 2255
    iget-object v1, v7, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v16, v2, 0x1

    .end local v2    # "local":I
    .local v16, "local":I
    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I

    move-result v13

    .line 2254
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v16

    goto :goto_3

    .line 2258
    .end local v10    # "i":I
    .end local v16    # "local":I
    .restart local v2    # "local":I
    :cond_7
    iput v14, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2259
    add-int/lit16 v0, v11, -0xfb

    iput v0, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    .line 2260
    iget v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    iget v1, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    .line 2261
    iput v12, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    .line 2262
    .end local v2    # "local":I
    move v10, v13

    move v0, v15

    goto :goto_6

    .line 2263
    .end local v13    # "stackMap":I
    .local v10, "stackMap":I
    :cond_8
    iput v12, v7, Lcom/sleepycat/asm/Context;->mode:I

    .line 2264
    invoke-virtual {v6, v10}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2265
    .local v0, "n":I
    add-int/lit8 v10, v10, 0x2

    .line 2266
    iput v0, v7, Lcom/sleepycat/asm/Context;->localDiff:I

    .line 2267
    iput v0, v7, Lcom/sleepycat/asm/Context;->localCount:I

    .line 2268
    const/4 v1, 0x0

    move v2, v1

    move v12, v10

    move v10, v0

    .end local v0    # "n":I
    .restart local v2    # "local":I
    .local v10, "n":I
    .local v12, "stackMap":I
    :goto_4
    if-lez v10, :cond_9

    .line 2269
    iget-object v1, v7, Lcom/sleepycat/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v14, v2, 0x1

    .end local v2    # "local":I
    .local v14, "local":I
    move-object/from16 v0, p0

    move v3, v12

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I

    move-result v12

    .line 2268
    add-int/lit8 v10, v10, -0x1

    move v2, v14

    goto :goto_4

    .line 2272
    .end local v14    # "local":I
    :cond_9
    invoke-virtual {v6, v12}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2273
    .end local v10    # "n":I
    .restart local v0    # "n":I
    add-int/2addr v12, v13

    .line 2274
    iput v0, v7, Lcom/sleepycat/asm/Context;->stackCount:I

    .line 2275
    const/4 v1, 0x0

    move v10, v0

    move v2, v1

    .end local v0    # "n":I
    .local v2, "stack":I
    .restart local v10    # "n":I
    :goto_5
    if-lez v10, :cond_a

    .line 2276
    iget-object v1, v7, Lcom/sleepycat/asm/Context;->stack:[Ljava/lang/Object;

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "stack":I
    .local v13, "stack":I
    move-object/from16 v0, p0

    move v3, v12

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I

    move-result v12

    .line 2275
    add-int/lit8 v10, v10, -0x1

    move v2, v13

    goto :goto_5

    .end local v13    # "stack":I
    .restart local v2    # "stack":I
    :cond_a
    move v10, v12

    move v0, v15

    .line 2281
    .end local v2    # "stack":I
    .end local v12    # "stackMap":I
    .end local v15    # "delta":I
    .local v0, "delta":I
    .local v10, "stackMap":I
    :goto_6
    iget v1, v7, Lcom/sleepycat/asm/Context;->offset:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/sleepycat/asm/Context;->offset:I

    .line 2282
    iget v1, v7, Lcom/sleepycat/asm/Context;->offset:I

    invoke-direct {v6, v1, v9}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 2283
    return v10
.end method

.method private readFrameType([Ljava/lang/Object;II[C[Lcom/sleepycat/asm/Label;)I
    .locals 2
    .param p1, "frame"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "v"    # I
    .param p4, "buf"    # [C
    .param p5, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 2307
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "v":I
    .local v1, "v":I
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 2308
    .local p3, "type":I
    packed-switch p3, :pswitch_data_0

    .line 2335
    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    move-result-object v0

    aput-object v0, p1, p2

    .line 2336
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2331
    :pswitch_0
    invoke-virtual {p0, v1, p4}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 2332
    add-int/lit8 v1, v1, 0x2

    .line 2333
    goto :goto_0

    .line 2328
    :pswitch_1
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2329
    goto :goto_0

    .line 2325
    :pswitch_2
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2326
    goto :goto_0

    .line 2322
    :pswitch_3
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2323
    goto :goto_0

    .line 2319
    :pswitch_4
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2320
    goto :goto_0

    .line 2316
    :pswitch_5
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2317
    goto :goto_0

    .line 2313
    :pswitch_6
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2314
    goto :goto_0

    .line 2310
    :pswitch_7
    sget-object v0, Lcom/sleepycat/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2311
    nop

    .line 2338
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readMethod(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;I)I
    .locals 35
    .param p1, "classVisitor"    # Lcom/sleepycat/asm/ClassVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "u"    # I

    .line 947
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 948
    .local v10, "c":[C
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v9, Lcom/sleepycat/asm/Context;->access:I

    .line 949
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sleepycat/asm/Context;->name:Ljava/lang/String;

    .line 950
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sleepycat/asm/Context;->desc:Ljava/lang/String;

    .line 951
    add-int/lit8 v0, v0, 0x6

    .line 954
    .end local p3    # "u":I
    .local v0, "u":I
    const/4 v1, 0x0

    .line 955
    .local v1, "code":I
    const/4 v2, 0x0

    .line 956
    .local v2, "exception":I
    const/4 v3, 0x0

    .line 957
    .local v3, "exceptions":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 958
    .local v4, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    .line 959
    .local v5, "methodParameters":I
    const/4 v6, 0x0

    .line 960
    .local v6, "anns":I
    const/4 v7, 0x0

    .line 961
    .local v7, "ianns":I
    const/4 v11, 0x0

    .line 962
    .local v11, "tanns":I
    const/4 v12, 0x0

    .line 963
    .local v12, "itanns":I
    const/4 v13, 0x0

    .line 964
    .local v13, "dann":I
    const/4 v14, 0x0

    .line 965
    .local v14, "mpanns":I
    const/4 v15, 0x0

    .line 966
    .local v15, "impanns":I
    move/from16 p3, v0

    .line 967
    .local p3, "firstAttribute":I
    const/16 v16, 0x0

    .line 969
    .local v16, "attributes":Lcom/sleepycat/asm/Attribute;
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    move/from16 v31, v11

    move v11, v0

    move-object/from16 v0, v16

    move/from16 v16, v5

    move/from16 v5, v31

    move/from16 v32, v12

    move v12, v1

    move v1, v15

    move-object v15, v4

    move/from16 v4, v32

    move/from16 v33, v13

    move v13, v2

    move v2, v14

    move-object v14, v3

    move/from16 v3, v33

    move/from16 v34, v7

    move v7, v6

    move/from16 v6, v34

    .local v0, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "impanns":I
    .local v2, "mpanns":I
    .local v3, "dann":I
    .local v4, "itanns":I
    .local v5, "tanns":I
    .local v6, "ianns":I
    .local v7, "anns":I
    .local v11, "u":I
    .local v12, "code":I
    .local v13, "exception":I
    .local v14, "exceptions":[Ljava/lang/String;
    .local v15, "signature":Ljava/lang/String;
    .local v16, "methodParameters":I
    .local v17, "i":I
    :goto_0
    move/from16 v18, v6

    .end local v6    # "ianns":I
    .local v18, "ianns":I
    if-lez v17, :cond_10

    .line 970
    add-int/lit8 v6, v11, 0x2

    invoke-virtual {v8, v6, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v20, "attributes":Lcom/sleepycat/asm/Attribute;
    const-string v0, "Code"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget v0, v9, Lcom/sleepycat/asm/Context;->flags:I

    const/16 v19, 0x1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 975
    add-int/lit8 v0, v11, 0x8

    move v12, v0

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v12    # "code":I
    .local v0, "code":I
    goto/16 :goto_3

    .line 974
    .end local v0    # "code":I
    .restart local v12    # "code":I
    :cond_0
    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 977
    :cond_1
    const-string v0, "Exceptions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 978
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 979
    .end local v14    # "exceptions":[Ljava/lang/String;
    .local v0, "exceptions":[Ljava/lang/String;
    add-int/lit8 v13, v11, 0xa

    .line 980
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v19, v1

    .end local v1    # "impanns":I
    .local v19, "impanns":I
    array-length v1, v0

    if-ge v14, v1, :cond_2

    .line 981
    invoke-virtual {v8, v13, v10}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    .line 982
    add-int/lit8 v13, v13, 0x2

    .line 980
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    goto :goto_1

    :cond_2
    move-object v14, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v14    # "j":I
    goto/16 :goto_3

    .line 984
    .end local v0    # "exceptions":[Ljava/lang/String;
    .end local v19    # "impanns":I
    .restart local v1    # "impanns":I
    .local v14, "exceptions":[Ljava/lang/String;
    :cond_3
    move/from16 v19, v1

    .end local v1    # "impanns":I
    .restart local v19    # "impanns":I
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v15    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_3

    .line 986
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    :cond_4
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 987
    iget v0, v9, Lcom/sleepycat/asm/Context;->access:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v9, Lcom/sleepycat/asm/Context;->access:I

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v26, v19

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 988
    :cond_5
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 989
    add-int/lit8 v0, v11, 0x8

    move v7, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v7    # "anns":I
    .local v0, "anns":I
    goto/16 :goto_3

    .line 990
    .end local v0    # "anns":I
    .restart local v7    # "anns":I
    :cond_6
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 991
    add-int/lit8 v0, v11, 0x8

    move v5, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v5    # "tanns":I
    .local v0, "tanns":I
    goto/16 :goto_3

    .line 992
    .end local v0    # "tanns":I
    .restart local v5    # "tanns":I
    :cond_7
    const-string v0, "AnnotationDefault"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 993
    add-int/lit8 v0, v11, 0x8

    move v3, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v3    # "dann":I
    .local v0, "dann":I
    goto/16 :goto_3

    .line 994
    .end local v0    # "dann":I
    .restart local v3    # "dann":I
    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 995
    iget v0, v9, Lcom/sleepycat/asm/Context;->access:I

    const v1, 0x41000

    or-int/2addr v0, v1

    iput v0, v9, Lcom/sleepycat/asm/Context;->access:I

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v26, v19

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 997
    :cond_9
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 998
    add-int/lit8 v0, v11, 0x8

    move-object/from16 v18, v6

    move/from16 v1, v19

    move v6, v0

    move-object/from16 v0, v20

    .end local v18    # "ianns":I
    .local v0, "ianns":I
    goto/16 :goto_3

    .line 999
    .end local v0    # "ianns":I
    .restart local v18    # "ianns":I
    :cond_a
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1000
    add-int/lit8 v0, v11, 0x8

    move v4, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v4    # "itanns":I
    .local v0, "itanns":I
    goto/16 :goto_3

    .line 1001
    .end local v0    # "itanns":I
    .restart local v4    # "itanns":I
    :cond_b
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1002
    add-int/lit8 v0, v11, 0x8

    move v2, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v2    # "mpanns":I
    .local v0, "mpanns":I
    goto/16 :goto_3

    .line 1003
    .end local v0    # "mpanns":I
    .restart local v2    # "mpanns":I
    :cond_c
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1004
    add-int/lit8 v0, v11, 0x8

    move v1, v0

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v19    # "impanns":I
    .local v0, "impanns":I
    goto/16 :goto_3

    .line 1005
    .end local v0    # "impanns":I
    .restart local v19    # "impanns":I
    :cond_d
    const-string v0, "MethodParameters"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1006
    add-int/lit8 v0, v11, 0x8

    move/from16 v16, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v16    # "methodParameters":I
    .local v0, "methodParameters":I
    goto/16 :goto_3

    .line 1008
    .end local v0    # "methodParameters":I
    .restart local v16    # "methodParameters":I
    :cond_e
    iget-object v1, v9, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    add-int/lit8 v21, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    .line 1009
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v22

    const/16 v23, -0x1

    const/16 v24, 0x0

    .line 1008
    move-object/from16 v25, v20

    .end local v20    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v25, "attributes":Lcom/sleepycat/asm/Attribute;
    move-object/from16 v0, p0

    move/from16 v26, v19

    .end local v19    # "impanns":I
    .local v26, "impanns":I
    move/from16 v27, v2

    .end local v2    # "mpanns":I
    .local v27, "mpanns":I
    move-object v2, v6

    move/from16 v28, v3

    .end local v3    # "dann":I
    .local v28, "dann":I
    move/from16 v3, v21

    move/from16 v29, v4

    .end local v4    # "itanns":I
    .local v29, "itanns":I
    move/from16 v4, v22

    move/from16 v30, v5

    .end local v5    # "tanns":I
    .local v30, "tanns":I
    move-object v5, v10

    move/from16 v20, v13

    move/from16 v13, v18

    move-object/from16 v18, v6

    .end local v6    # "attrName":Ljava/lang/String;
    .local v13, "ianns":I
    .local v18, "attrName":Ljava/lang/String;
    .local v20, "exception":I
    move/from16 v6, v23

    move/from16 v21, v12

    move v12, v7

    .end local v7    # "anns":I
    .local v12, "anns":I
    .local v21, "code":I
    move-object/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/asm/ClassReader;->readAttribute([Lcom/sleepycat/asm/Attribute;Ljava/lang/String;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v0

    .line 1010
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    if-eqz v0, :cond_f

    .line 1011
    move-object/from16 v6, v25

    .end local v25    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v6, "attributes":Lcom/sleepycat/asm/Attribute;
    iput-object v6, v0, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1012
    move-object v1, v0

    move v7, v12

    move v6, v13

    move/from16 v13, v20

    move/from16 v12, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    .end local v6    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "attributes":Lcom/sleepycat/asm/Attribute;
    goto :goto_3

    .line 1010
    .end local v1    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v25    # "attributes":Lcom/sleepycat/asm/Attribute;
    :cond_f
    move-object/from16 v6, v25

    .line 1015
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    .end local v21    # "code":I
    .end local v25    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v26    # "impanns":I
    .end local v27    # "mpanns":I
    .end local v28    # "dann":I
    .end local v29    # "itanns":I
    .end local v30    # "tanns":I
    .local v1, "impanns":I
    .restart local v2    # "mpanns":I
    .restart local v3    # "dann":I
    .restart local v4    # "itanns":I
    .restart local v5    # "tanns":I
    .local v6, "attrName":Ljava/lang/String;
    .restart local v7    # "anns":I
    .local v12, "code":I
    .local v13, "exception":I
    .local v18, "ianns":I
    .local v20, "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_2
    move-object v0, v6

    move v7, v12

    move v6, v13

    move/from16 v13, v20

    move/from16 v12, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    .end local v20    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v0, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v6, "ianns":I
    .local v18, "attrName":Ljava/lang/String;
    :goto_3
    move-object/from16 v19, v0

    .end local v0    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v19, "attributes":Lcom/sleepycat/asm/Attribute;
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    .line 969
    .end local v18    # "attrName":Ljava/lang/String;
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, v19

    goto/16 :goto_0

    .end local v6    # "ianns":I
    .end local v19    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v0    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v18, "ianns":I
    :cond_10
    move-object v6, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v20, v13

    move/from16 v13, v18

    move v12, v7

    .line 1017
    .end local v0    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v1    # "impanns":I
    .end local v2    # "mpanns":I
    .end local v3    # "dann":I
    .end local v4    # "itanns":I
    .end local v5    # "tanns":I
    .end local v7    # "anns":I
    .end local v17    # "i":I
    .end local v18    # "ianns":I
    .local v6, "attributes":Lcom/sleepycat/asm/Attribute;
    .local v12, "anns":I
    .local v13, "ianns":I
    .local v20, "exception":I
    .restart local v21    # "code":I
    .restart local v26    # "impanns":I
    .restart local v27    # "mpanns":I
    .restart local v28    # "dann":I
    .restart local v29    # "itanns":I
    .restart local v30    # "tanns":I
    add-int/lit8 v11, v11, 0x2

    .line 1020
    iget v1, v9, Lcom/sleepycat/asm/Context;->access:I

    iget-object v2, v9, Lcom/sleepycat/asm/Context;->name:Ljava/lang/String;

    iget-object v3, v9, Lcom/sleepycat/asm/Context;->desc:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v4, v15

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 1022
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    if-nez v0, :cond_11

    .line 1023
    return v11

    .line 1036
    :cond_11
    instance-of v1, v0, Lcom/sleepycat/asm/MethodWriter;

    if-eqz v1, :cond_18

    .line 1037
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/asm/MethodWriter;

    .line 1038
    .local v1, "mw":Lcom/sleepycat/asm/MethodWriter;
    iget-object v3, v1, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v3, v3, Lcom/sleepycat/asm/ClassWriter;->cr:Lcom/sleepycat/asm/ClassReader;

    if-ne v3, v8, :cond_17

    iget-object v3, v1, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    if-ne v15, v3, :cond_17

    .line 1039
    const/4 v3, 0x0

    .line 1040
    .local v3, "sameExceptions":Z
    if-nez v14, :cond_13

    .line 1041
    iget v4, v1, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    :goto_4
    move v3, v4

    goto :goto_6

    .line 1042
    :cond_13
    array-length v4, v14

    iget v5, v1, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-ne v4, v5, :cond_15

    .line 1043
    const/4 v3, 0x1

    .line 1044
    array-length v4, v14

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "j":I
    :goto_5
    if-ltz v4, :cond_15

    .line 1045
    add-int/lit8 v5, v20, -0x2

    .line 1046
    .end local v20    # "exception":I
    .local v5, "exception":I
    iget-object v7, v1, Lcom/sleepycat/asm/MethodWriter;->exceptions:[I

    aget v7, v7, v4

    invoke-virtual {v8, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-eq v7, v2, :cond_14

    .line 1047
    const/4 v3, 0x0

    .line 1048
    move/from16 v20, v5

    goto :goto_6

    .line 1044
    :cond_14
    add-int/lit8 v4, v4, -0x1

    move/from16 v20, v5

    goto :goto_5

    .line 1052
    .end local v4    # "j":I
    .end local v5    # "exception":I
    .restart local v20    # "exception":I
    :cond_15
    :goto_6
    if-eqz v3, :cond_16

    .line 1058
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .local v2, "firstAttribute":I
    iput v2, v1, Lcom/sleepycat/asm/MethodWriter;->classReaderOffset:I

    .line 1059
    sub-int v4, v11, v2

    iput v4, v1, Lcom/sleepycat/asm/MethodWriter;->classReaderLength:I

    .line 1060
    return v11

    .line 1052
    .end local v2    # "firstAttribute":I
    .restart local p3    # "firstAttribute":I
    :cond_16
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    goto :goto_7

    .line 1038
    .end local v2    # "firstAttribute":I
    .end local v3    # "sameExceptions":Z
    .restart local p3    # "firstAttribute":I
    :cond_17
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    goto :goto_7

    .line 1036
    .end local v1    # "mw":Lcom/sleepycat/asm/MethodWriter;
    .end local v2    # "firstAttribute":I
    .restart local p3    # "firstAttribute":I
    :cond_18
    move/from16 v2, p3

    .line 1066
    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :goto_7
    if-eqz v16, :cond_19

    .line 1067
    iget-object v1, v8, Lcom/sleepycat/asm/ClassReader;->b:[B

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    .local v1, "i":I
    add-int/lit8 v3, v16, 0x1

    .local v3, "v":I
    :goto_8
    if-lez v1, :cond_19

    .line 1068
    invoke-virtual {v8, v3, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v8, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 1067
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_8

    .line 1073
    .end local v1    # "i":I
    .end local v3    # "v":I
    :cond_19
    const/4 v1, 0x0

    move/from16 v3, v28

    .end local v28    # "dann":I
    .local v3, "dann":I
    if-eqz v3, :cond_1a

    .line 1074
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitAnnotationDefault()Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v4

    .line 1075
    .local v4, "dv":Lcom/sleepycat/asm/AnnotationVisitor;
    invoke-direct {v8, v3, v10, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lcom/sleepycat/asm/AnnotationVisitor;)I

    .line 1076
    if-eqz v4, :cond_1a

    .line 1077
    invoke-virtual {v4}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnd()V

    .line 1080
    .end local v4    # "dv":Lcom/sleepycat/asm/AnnotationVisitor;
    :cond_1a
    if-eqz v12, :cond_1c

    .line 1081
    invoke-virtual {v8, v12}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .local v4, "i":I
    add-int/lit8 v7, v12, 0x2

    .local v7, "v":I
    :goto_9
    if-lez v4, :cond_1b

    .line 1082
    add-int/lit8 v5, v7, 0x2

    .line 1083
    invoke-virtual {v8, v7, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "firstAttribute":I
    .local v18, "firstAttribute":I
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v1

    .line 1082
    invoke-direct {v8, v5, v10, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v7

    .line 1081
    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v18

    const/4 v1, 0x0

    goto :goto_9

    .end local v18    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :cond_1b
    move/from16 v18, v2

    .end local v2    # "firstAttribute":I
    .restart local v18    # "firstAttribute":I
    goto :goto_a

    .line 1080
    .end local v4    # "i":I
    .end local v7    # "v":I
    .end local v18    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :cond_1c
    move/from16 v18, v2

    .line 1086
    .end local v2    # "firstAttribute":I
    .restart local v18    # "firstAttribute":I
    :goto_a
    if-eqz v13, :cond_1d

    .line 1087
    invoke-virtual {v8, v13}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v13, 0x2

    .local v2, "v":I
    :goto_b
    if-lez v1, :cond_1d

    .line 1088
    add-int/lit8 v4, v2, 0x2

    .line 1089
    invoke-virtual {v8, v2, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v5

    .line 1088
    const/4 v7, 0x1

    invoke-direct {v8, v4, v10, v7, v5}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v2

    .line 1087
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1092
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_1d
    move/from16 v5, v30

    .end local v30    # "tanns":I
    .local v5, "tanns":I
    if-eqz v5, :cond_1f

    .line 1093
    invoke-virtual {v8, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v5, 0x2

    .restart local v2    # "v":I
    :goto_c
    if-lez v1, :cond_1e

    .line 1094
    invoke-direct {v8, v9, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 1095
    add-int/lit8 v4, v2, 0x2

    iget v7, v9, Lcom/sleepycat/asm/Context;->typeRef:I

    move/from16 v28, v3

    .end local v3    # "dann":I
    .restart local v28    # "dann":I
    iget-object v3, v9, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 1097
    move/from16 v30, v5

    .end local v5    # "tanns":I
    .restart local v30    # "tanns":I
    invoke-virtual {v8, v2, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1096
    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v22, "v":I
    invoke-virtual {v0, v7, v3, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v3

    .line 1095
    invoke-direct {v8, v4, v10, v2, v3}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v3

    .line 1093
    .end local v22    # "v":I
    .local v3, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v3

    move/from16 v3, v28

    move/from16 v5, v30

    goto :goto_c

    .end local v28    # "dann":I
    .end local v30    # "tanns":I
    .restart local v2    # "v":I
    .local v3, "dann":I
    .restart local v5    # "tanns":I
    :cond_1e
    move/from16 v28, v3

    move/from16 v30, v5

    .end local v3    # "dann":I
    .end local v5    # "tanns":I
    .restart local v28    # "dann":I
    .restart local v30    # "tanns":I
    goto :goto_d

    .line 1092
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v28    # "dann":I
    .end local v30    # "tanns":I
    .restart local v3    # "dann":I
    .restart local v5    # "tanns":I
    :cond_1f
    move/from16 v28, v3

    move/from16 v30, v5

    .line 1100
    .end local v3    # "dann":I
    .end local v5    # "tanns":I
    .restart local v28    # "dann":I
    .restart local v30    # "tanns":I
    :goto_d
    move/from16 v4, v29

    .end local v29    # "itanns":I
    .local v4, "itanns":I
    if-eqz v4, :cond_21

    .line 1101
    invoke-virtual {v8, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v4, 0x2

    .restart local v2    # "v":I
    :goto_e
    if-lez v1, :cond_20

    .line 1102
    invoke-direct {v8, v9, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 1103
    add-int/lit8 v3, v2, 0x2

    iget v5, v9, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v7, v9, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 1105
    move/from16 v29, v4

    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    invoke-virtual {v8, v2, v10}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1104
    move/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "v":I
    .restart local v22    # "v":I
    invoke-virtual {v0, v5, v7, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v4

    .line 1103
    const/4 v2, 0x1

    invoke-direct {v8, v3, v10, v2, v4}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v3

    .line 1101
    .end local v22    # "v":I
    .local v3, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v3

    move/from16 v4, v29

    goto :goto_e

    .end local v3    # "v":I
    .end local v29    # "itanns":I
    .restart local v2    # "v":I
    .restart local v4    # "itanns":I
    :cond_20
    move/from16 v29, v4

    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    goto :goto_f

    .line 1100
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v29    # "itanns":I
    .restart local v4    # "itanns":I
    :cond_21
    move/from16 v29, v4

    .line 1108
    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    :goto_f
    move/from16 v2, v27

    .end local v27    # "mpanns":I
    .local v2, "mpanns":I
    if-eqz v2, :cond_22

    .line 1109
    const/4 v1, 0x1

    invoke-direct {v8, v0, v9, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readParameterAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)V

    .line 1111
    :cond_22
    move/from16 v1, v26

    .end local v26    # "impanns":I
    .local v1, "impanns":I
    if-eqz v1, :cond_23

    .line 1112
    const/4 v3, 0x0

    invoke-direct {v8, v0, v9, v1, v3}, Lcom/sleepycat/asm/ClassReader;->readParameterAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)V

    .line 1116
    :cond_23
    :goto_10
    if-eqz v6, :cond_24

    .line 1117
    iget-object v3, v6, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1118
    .local v3, "attr":Lcom/sleepycat/asm/Attribute;
    const/4 v4, 0x0

    iput-object v4, v6, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 1119
    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 1120
    move-object v6, v3

    .line 1121
    .end local v3    # "attr":Lcom/sleepycat/asm/Attribute;
    goto :goto_10

    .line 1124
    :cond_24
    if-eqz v21, :cond_25

    .line 1125
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 1126
    move/from16 v3, v21

    .end local v21    # "code":I
    .local v3, "code":I
    invoke-direct {v8, v0, v9, v3}, Lcom/sleepycat/asm/ClassReader;->readCode(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;I)V

    goto :goto_11

    .line 1124
    .end local v3    # "code":I
    .restart local v21    # "code":I
    :cond_25
    move/from16 v3, v21

    .line 1130
    .end local v21    # "code":I
    .restart local v3    # "code":I
    :goto_11
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 1132
    return v11
.end method

.method private readModule(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;ILjava/lang/String;I)V
    .locals 17
    .param p1, "classVisitor"    # Lcom/sleepycat/asm/ClassVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "u"    # I
    .param p4, "mainClass"    # Ljava/lang/String;
    .param p5, "packages"    # I

    .line 723
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    iget-object v4, v3, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 726
    .local v4, "buffer":[C
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 728
    .local v6, "flags":I
    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v0, v7, v4}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 729
    .local v7, "version":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x6

    .line 731
    .end local p3    # "u":I
    .local v1, "u":I
    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v6, v7}, Lcom/sleepycat/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/asm/ModuleVisitor;

    move-result-object v9

    .line 732
    .local v9, "mv":Lcom/sleepycat/asm/ModuleVisitor;
    if-nez v9, :cond_0

    .line 733
    return-void

    .line 737
    :cond_0
    if-eqz v2, :cond_1

    .line 738
    invoke-virtual {v9, v2}, Lcom/sleepycat/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 741
    :cond_1
    if-eqz p5, :cond_2

    .line 742
    add-int/lit8 v10, p5, -0x2

    invoke-virtual {v0, v10}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move v11, v10

    move/from16 v10, p5

    .end local p5    # "packages":I
    .local v10, "packages":I
    .local v11, "i":I
    :goto_0
    if-lez v11, :cond_3

    .line 743
    invoke-virtual {v0, v10, v4}, Lcom/sleepycat/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "packaze":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/sleepycat/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    .line 745
    nop

    .end local v12    # "packaze":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x2

    .line 742
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 741
    .end local v10    # "packages":I
    .end local v11    # "i":I
    .restart local p5    # "packages":I
    :cond_2
    move/from16 v10, p5

    .line 750
    .end local p5    # "packages":I
    .restart local v10    # "packages":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 751
    add-int/lit8 v11, v1, -0x2

    invoke-virtual {v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .restart local v11    # "i":I
    :goto_1
    if-lez v11, :cond_4

    .line 752
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v12

    .line 753
    .local v12, "module":Ljava/lang/String;
    add-int/lit8 v13, v1, 0x2

    invoke-virtual {v0, v13}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 754
    .local v13, "access":I
    add-int/lit8 v14, v1, 0x4

    invoke-virtual {v0, v14, v4}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 755
    .local v14, "requireVersion":Ljava/lang/String;
    invoke-virtual {v9, v12, v13, v14}, Lcom/sleepycat/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    .line 756
    nop

    .end local v12    # "module":Ljava/lang/String;
    .end local v13    # "access":I
    .end local v14    # "requireVersion":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x6

    .line 751
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 760
    .end local v11    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    .line 761
    add-int/lit8 v11, v1, -0x2

    invoke-virtual {v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .restart local v11    # "i":I
    :goto_2
    if-lez v11, :cond_6

    .line 762
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v12

    .line 763
    .local v12, "export":Ljava/lang/String;
    add-int/lit8 v13, v1, 0x2

    invoke-virtual {v0, v13}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 764
    .restart local v13    # "access":I
    add-int/lit8 v14, v1, 0x4

    invoke-virtual {v0, v14}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 765
    .local v14, "exportToCount":I
    add-int/lit8 v1, v1, 0x6

    .line 766
    const/4 v15, 0x0

    .line 767
    .local v15, "tos":[Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 768
    new-array v15, v14, [Ljava/lang/String;

    .line 769
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_3
    array-length v3, v15

    if-ge v2, v3, :cond_5

    .line 770
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 771
    add-int/lit8 v1, v1, 0x2

    .line 769
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p2

    goto :goto_3

    .line 774
    .end local v2    # "j":I
    :cond_5
    invoke-virtual {v9, v12, v13, v15}, Lcom/sleepycat/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 761
    .end local v12    # "export":Ljava/lang/String;
    .end local v13    # "access":I
    .end local v14    # "exportToCount":I
    .end local v15    # "tos":[Ljava/lang/String;
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto :goto_2

    .line 778
    .end local v11    # "i":I
    :cond_6
    add-int/lit8 v1, v1, 0x2

    .line 779
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_4
    if-lez v2, :cond_8

    .line 780
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "open":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x2

    invoke-virtual {v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 782
    .local v11, "access":I
    add-int/lit8 v12, v1, 0x4

    invoke-virtual {v0, v12}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 783
    .local v12, "openToCount":I
    add-int/lit8 v1, v1, 0x6

    .line 784
    const/4 v13, 0x0

    .line 785
    .local v13, "tos":[Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 786
    new-array v13, v12, [Ljava/lang/String;

    .line 787
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    array-length v15, v13

    if-ge v14, v15, :cond_7

    .line 788
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 789
    add-int/lit8 v1, v1, 0x2

    .line 787
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 792
    .end local v14    # "j":I
    :cond_7
    invoke-virtual {v9, v3, v11, v13}, Lcom/sleepycat/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 779
    .end local v3    # "open":Ljava/lang/String;
    .end local v11    # "access":I
    .end local v12    # "openToCount":I
    .end local v13    # "tos":[Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 796
    .end local v2    # "i":I
    :cond_8
    add-int/lit8 v1, v1, 0x2

    .line 797
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "i":I
    :goto_6
    if-lez v2, :cond_9

    .line 798
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/sleepycat/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    .line 799
    add-int/lit8 v1, v1, 0x2

    .line 797
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 803
    .end local v2    # "i":I
    :cond_9
    add-int/lit8 v1, v1, 0x2

    .line 804
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "i":I
    :goto_7
    if-lez v2, :cond_b

    .line 805
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "service":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x2

    invoke-virtual {v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 807
    .local v11, "provideWithCount":I
    add-int/lit8 v1, v1, 0x4

    .line 808
    new-array v12, v11, [Ljava/lang/String;

    .line 809
    .local v12, "withs":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8
    array-length v14, v12

    if-ge v13, v14, :cond_a

    .line 810
    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 811
    add-int/lit8 v1, v1, 0x2

    .line 809
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 813
    .end local v13    # "j":I
    :cond_a
    invoke-virtual {v9, v3, v12}, Lcom/sleepycat/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    .line 804
    .end local v3    # "service":Ljava/lang/String;
    .end local v11    # "provideWithCount":I
    .end local v12    # "withs":[Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 816
    .end local v2    # "i":I
    :cond_b
    invoke-virtual {v9}, Lcom/sleepycat/asm/ModuleVisitor;->visitEnd()V

    .line 817
    return-void
.end method

.method private readParameterAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)V
    .locals 8
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "v"    # I
    .param p4, "visible"    # Z

    .line 1912
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "v":I
    .local v1, "v":I
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 1919
    .local p3, "n":I
    iget-object v0, p2, Lcom/sleepycat/asm/Context;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p3

    .line 1921
    .local v0, "synthetics":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1923
    const/4 v3, 0x0

    const-string v4, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v2, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v3

    .line 1924
    .local v3, "av":Lcom/sleepycat/asm/AnnotationVisitor;
    if-eqz v3, :cond_0

    .line 1925
    invoke-virtual {v3}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnd()V

    .line 1921
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1928
    .end local v3    # "av":Lcom/sleepycat/asm/AnnotationVisitor;
    :cond_1
    iget-object v3, p2, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 1929
    .local v3, "c":[C
    :goto_1
    add-int v4, p3, v0

    if-ge v2, v4, :cond_3

    .line 1930
    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1931
    .local v4, "j":I
    add-int/lit8 v1, v1, 0x2

    .line 1932
    :goto_2
    if-lez v4, :cond_2

    .line 1933
    invoke-virtual {p0, v1, v3}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v5

    .line 1934
    .local v5, "av":Lcom/sleepycat/asm/AnnotationVisitor;
    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v6, v3, v7, v5}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v1

    .line 1932
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1929
    .end local v4    # "j":I
    .end local v5    # "av":Lcom/sleepycat/asm/AnnotationVisitor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1937
    :cond_3
    return-void
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2659
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readTypeAnnotations(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Context;IZ)[I
    .locals 9
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "context"    # Lcom/sleepycat/asm/Context;
    .param p3, "u"    # I
    .param p4, "visible"    # Z

    .line 1759
    iget-object v0, p2, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 1760
    .local v0, "c":[C
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v1, v1, [I

    .line 1761
    .local v1, "offsets":[I
    add-int/lit8 p3, p3, 0x2

    .line 1762
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 1763
    aput p3, v1, v2

    .line 1764
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 1765
    .local v3, "target":I
    ushr-int/lit8 v4, v3, 0x18

    sparse-switch v4, :sswitch_data_0

    .line 1804
    add-int/lit8 p3, p3, 0x3

    goto :goto_2

    .line 1792
    :sswitch_0
    add-int/lit8 p3, p3, 0x4

    .line 1793
    goto :goto_2

    .line 1778
    :sswitch_1
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .local v4, "j":I
    :goto_1
    if-lez v4, :cond_0

    .line 1779
    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 1780
    .local v5, "start":I
    add-int/lit8 v6, p3, 0x5

    invoke-virtual {p0, v6}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 1781
    .local v6, "length":I
    iget-object v7, p2, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    invoke-direct {p0, v5, v7}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1782
    add-int v7, v5, v6

    iget-object v8, p2, Lcom/sleepycat/asm/Context;->labels:[Lcom/sleepycat/asm/Label;

    invoke-direct {p0, v7, v8}, Lcom/sleepycat/asm/ClassReader;->createLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;

    .line 1783
    nop

    .end local v5    # "start":I
    .end local v6    # "length":I
    add-int/lit8 p3, p3, 0x6

    .line 1778
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1785
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 p3, p3, 0x3

    .line 1786
    goto :goto_2

    .line 1774
    :sswitch_2
    add-int/lit8 p3, p3, 0x1

    .line 1775
    goto :goto_2

    .line 1769
    :sswitch_3
    add-int/lit8 p3, p3, 0x2

    .line 1770
    nop

    .line 1807
    :goto_2
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v4

    .line 1808
    .local v4, "pathLength":I
    ushr-int/lit8 v5, v3, 0x18

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_2

    .line 1809
    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    new-instance v7, Lcom/sleepycat/asm/TypePath;

    iget-object v5, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    invoke-direct {v7, v5, p3}, Lcom/sleepycat/asm/TypePath;-><init>([BI)V

    :goto_3
    move-object v5, v7

    .line 1810
    .local v5, "path":Lcom/sleepycat/asm/TypePath;
    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v8

    add-int/2addr p3, v6

    .line 1811
    add-int/lit8 v6, p3, 0x2

    .line 1813
    invoke-virtual {p0, p3, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 1812
    invoke-virtual {p1, v3, v5, v7, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitTryCatchAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v7

    .line 1811
    invoke-direct {p0, v6, v0, v8, v7}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result p3

    .line 1814
    .end local v5    # "path":Lcom/sleepycat/asm/TypePath;
    goto :goto_4

    .line 1815
    :cond_2
    add-int/lit8 v5, p3, 0x3

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v0, v8, v7}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result p3

    .line 1762
    .end local v3    # "target":I
    .end local v4    # "pathLength":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1818
    .end local v2    # "i":I
    :cond_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .line 2612
    add-int v0, p1, p2

    .line 2613
    .local v0, "endIndex":I
    iget-object v1, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 2614
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 2616
    .local v2, "strLen":I
    const/4 v3, 0x0

    .line 2617
    .local v3, "st":I
    const/4 v4, 0x0

    .line 2618
    .local v4, "cc":C
    :goto_0
    if-ge p1, v0, :cond_2

    .line 2619
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "index":I
    .local v5, "index":I
    aget-byte p1, v1, p1

    .line 2620
    .local p1, "c":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2640
    :pswitch_0
    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 v7, p1, 0x3f

    or-int/2addr v6, v7

    int-to-char v4, v6

    .line 2641
    const/4 v3, 0x1

    goto :goto_1

    .line 2635
    :pswitch_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .local v6, "strLen":I
    shl-int/lit8 v7, v4, 0x6

    and-int/lit8 v8, p1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p3, v2

    .line 2636
    const/4 v2, 0x0

    .line 2637
    .end local v3    # "st":I
    .local v2, "st":I
    move v3, v2

    move v2, v6

    goto :goto_1

    .line 2622
    .end local v6    # "strLen":I
    .local v2, "strLen":I
    .restart local v3    # "st":I
    :pswitch_2
    and-int/lit16 p1, p1, 0xff

    .line 2623
    const/16 v6, 0x80

    if-ge p1, v6, :cond_0

    .line 2624
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .restart local v6    # "strLen":I
    int-to-char v7, p1

    aput-char v7, p3, v2

    move v2, v6

    goto :goto_1

    .line 2625
    .end local v6    # "strLen":I
    .restart local v2    # "strLen":I
    :cond_0
    const/16 v6, 0xe0

    if-ge p1, v6, :cond_1

    const/16 v6, 0xbf

    if-le p1, v6, :cond_1

    .line 2626
    and-int/lit8 v6, p1, 0x1f

    int-to-char v4, v6

    .line 2627
    const/4 v3, 0x1

    goto :goto_1

    .line 2629
    :cond_1
    and-int/lit8 v6, p1, 0xf

    int-to-char v4, v6

    .line 2630
    const/4 v3, 0x2

    .line 2632
    nop

    .line 2642
    :goto_1
    move p1, v5

    goto :goto_0

    .line 2645
    .end local v5    # "index":I
    .local p1, "index":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/sleepycat/asm/ClassVisitor;I)V
    .locals 1
    .param p1, "classVisitor"    # Lcom/sleepycat/asm/ClassVisitor;
    .param p2, "flags"    # I

    .line 500
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sleepycat/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/asm/ClassReader;->accept(Lcom/sleepycat/asm/ClassVisitor;[Lcom/sleepycat/asm/Attribute;I)V

    .line 501
    return-void
.end method

.method public accept(Lcom/sleepycat/asm/ClassVisitor;[Lcom/sleepycat/asm/Attribute;I)V
    .locals 44
    .param p1, "classVisitor"    # Lcom/sleepycat/asm/ClassVisitor;
    .param p2, "attrs"    # [Lcom/sleepycat/asm/Attribute;
    .param p3, "flags"    # I

    .line 526
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    iget v0, v8, Lcom/sleepycat/asm/ClassReader;->header:I

    .line 527
    .local v0, "u":I
    iget v1, v8, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    new-array v11, v1, [C

    .line 529
    .local v11, "c":[C
    new-instance v1, Lcom/sleepycat/asm/Context;

    invoke-direct {v1}, Lcom/sleepycat/asm/Context;-><init>()V

    move-object v12, v1

    .line 530
    .local v12, "context":Lcom/sleepycat/asm/Context;
    move-object/from16 v13, p2

    iput-object v13, v12, Lcom/sleepycat/asm/Context;->attrs:[Lcom/sleepycat/asm/Attribute;

    .line 531
    iput v10, v12, Lcom/sleepycat/asm/Context;->flags:I

    .line 532
    iput-object v11, v12, Lcom/sleepycat/asm/Context;->buffer:[C

    .line 535
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 536
    .local v1, "access":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 537
    .local v14, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 538
    .local v15, "superClass":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .line 539
    .local v7, "interfaces":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x8

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v7

    if-ge v2, v3, :cond_0

    .line 541
    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 542
    add-int/lit8 v0, v0, 0x2

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 547
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x0

    .line 548
    .local v3, "sourceFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 549
    .local v4, "sourceDebug":Ljava/lang/String;
    const/4 v5, 0x0

    .line 550
    .local v5, "enclosingOwner":Ljava/lang/String;
    const/4 v6, 0x0

    .line 551
    .local v6, "enclosingName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 552
    .local v16, "enclosingDesc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 553
    .local v17, "moduleMainClass":Ljava/lang/String;
    const/16 v18, 0x0

    .line 554
    .local v18, "anns":I
    const/16 v19, 0x0

    .line 555
    .local v19, "ianns":I
    const/16 v20, 0x0

    .line 556
    .local v20, "tanns":I
    const/16 v21, 0x0

    .line 557
    .local v21, "itanns":I
    const/16 v22, 0x0

    .line 558
    .local v22, "innerClasses":I
    const/16 v23, 0x0

    .line 559
    .local v23, "module":I
    const/16 v24, 0x0

    .line 560
    .local v24, "packages":I
    const/16 v25, 0x0

    .line 562
    .local v25, "attributes":Lcom/sleepycat/asm/Attribute;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/ClassReader;->getAttributes()I

    move-result v0

    .line 563
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v26

    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v29, v22

    move-object/from16 v30, v25

    move-object/from16 v41, v16

    move/from16 v16, v0

    move/from16 v0, v19

    move-object/from16 v19, v17

    move/from16 v17, v1

    move/from16 v1, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v41

    move-object/from16 v42, v6

    move-object v6, v3

    move-object/from16 v3, v42

    move-object/from16 v43, v5

    move-object v5, v4

    move-object/from16 v4, v43

    .end local v20    # "tanns":I
    .end local v21    # "itanns":I
    .end local v22    # "innerClasses":I
    .end local v25    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v0, "ianns":I
    .local v1, "anns":I
    .local v2, "enclosingDesc":Ljava/lang/String;
    .local v3, "enclosingName":Ljava/lang/String;
    .local v4, "enclosingOwner":Ljava/lang/String;
    .local v5, "sourceDebug":Ljava/lang/String;
    .local v6, "sourceFile":Ljava/lang/String;
    .local v16, "u":I
    .local v17, "access":I
    .local v18, "signature":Ljava/lang/String;
    .local v19, "moduleMainClass":Ljava/lang/String;
    .local v26, "i":I
    .local v27, "tanns":I
    .local v28, "itanns":I
    .local v29, "innerClasses":I
    .local v30, "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_1
    move-object/from16 v20, v7

    .end local v7    # "interfaces":[Ljava/lang/String;
    .local v20, "interfaces":[Ljava/lang/String;
    if-lez v26, :cond_13

    .line 564
    add-int/lit8 v7, v16, 0x2

    invoke-virtual {v8, v7, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, "attrName":Ljava/lang/String;
    move/from16 v22, v0

    .end local v0    # "ianns":I
    .local v22, "ianns":I
    const-string v0, "SourceFile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v6    # "sourceFile":Ljava/lang/String;
    .local v0, "sourceFile":Ljava/lang/String;
    goto/16 :goto_5

    .line 569
    .end local v0    # "sourceFile":Ljava/lang/String;
    .restart local v6    # "sourceFile":Ljava/lang/String;
    :cond_1
    const-string v0, "InnerClasses"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    add-int/lit8 v0, v16, 0x8

    move/from16 v29, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v29    # "innerClasses":I
    .local v0, "innerClasses":I
    goto/16 :goto_5

    .line 571
    .end local v0    # "innerClasses":I
    .restart local v29    # "innerClasses":I
    :cond_2
    const-string v0, "EnclosingMethod"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    .line 573
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .local v0, "enclosingOwner":Ljava/lang/String;
    add-int/lit8 v4, v16, 0xa

    invoke-virtual {v8, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 574
    .local v4, "item":I
    if-eqz v4, :cond_3

    .line 575
    move-object/from16 v21, v0

    .end local v0    # "enclosingOwner":Ljava/lang/String;
    .local v21, "enclosingOwner":Ljava/lang/String;
    iget-object v0, v8, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v0, v0, v4

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 576
    iget-object v0, v8, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 574
    .end local v21    # "enclosingOwner":Ljava/lang/String;
    .restart local v0    # "enclosingOwner":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v0

    .line 578
    .end local v0    # "enclosingOwner":Ljava/lang/String;
    .end local v4    # "item":I
    .restart local v21    # "enclosingOwner":Ljava/lang/String;
    :goto_2
    move-object/from16 v4, v21

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    goto/16 :goto_5

    .end local v21    # "enclosingOwner":Ljava/lang/String;
    .local v4, "enclosingOwner":Ljava/lang/String;
    :cond_4
    const-string v0, "Signature"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 579
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v18    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_5

    .line 580
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/lang/String;
    :cond_5
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    add-int/lit8 v0, v16, 0x8

    move v1, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v1    # "anns":I
    .local v0, "anns":I
    goto/16 :goto_5

    .line 582
    .end local v0    # "anns":I
    .restart local v1    # "anns":I
    :cond_6
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    add-int/lit8 v0, v16, 0x8

    move/from16 v27, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v27    # "tanns":I
    .local v0, "tanns":I
    goto/16 :goto_5

    .line 584
    .end local v0    # "tanns":I
    .restart local v27    # "tanns":I
    :cond_7
    const-string v0, "Deprecated"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 585
    const/high16 v0, 0x20000

    or-int v0, v17, v0

    move/from16 v17, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v17    # "access":I
    .local v0, "access":I
    goto/16 :goto_5

    .line 586
    .end local v0    # "access":I
    .restart local v17    # "access":I
    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 587
    const v0, 0x41000

    or-int v0, v17, v0

    move/from16 v17, v0

    move/from16 v0, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v17    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_5

    .line 589
    .end local v0    # "access":I
    .restart local v17    # "access":I
    :cond_9
    const-string v0, "SourceDebugExtension"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 590
    add-int/lit8 v0, v16, 0x4

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 591
    .local v0, "len":I
    move/from16 v25, v1

    .end local v1    # "anns":I
    .local v25, "anns":I
    add-int/lit8 v1, v16, 0x8

    move-object/from16 v31, v2

    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .local v31, "enclosingDesc":Ljava/lang/String;
    new-array v2, v0, [C

    invoke-direct {v8, v1, v0, v2}, Lcom/sleepycat/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v0

    .line 592
    .end local v5    # "sourceDebug":Ljava/lang/String;
    .local v0, "sourceDebug":Ljava/lang/String;
    move-object v5, v0

    move/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    goto/16 :goto_5

    .end local v0    # "sourceDebug":Ljava/lang/String;
    .end local v25    # "anns":I
    .end local v31    # "enclosingDesc":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v5    # "sourceDebug":Ljava/lang/String;
    :cond_a
    move/from16 v25, v1

    move-object/from16 v31, v2

    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v25    # "anns":I
    .restart local v31    # "enclosingDesc":Ljava/lang/String;
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 593
    add-int/lit8 v0, v16, 0x8

    move-object/from16 v22, v20

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v20, v7

    .end local v22    # "ianns":I
    .local v0, "ianns":I
    goto/16 :goto_5

    .line 594
    .end local v0    # "ianns":I
    .restart local v22    # "ianns":I
    :cond_b
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 595
    add-int/lit8 v0, v16, 0x8

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v28    # "itanns":I
    .local v0, "itanns":I
    goto/16 :goto_5

    .line 596
    .end local v0    # "itanns":I
    .restart local v28    # "itanns":I
    :cond_c
    const-string v0, "Module"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 597
    add-int/lit8 v0, v16, 0x8

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v23    # "module":I
    .local v0, "module":I
    goto/16 :goto_5

    .line 598
    .end local v0    # "module":I
    .restart local v23    # "module":I
    :cond_d
    const-string v0, "ModuleMainClass"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 599
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    move/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v19    # "moduleMainClass":Ljava/lang/String;
    .local v0, "moduleMainClass":Ljava/lang/String;
    goto/16 :goto_5

    .line 600
    .end local v0    # "moduleMainClass":Ljava/lang/String;
    .restart local v19    # "moduleMainClass":Ljava/lang/String;
    :cond_e
    const-string v0, "ModulePackages"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 601
    add-int/lit8 v0, v16, 0xa

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v24    # "packages":I
    .local v0, "packages":I
    goto/16 :goto_5

    .line 602
    .end local v0    # "packages":I
    .restart local v24    # "packages":I
    :cond_f
    const-string v0, "BootstrapMethods"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 603
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    .line 604
    .local v0, "bootstrapMethods":[I
    const/4 v1, 0x0

    .local v1, "j":I
    add-int/lit8 v2, v16, 0xa

    .local v2, "v":I
    :goto_3
    move-object/from16 v32, v3

    .end local v3    # "enclosingName":Ljava/lang/String;
    .local v32, "enclosingName":Ljava/lang/String;
    array-length v3, v0

    if-ge v1, v3, :cond_10

    .line 605
    aput v2, v0, v1

    .line 606
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v8, v3}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    const/16 v21, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 604
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v32

    goto :goto_3

    .line 608
    .end local v1    # "j":I
    .end local v2    # "v":I
    :cond_10
    iput-object v0, v12, Lcom/sleepycat/asm/Context;->bootstrapMethods:[I

    .line 609
    .end local v0    # "bootstrapMethods":[I
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object v13, v6

    move/from16 v37, v22

    move/from16 v35, v25

    move-object/from16 v36, v31

    move-object/from16 v38, v32

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v30

    goto :goto_4

    .line 610
    .end local v32    # "enclosingName":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_11
    move-object/from16 v32, v3

    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v32    # "enclosingName":Ljava/lang/String;
    add-int/lit8 v3, v16, 0x8

    add-int/lit8 v0, v16, 0x4

    .line 611
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v21

    const/16 v33, -0x1

    const/16 v34, 0x0

    .line 610
    move/from16 v2, v22

    .end local v22    # "ianns":I
    .local v2, "ianns":I
    move-object/from16 v0, p0

    move/from16 v35, v25

    .end local v25    # "anns":I
    .local v35, "anns":I
    move-object/from16 v1, p2

    move/from16 v37, v2

    move-object/from16 v36, v31

    .end local v2    # "ianns":I
    .end local v31    # "enclosingDesc":Ljava/lang/String;
    .local v36, "enclosingDesc":Ljava/lang/String;
    .local v37, "ianns":I
    move-object v2, v7

    move-object/from16 v38, v32

    .end local v32    # "enclosingName":Ljava/lang/String;
    .local v38, "enclosingName":Ljava/lang/String;
    move-object/from16 v39, v4

    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .local v39, "enclosingOwner":Ljava/lang/String;
    move/from16 v4, v21

    move-object/from16 v40, v5

    .end local v5    # "sourceDebug":Ljava/lang/String;
    .local v40, "sourceDebug":Ljava/lang/String;
    move-object v5, v11

    move-object v13, v6

    .end local v6    # "sourceFile":Ljava/lang/String;
    .local v13, "sourceFile":Ljava/lang/String;
    move/from16 v6, v33

    move-object/from16 v22, v20

    move-object/from16 v20, v7

    .end local v7    # "attrName":Ljava/lang/String;
    .local v20, "attrName":Ljava/lang/String;
    .local v22, "interfaces":[Ljava/lang/String;
    move-object/from16 v7, v34

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/asm/ClassReader;->readAttribute([Lcom/sleepycat/asm/Attribute;Ljava/lang/String;II[CI[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Attribute;

    move-result-object v0

    .line 612
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    if-eqz v0, :cond_12

    .line 613
    move-object/from16 v7, v30

    .end local v30    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v7, "attributes":Lcom/sleepycat/asm/Attribute;
    iput-object v7, v0, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 614
    move-object v1, v0

    move-object/from16 v30, v1

    move-object v6, v13

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v0, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    .end local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    .local v1, "attributes":Lcom/sleepycat/asm/Attribute;
    goto :goto_5

    .line 612
    .end local v1    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v30    # "attributes":Lcom/sleepycat/asm/Attribute;
    :cond_12
    move-object/from16 v7, v30

    .line 617
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    .end local v30    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_4
    move-object/from16 v30, v7

    move-object v6, v13

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v0, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    .end local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    .end local v13    # "sourceFile":Ljava/lang/String;
    .end local v35    # "anns":I
    .end local v36    # "enclosingDesc":Ljava/lang/String;
    .end local v37    # "ianns":I
    .end local v38    # "enclosingName":Ljava/lang/String;
    .end local v39    # "enclosingOwner":Ljava/lang/String;
    .end local v40    # "sourceDebug":Ljava/lang/String;
    .local v0, "ianns":I
    .local v1, "anns":I
    .local v2, "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    .restart local v4    # "enclosingOwner":Ljava/lang/String;
    .restart local v5    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "sourceFile":Ljava/lang/String;
    .restart local v30    # "attributes":Lcom/sleepycat/asm/Attribute;
    :goto_5
    add-int/lit8 v7, v16, 0x4

    invoke-virtual {v8, v7}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int v16, v16, v7

    .line 563
    .end local v20    # "attrName":Ljava/lang/String;
    add-int/lit8 v26, v26, -0x1

    move-object/from16 v13, p2

    move-object/from16 v7, v22

    goto/16 :goto_1

    .end local v22    # "interfaces":[Ljava/lang/String;
    .local v20, "interfaces":[Ljava/lang/String;
    :cond_13
    move/from16 v37, v0

    move/from16 v35, v1

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object v13, v6

    move-object/from16 v22, v20

    move-object/from16 v7, v30

    .line 621
    .end local v0    # "ianns":I
    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .end local v5    # "sourceDebug":Ljava/lang/String;
    .end local v6    # "sourceFile":Ljava/lang/String;
    .end local v20    # "interfaces":[Ljava/lang/String;
    .end local v26    # "i":I
    .end local v30    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v7    # "attributes":Lcom/sleepycat/asm/Attribute;
    .restart local v13    # "sourceFile":Ljava/lang/String;
    .restart local v22    # "interfaces":[Ljava/lang/String;
    .restart local v35    # "anns":I
    .restart local v36    # "enclosingDesc":Ljava/lang/String;
    .restart local v37    # "ianns":I
    .restart local v38    # "enclosingName":Ljava/lang/String;
    .restart local v39    # "enclosingOwner":Ljava/lang/String;
    .restart local v40    # "sourceDebug":Ljava/lang/String;
    iget-object v0, v8, Lcom/sleepycat/asm/ClassReader;->items:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v17

    move-object v3, v14

    move-object/from16 v4, v18

    move-object v5, v15

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 625
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_15

    if-nez v13, :cond_14

    move-object/from16 v6, v40

    .end local v40    # "sourceDebug":Ljava/lang/String;
    .local v6, "sourceDebug":Ljava/lang/String;
    if-eqz v6, :cond_16

    goto :goto_6

    .end local v6    # "sourceDebug":Ljava/lang/String;
    .restart local v40    # "sourceDebug":Ljava/lang/String;
    :cond_14
    move-object/from16 v6, v40

    .line 627
    .end local v40    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "sourceDebug":Ljava/lang/String;
    :goto_6
    invoke-virtual {v9, v13, v6}, Lcom/sleepycat/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 625
    .end local v6    # "sourceDebug":Ljava/lang/String;
    .restart local v40    # "sourceDebug":Ljava/lang/String;
    :cond_15
    move-object/from16 v6, v40

    .line 631
    .end local v40    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "sourceDebug":Ljava/lang/String;
    :cond_16
    :goto_7
    if-eqz v23, :cond_17

    .line 632
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, v23

    move-object/from16 v4, v19

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/ClassReader;->readModule(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;ILjava/lang/String;I)V

    .line 637
    :cond_17
    move-object/from16 v4, v39

    .end local v39    # "enclosingOwner":Ljava/lang/String;
    .restart local v4    # "enclosingOwner":Ljava/lang/String;
    if-eqz v4, :cond_18

    .line 638
    move-object/from16 v2, v36

    move-object/from16 v3, v38

    .end local v36    # "enclosingDesc":Ljava/lang/String;
    .end local v38    # "enclosingName":Ljava/lang/String;
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    invoke-virtual {v9, v4, v3, v2}, Lcom/sleepycat/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 637
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v36    # "enclosingDesc":Ljava/lang/String;
    .restart local v38    # "enclosingName":Ljava/lang/String;
    :cond_18
    move-object/from16 v2, v36

    move-object/from16 v3, v38

    .line 643
    .end local v36    # "enclosingDesc":Ljava/lang/String;
    .end local v38    # "enclosingName":Ljava/lang/String;
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :goto_8
    move/from16 v1, v35

    .end local v35    # "anns":I
    .restart local v1    # "anns":I
    if-eqz v1, :cond_1a

    .line 644
    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    add-int/lit8 v5, v1, 0x2

    .local v5, "v":I
    :goto_9
    if-lez v0, :cond_19

    .line 645
    move/from16 v35, v1

    .end local v1    # "anns":I
    .restart local v35    # "anns":I
    add-int/lit8 v1, v5, 0x2

    .line 646
    move-object/from16 v36, v2

    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v36    # "enclosingDesc":Ljava/lang/String;
    invoke-virtual {v8, v5, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v38, v3

    const/4 v3, 0x1

    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v38    # "enclosingName":Ljava/lang/String;
    invoke-virtual {v9, v2, v3}, Lcom/sleepycat/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v2

    .line 645
    invoke-direct {v8, v1, v11, v3, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v5

    .line 644
    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v38

    goto :goto_9

    .end local v35    # "anns":I
    .end local v36    # "enclosingDesc":Ljava/lang/String;
    .end local v38    # "enclosingName":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_19
    move/from16 v35, v1

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v35    # "anns":I
    .restart local v36    # "enclosingDesc":Ljava/lang/String;
    .restart local v38    # "enclosingName":Ljava/lang/String;
    goto :goto_a

    .line 643
    .end local v0    # "i":I
    .end local v5    # "v":I
    .end local v35    # "anns":I
    .end local v36    # "enclosingDesc":Ljava/lang/String;
    .end local v38    # "enclosingName":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_1a
    move/from16 v35, v1

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    .line 649
    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v35    # "anns":I
    .restart local v36    # "enclosingDesc":Ljava/lang/String;
    .restart local v38    # "enclosingName":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x0

    move/from16 v1, v37

    .end local v37    # "ianns":I
    .local v1, "ianns":I
    if-eqz v1, :cond_1c

    .line 650
    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    add-int/lit8 v3, v1, 0x2

    .local v3, "v":I
    :goto_b
    if-lez v2, :cond_1b

    .line 651
    add-int/lit8 v5, v3, 0x2

    .line 652
    move/from16 v37, v1

    .end local v1    # "ianns":I
    .restart local v37    # "ianns":I
    invoke-virtual {v8, v3, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lcom/sleepycat/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v1

    .line 651
    const/4 v0, 0x1

    invoke-direct {v8, v5, v11, v0, v1}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v3

    .line 650
    add-int/lit8 v2, v2, -0x1

    move/from16 v1, v37

    const/4 v0, 0x0

    goto :goto_b

    .end local v37    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_1b
    move/from16 v37, v1

    .end local v1    # "ianns":I
    .restart local v37    # "ianns":I
    goto :goto_c

    .line 649
    .end local v2    # "i":I
    .end local v3    # "v":I
    .end local v37    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_1c
    move/from16 v37, v1

    .line 655
    .end local v1    # "ianns":I
    .restart local v37    # "ianns":I
    :goto_c
    move/from16 v0, v27

    .end local v27    # "tanns":I
    .local v0, "tanns":I
    if-eqz v0, :cond_1e

    .line 656
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "i":I
    add-int/lit8 v27, v0, 0x2

    move/from16 v2, v27

    .local v2, "v":I
    :goto_d
    if-lez v1, :cond_1d

    .line 657
    invoke-direct {v8, v12, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 658
    add-int/lit8 v3, v2, 0x2

    iget v5, v12, Lcom/sleepycat/asm/Context;->typeRef:I

    move/from16 v25, v0

    .end local v0    # "tanns":I
    .local v25, "tanns":I
    iget-object v0, v12, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 660
    move-object/from16 v39, v4

    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .restart local v39    # "enclosingOwner":Ljava/lang/String;
    invoke-virtual {v8, v2, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 659
    move/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v26, "v":I
    invoke-virtual {v9, v5, v0, v4, v2}, Lcom/sleepycat/asm/ClassVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 658
    invoke-direct {v8, v3, v11, v2, v0}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v0

    .line 656
    .end local v26    # "v":I
    .local v0, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move/from16 v0, v25

    move-object/from16 v4, v39

    goto :goto_d

    .end local v25    # "tanns":I
    .end local v39    # "enclosingOwner":Ljava/lang/String;
    .local v0, "tanns":I
    .restart local v2    # "v":I
    .restart local v4    # "enclosingOwner":Ljava/lang/String;
    :cond_1d
    move/from16 v25, v0

    move-object/from16 v39, v4

    .end local v0    # "tanns":I
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .restart local v25    # "tanns":I
    .restart local v39    # "enclosingOwner":Ljava/lang/String;
    goto :goto_e

    .line 655
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v25    # "tanns":I
    .end local v39    # "enclosingOwner":Ljava/lang/String;
    .restart local v0    # "tanns":I
    .restart local v4    # "enclosingOwner":Ljava/lang/String;
    :cond_1e
    move/from16 v25, v0

    move-object/from16 v39, v4

    .line 663
    .end local v0    # "tanns":I
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .restart local v25    # "tanns":I
    .restart local v39    # "enclosingOwner":Ljava/lang/String;
    :goto_e
    move/from16 v0, v28

    .end local v28    # "itanns":I
    .local v0, "itanns":I
    if-eqz v0, :cond_20

    .line 664
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v28, v0, 0x2

    move/from16 v2, v28

    .restart local v2    # "v":I
    :goto_f
    if-lez v1, :cond_1f

    .line 665
    invoke-direct {v8, v12, v2}, Lcom/sleepycat/asm/ClassReader;->readAnnotationTarget(Lcom/sleepycat/asm/Context;I)I

    move-result v2

    .line 666
    add-int/lit8 v3, v2, 0x2

    iget v4, v12, Lcom/sleepycat/asm/Context;->typeRef:I

    iget-object v5, v12, Lcom/sleepycat/asm/Context;->typePath:Lcom/sleepycat/asm/TypePath;

    .line 668
    move/from16 v26, v0

    .end local v0    # "itanns":I
    .local v26, "itanns":I
    invoke-virtual {v8, v2, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 667
    move/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "v":I
    .local v27, "v":I
    invoke-virtual {v9, v4, v5, v0, v2}, Lcom/sleepycat/asm/ClassVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 666
    const/4 v4, 0x1

    invoke-direct {v8, v3, v11, v4, v0}, Lcom/sleepycat/asm/ClassReader;->readAnnotationValues(I[CZLcom/sleepycat/asm/AnnotationVisitor;)I

    move-result v0

    .line 664
    .end local v27    # "v":I
    .local v0, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move/from16 v0, v26

    goto :goto_f

    .end local v26    # "itanns":I
    .local v0, "itanns":I
    .restart local v2    # "v":I
    :cond_1f
    move/from16 v26, v0

    move/from16 v28, v2

    .end local v0    # "itanns":I
    .end local v2    # "v":I
    .restart local v26    # "itanns":I
    .local v28, "v":I
    goto :goto_10

    .line 663
    .end local v1    # "i":I
    .end local v26    # "itanns":I
    .end local v28    # "v":I
    .restart local v0    # "itanns":I
    :cond_20
    move/from16 v26, v0

    .line 673
    .end local v0    # "itanns":I
    .restart local v26    # "itanns":I
    :goto_10
    if-eqz v7, :cond_21

    .line 674
    iget-object v0, v7, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 675
    .local v0, "attr":Lcom/sleepycat/asm/Attribute;
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 676
    invoke-virtual {v9, v7}, Lcom/sleepycat/asm/ClassVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 677
    move-object v7, v0

    .line 678
    .end local v0    # "attr":Lcom/sleepycat/asm/Attribute;
    goto :goto_10

    .line 681
    :cond_21
    move/from16 v0, v29

    .end local v29    # "innerClasses":I
    .local v0, "innerClasses":I
    if-eqz v0, :cond_23

    .line 682
    add-int/lit8 v29, v0, 0x2

    .line 683
    .local v29, "v":I
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v2, v29

    .end local v29    # "v":I
    .restart local v1    # "i":I
    .restart local v2    # "v":I
    :goto_11
    if-lez v1, :cond_22

    .line 684
    invoke-virtual {v8, v2, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    .line 685
    invoke-virtual {v8, v4, v11}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x4

    invoke-virtual {v8, v5, v11}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v0

    .end local v0    # "innerClasses":I
    .local v20, "innerClasses":I
    add-int/lit8 v0, v2, 0x6

    .line 686
    invoke-virtual {v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 684
    invoke-virtual {v9, v3, v4, v5, v0}, Lcom/sleepycat/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 687
    add-int/lit8 v2, v2, 0x8

    .line 683
    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v20

    goto :goto_11

    .end local v20    # "innerClasses":I
    .restart local v0    # "innerClasses":I
    :cond_22
    move/from16 v20, v0

    .end local v0    # "innerClasses":I
    .restart local v20    # "innerClasses":I
    goto :goto_12

    .line 681
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v20    # "innerClasses":I
    .restart local v0    # "innerClasses":I
    :cond_23
    move/from16 v20, v0

    .line 692
    .end local v0    # "innerClasses":I
    .restart local v20    # "innerClasses":I
    :goto_12
    iget v0, v8, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0xa

    move-object/from16 v1, v22

    .end local v22    # "interfaces":[Ljava/lang/String;
    .local v1, "interfaces":[Ljava/lang/String;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 693
    .end local v16    # "u":I
    .local v0, "u":I
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_13
    if-lez v2, :cond_24

    .line 694
    invoke-direct {v8, v9, v12, v0}, Lcom/sleepycat/asm/ClassReader;->readField(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;I)I

    move-result v0

    .line 693
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 696
    .end local v2    # "i":I
    :cond_24
    add-int/lit8 v0, v0, 0x2

    .line 697
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "i":I
    :goto_14
    if-lez v2, :cond_25

    .line 698
    invoke-direct {v8, v9, v12, v0}, Lcom/sleepycat/asm/ClassReader;->readMethod(Lcom/sleepycat/asm/ClassVisitor;Lcom/sleepycat/asm/Context;I)I

    move-result v0

    .line 697
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 702
    .end local v2    # "i":I
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/asm/ClassVisitor;->visitEnd()V

    .line 703
    return-void
.end method

.method copyPool(Lcom/sleepycat/asm/ClassWriter;)V
    .locals 14
    .param p1, "classWriter"    # Lcom/sleepycat/asm/ClassWriter;

    .line 281
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 282
    .local v0, "buf":[C
    iget-object v1, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    array-length v1, v1

    .line 283
    .local v1, "ll":I
    new-array v2, v1, [Lcom/sleepycat/asm/Item;

    .line 284
    .local v2, "items2":[Lcom/sleepycat/asm/Item;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    .line 285
    iget-object v5, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v5, v5, v3

    .line 286
    .local v5, "index":I
    iget-object v6, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v7, v5, -0x1

    aget-byte v6, v6, v7

    .line 287
    .local v6, "tag":I
    new-instance v7, Lcom/sleepycat/asm/Item;

    invoke-direct {v7, v3}, Lcom/sleepycat/asm/Item;-><init>(I)V

    .line 289
    .local v7, "item":Lcom/sleepycat/asm/Item;
    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    .line 347
    :pswitch_0
    invoke-virtual {p0, v5, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v8, v8}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    :pswitch_1
    iget-object v8, p1, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    if-nez v8, :cond_0

    .line 335
    invoke-direct {p0, p1, v2, v0}, Lcom/sleepycat/asm/ClassReader;->copyBootstrapMethods(Lcom/sleepycat/asm/ClassWriter;[Lcom/sleepycat/asm/Item;[C)V

    .line 337
    :cond_0
    iget-object v8, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 338
    .local v8, "nameType":I
    invoke-virtual {p0, v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 339
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 338
    invoke-virtual {v7, v9, v10, v11}, Lcom/sleepycat/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    goto/16 :goto_1

    .line 326
    .end local v8    # "nameType":I
    :pswitch_2
    iget-object v8, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 327
    .local v8, "fieldOrMethodRef":I
    iget-object v9, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p0, v10}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aget v9, v9, v10

    .line 328
    .local v9, "nameType":I
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    .line 329
    invoke-virtual {p0, v8, v0}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    .line 330
    invoke-virtual {p0, v9, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v9, 0x2

    invoke-virtual {p0, v13, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 328
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    goto/16 :goto_1

    .line 304
    .end local v8    # "fieldOrMethodRef":I
    .end local v9    # "nameType":I
    :pswitch_3
    invoke-virtual {p0, v5, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v9, v10, v8}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    goto :goto_1

    .line 293
    :pswitch_4
    iget-object v8, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 294
    .local v8, "nameType":I
    invoke-virtual {p0, v5, v0}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v8, 0x2

    .line 295
    invoke-virtual {p0, v11, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 294
    invoke-virtual {v7, v6, v9, v10, v11}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto :goto_1

    .line 312
    .end local v8    # "nameType":I
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/asm/Item;->set(D)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    .line 314
    goto :goto_1

    .line 308
    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/asm/Item;->set(J)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 310
    goto :goto_1

    .line 301
    :pswitch_7
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/Item;->set(F)V

    .line 302
    goto :goto_1

    .line 298
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/Item;->set(I)V

    .line 299
    goto :goto_1

    .line 316
    :pswitch_9
    iget-object v9, p0, Lcom/sleepycat/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v10, v9, v3

    .line 317
    .local v10, "s":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 318
    iget-object v11, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v5, v11, v3

    .line 319
    add-int/lit8 v11, v5, 0x2

    .line 320
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 319
    invoke-direct {p0, v11, v12, v0}, Lcom/sleepycat/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    move-object v10, v11

    .line 322
    :cond_1
    invoke-virtual {v7, v6, v10, v8, v8}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    nop

    .line 351
    .end local v10    # "s":Ljava/lang/String;
    :goto_1
    iget v8, v7, Lcom/sleepycat/asm/Item;->hashCode:I

    array-length v9, v2

    rem-int/2addr v8, v9

    .line 352
    .local v8, "index2":I
    aget-object v9, v2, v8

    iput-object v9, v7, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 353
    aput-object v7, v2, v8

    .line 284
    .end local v5    # "index":I
    .end local v6    # "tag":I
    .end local v7    # "item":Lcom/sleepycat/asm/Item;
    .end local v8    # "index2":I
    add-int/2addr v3, v4

    goto/16 :goto_0

    .line 356
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v3, v3, v4

    sub-int/2addr v3, v4

    .line 357
    .local v3, "off":I
    iget-object v4, p1, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    iget-object v5, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    iget v6, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 358
    iput-object v2, p1, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    .line 359
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v4, v6

    iput v4, p1, Lcom/sleepycat/asm/ClassWriter;->threshold:I

    .line 360
    iput v1, p1, Lcom/sleepycat/asm/ClassWriter;->index:I

    .line 361
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccess()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 233
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .line 260
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 261
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 262
    .local v1, "n":I
    new-array v2, v1, [Ljava/lang/String;

    .line 263
    .local v2, "interfaces":[Ljava/lang/String;
    if-lez v1, :cond_0

    .line 264
    iget v3, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    .line 265
    .local v3, "buf":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x2

    .line 267
    invoke-virtual {p0, v0, v3}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v3    # "buf":[C
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1
    .param p1, "item"    # I

    .line 2488
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 2474
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 2499
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    .line 247
    iget v0, p0, Lcom/sleepycat/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sleepycat/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2512
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2676
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 16
    .param p1, "item"    # I
    .param p2, "buf"    # [C

    .line 2728
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget v2, v2, p1

    .line 2729
    .local v2, "index":I
    iget-object v3, v0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2745
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readByte(I)I

    move-result v3

    .line 2746
    .local v3, "tag":I
    iget-object v10, v0, Lcom/sleepycat/asm/ClassReader;->items:[I

    .line 2747
    .local v10, "items":[I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v4, v10, v4

    .line 2748
    .local v4, "cpIndex":I
    iget-object v5, v0, Lcom/sleepycat/asm/ClassReader;->b:[B

    add-int/lit8 v6, v4, -0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 2743
    .end local v3    # "tag":I
    .end local v4    # "cpIndex":I
    .end local v10    # "items":[I
    :sswitch_0
    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/asm/Type;->getMethodType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v3

    return-object v3

    .line 2741
    :sswitch_1
    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2739
    :sswitch_2
    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v3

    return-object v3

    .line 2737
    :sswitch_3
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 2735
    :sswitch_4
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 2733
    :sswitch_5
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 2731
    :sswitch_6
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2748
    .restart local v3    # "tag":I
    .restart local v4    # "cpIndex":I
    .restart local v10    # "items":[I
    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v9, v5

    .line 2749
    .local v9, "itf":Z
    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    .line 2750
    .local v11, "owner":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v12, v10, v5

    .line 2751
    .end local v4    # "cpIndex":I
    .local v12, "cpIndex":I
    invoke-virtual {v0, v12, v1}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 2752
    .local v13, "name":Ljava/lang/String;
    add-int/lit8 v4, v12, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 2753
    .local v14, "desc":Ljava/lang/String;
    new-instance v15, Lcom/sleepycat/asm/Handle;

    move-object v4, v15

    move v5, v3

    move-object v6, v11

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v15

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2553
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 2554
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected readLabel(I[Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Label;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 2355
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2356
    new-instance v0, Lcom/sleepycat/asm/Label;

    invoke-direct {v0}, Lcom/sleepycat/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2358
    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 6
    .param p1, "index"    # I

    .line 2568
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 2569
    .local v0, "l1":J
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2570
    .local v2, "l0":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readModule(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2693
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2710
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 2539
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 2540
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2587
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2588
    .local v0, "item":I
    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 2591
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v2, v1, v0

    .line 2592
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2593
    return-object v2

    .line 2595
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/asm/ClassReader;->items:[I

    aget p1, v3, v0

    .line 2596
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/sleepycat/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    return-object v3

    .line 2589
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2525
    iget-object v0, p0, Lcom/sleepycat/asm/ClassReader;->b:[B

    .line 2526
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
