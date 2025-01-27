.class public Lbsh/JavaCharStream;
.super Ljava/lang/Object;
.source "JavaCharStream.java"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected nextCharBuf:[C

.field protected nextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;

    .line 473
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 474
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .line 468
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 469
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .line 462
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, p3, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    .line 463
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;

    .line 427
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    .line 428
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .line 422
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    .line 423
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 3
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    .line 92
    const/4 v2, 0x1

    iput v2, p0, Lbsh/JavaCharStream;->line:I

    .line 94
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    .line 95
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    .line 101
    iput v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    .line 102
    iput v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    .line 103
    iput v1, p0, Lbsh/JavaCharStream;->inBuf:I

    .line 408
    iput-object p1, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    .line 409
    iput p2, p0, Lbsh/JavaCharStream;->line:I

    .line 410
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    .line 412
    iput p4, p0, Lbsh/JavaCharStream;->bufsize:I

    iput p4, p0, Lbsh/JavaCharStream;->available:I

    .line 413
    new-array v0, p4, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    .line 414
    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    .line 415
    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    .line 416
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    .line 417
    return-void
.end method

.method static final hexval(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 78
    :sswitch_0
    const/16 v0, 0xf

    return v0

    .line 75
    :sswitch_1
    const/16 v0, 0xe

    return v0

    .line 72
    :sswitch_2
    const/16 v0, 0xd

    return v0

    .line 69
    :sswitch_3
    const/16 v0, 0xc

    return v0

    .line 66
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 63
    :sswitch_5
    const/16 v0, 0xa

    return v0

    .line 59
    :sswitch_6
    const/16 v0, 0x9

    return v0

    .line 57
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 55
    :sswitch_8
    const/4 v0, 0x7

    return v0

    .line 53
    :sswitch_9
    const/4 v0, 0x6

    return v0

    .line 51
    :sswitch_a
    const/4 v0, 0x5

    return v0

    .line 49
    :sswitch_b
    const/4 v0, 0x4

    return v0

    .line 47
    :sswitch_c
    const/4 v0, 0x3

    return v0

    .line 45
    :sswitch_d
    const/4 v0, 0x2

    return v0

    .line 43
    :sswitch_e
    const/4 v0, 0x1

    return v0

    .line 41
    :sswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
        0x37 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected AdjustBuffSize()V
    .locals 4

    .line 214
    iget v0, p0, Lbsh/JavaCharStream;->available:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    const/16 v2, 0x800

    if-ne v0, v1, :cond_1

    .line 216
    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v1, 0x0

    if-le v0, v2, :cond_0

    .line 218
    iput v1, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 219
    iput v0, p0, Lbsh/JavaCharStream;->available:I

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0, v1}, Lbsh/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 224
    :cond_1
    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-le v0, v3, :cond_2

    .line 225
    iput v1, p0, Lbsh/JavaCharStream;->available:I

    goto :goto_0

    .line 226
    :cond_2
    sub-int v0, v3, v0

    if-ge v0, v2, :cond_3

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 229
    :cond_3
    iput v3, p0, Lbsh/JavaCharStream;->available:I

    .line 230
    :goto_0
    return-void
.end method

.method public BeginToken()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 197
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    .line 199
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->bufsize:I

    if-ne v0, v2, :cond_0

    .line 200
    iput v1, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 202
    :cond_0
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    .line 203
    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    aget-char v0, v1, v0

    return v0

    .line 206
    :cond_1
    iput v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 209
    invoke-virtual {p0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    return v0
.end method

.method public Done()V
    .locals 1

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    .line 519
    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    .line 520
    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    .line 521
    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    .line 522
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 7
    .param p1, "wrapAround"    # Z

    .line 107
    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    .line 108
    .local v1, "newbuffer":[C
    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    .line 109
    .local v2, "newbufline":[I
    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    .line 113
    .local v3, "newbufcolumn":[I
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    iget-object v5, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {v5, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    .line 120
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iput-object v2, p0, Lbsh/JavaCharStream;->bufline:[I

    .line 124
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iput-object v3, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    .line 128
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    goto :goto_0

    .line 132
    :cond_0
    iget-object v5, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {v5, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    .line 135
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object v2, p0, Lbsh/JavaCharStream;->bufline:[I

    .line 138
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iput-object v3, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    .line 141
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    nop

    .line 149
    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lbsh/JavaCharStream;->bufsize:I

    iput v0, p0, Lbsh/JavaCharStream;->available:I

    .line 150
    iput v4, p0, Lbsh/JavaCharStream;->tokenBegin:I

    .line 151
    return-void

    .line 144
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_0

    .line 157
    iput v1, p0, Lbsh/JavaCharStream;->nextCharInd:I

    iput v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    iget-object v2, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    iget v3, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    rsub-int v4, v3, 0x1000

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    move v2, v0

    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 167
    iget v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    add-int/2addr v0, v2

    iput v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    .line 168
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 164
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    if-eqz v2, :cond_2

    .line 173
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 174
    invoke-virtual {p0, v1}, Lbsh/JavaCharStream;->backup(I)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v3, p0, Lbsh/JavaCharStream;->line:I

    aput v3, v1, v2

    .line 179
    iget-object v1, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v3, p0, Lbsh/JavaCharStream;->column:I

    aput v3, v1, v2

    .line 181
    :goto_0
    throw v0
.end method

.method public GetImage()Ljava/lang/String;
    .locals 5

    .line 493
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 494
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 6
    .param p1, "len"    # I

    .line 502
    new-array v0, p1, [C

    .line 504
    .local v0, "ret":[C
    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    .line 505
    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v4, p1, v2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    :goto_0
    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;

    .line 488
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 489
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .line 484
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 485
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .line 479
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, p2, p3, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 480
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;

    .line 457
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 458
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .line 452
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 453
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .line 432
    iput-object p1, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    .line 433
    iput p2, p0, Lbsh/JavaCharStream;->line:I

    .line 434
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    .line 436
    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 438
    :cond_0
    iput p4, p0, Lbsh/JavaCharStream;->bufsize:I

    iput p4, p0, Lbsh/JavaCharStream;->available:I

    .line 439
    new-array v0, p4, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    .line 440
    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    .line 441
    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    .line 442
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    .line 444
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    iput-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    .line 445
    iput v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    iput v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    .line 447
    return-void
.end method

.method protected ReadByte()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    iget v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lbsh/JavaCharStream;->FillBuff()V

    .line 190
    :cond_0
    iget-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    iget v1, p0, Lbsh/JavaCharStream;->nextCharInd:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected UpdateLineColumn(C)V
    .locals 3
    .param p1, "c"    # C

    .line 234
    iget v0, p0, Lbsh/JavaCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    .line 236
    iget-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 238
    iput-boolean v2, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    .line 239
    iget v0, p0, Lbsh/JavaCharStream;->line:I

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->line:I

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_2

    .line 243
    iput-boolean v2, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    .line 244
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 246
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 249
    :cond_1
    iget v0, p0, Lbsh/JavaCharStream;->line:I

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->line:I

    .line 252
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 255
    :pswitch_1
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    .line 256
    goto :goto_1

    .line 258
    :pswitch_2
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    .line 259
    goto :goto_1

    .line 261
    :pswitch_3
    iget v0, p0, Lbsh/JavaCharStream;->column:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    .line 262
    and-int/lit8 v1, v0, 0x7

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    .line 263
    nop

    .line 268
    :goto_1
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->line:I

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v2, p0, Lbsh/JavaCharStream;->column:I

    aput v2, v0, v1

    .line 270
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 10
    .param p1, "newLine"    # I
    .param p2, "newCol"    # I

    .line 529
    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    .line 532
    .local v0, "start":I
    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-lt v1, v2, :cond_0

    .line 534
    sub-int/2addr v1, v2

    iget v2, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .local v1, "len":I
    goto :goto_0

    .line 538
    .end local v1    # "len":I
    :cond_0
    iget v3, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    iget v1, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v1, v3

    .line 541
    .restart local v1    # "len":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v4, 0x0

    .line 542
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "nextColDiff":I
    const/4 v6, 0x0

    .line 544
    .local v6, "columnDiff":I
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v7, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v8, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v9, v0, v8

    move v3, v9

    aget v9, v7, v9

    add-int/lit8 v0, v0, 0x1

    rem-int v8, v0, v8

    move v4, v8

    aget v8, v7, v8

    if-ne v9, v8, :cond_1

    .line 547
    aput p1, v7, v3

    .line 548
    iget-object v7, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    aget v8, v7, v4

    add-int/2addr v8, v6

    aget v9, v7, v3

    sub-int v5, v8, v9

    .line 549
    add-int v8, p2, v6

    aput v8, v7, v3

    .line 550
    move v6, v5

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :cond_1
    if-ge v2, v1, :cond_4

    .line 556
    iget-object v7, p0, Lbsh/JavaCharStream;->bufline:[I

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "newLine":I
    .local v8, "newLine":I
    aput p1, v7, v3

    .line 557
    iget-object p1, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    add-int v7, p2, v6

    aput v7, p1, v3

    move p1, v8

    .line 559
    .end local v8    # "newLine":I
    .restart local p1    # "newLine":I
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    if-ge v2, v1, :cond_3

    .line 561
    iget-object v2, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v8, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v9, v0, v8

    move v3, v9

    aget v9, v2, v9

    add-int/lit8 v0, v0, 0x1

    rem-int v8, v0, v8

    aget v8, v2, v8

    if-eq v9, v8, :cond_2

    .line 562
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "newLine":I
    .restart local v8    # "newLine":I
    aput p1, v2, v3

    move v2, v7

    move p1, v8

    goto :goto_2

    .line 564
    .end local v8    # "newLine":I
    .restart local p1    # "newLine":I
    :cond_2
    aput p1, v2, v3

    move v2, v7

    goto :goto_2

    .line 559
    :cond_3
    move v2, v7

    .line 568
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_4
    iget-object v7, p0, Lbsh/JavaCharStream;->bufline:[I

    aget v7, v7, v3

    iput v7, p0, Lbsh/JavaCharStream;->line:I

    .line 569
    iget-object v7, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    aget v7, v7, v3

    iput v7, p0, Lbsh/JavaCharStream;->column:I

    .line 570
    return-void
.end method

.method public backup(I)V
    .locals 2
    .param p1, "amount"    # I

    .line 400
    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    .line 401
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 402
    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 403
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .line 391
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .line 395
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    .line 370
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .line 383
    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .line 387
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    .line 379
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 276
    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    .line 278
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    .line 281
    :cond_0
    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 286
    :cond_1
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->available:I

    if-ne v0, v2, :cond_2

    .line 287
    invoke-virtual {p0}, Lbsh/JavaCharStream;->AdjustBuffSize()V

    .line 289
    :cond_2
    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v3

    move v4, v3

    .local v4, "c":C
    aput-char v3, v0, v2

    const/16 v0, 0x5c

    if-ne v3, v0, :cond_a

    .line 291
    invoke-virtual {p0, v4}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    .line 293
    const/4 v2, 0x1

    .line 297
    .local v2, "backSlashCnt":I
    :goto_0
    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v3, v1

    iput v3, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v5, p0, Lbsh/JavaCharStream;->available:I

    if-ne v3, v5, :cond_3

    .line 298
    invoke-virtual {p0}, Lbsh/JavaCharStream;->AdjustBuffSize()V

    .line 302
    :cond_3
    :try_start_0
    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v6

    move v4, v6

    aput-char v6, v3, v5

    if-eq v6, v0, :cond_8

    .line 304
    invoke-virtual {p0, v4}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    .line 306
    const/16 v3, 0x75

    if-ne v4, v3, :cond_7

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v1, :cond_7

    .line 308
    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v5, v1

    iput v5, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v5, :cond_4

    .line 309
    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    sub-int/2addr v5, v1

    iput v5, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :cond_4
    nop

    .line 333
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v5

    move v4, v5

    if-ne v5, v3, :cond_5

    .line 334
    iget v5, p0, Lbsh/JavaCharStream;->column:I

    add-int/2addr v5, v1

    iput v5, p0, Lbsh/JavaCharStream;->column:I

    goto :goto_1

    .line 336
    :cond_5
    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v4}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0xc

    .line 337
    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v7

    invoke-static {v7}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 338
    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v7

    invoke-static {v7}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    .line 339
    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v7

    invoke-static {v7}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v7

    or-int/2addr v6, v7

    int-to-char v6, v6

    move v4, v6

    aput-char v6, v3, v5

    .line 341
    iget v3, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lbsh/JavaCharStream;->column:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    nop

    .line 349
    if-ne v2, v1, :cond_6

    .line 350
    return v4

    .line 353
    :cond_6
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lbsh/JavaCharStream;->backup(I)V

    .line 354
    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid escape character at line "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lbsh/JavaCharStream;->line:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " column "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lbsh/JavaCharStream;->column:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_2
    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    return v0

    .line 324
    :cond_8
    nop

    .line 326
    invoke-virtual {p0, v4}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 318
    :catch_1
    move-exception v3

    .line 320
    .local v3, "e":Ljava/io/IOException;
    if-le v2, v1, :cond_9

    .line 321
    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->backup(I)V

    .line 323
    :cond_9
    return v0

    .line 359
    .end local v2    # "backSlashCnt":I
    .end local v3    # "e":Ljava/io/IOException;
    :cond_a
    invoke-virtual {p0, v4}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    .line 360
    return v4
.end method
