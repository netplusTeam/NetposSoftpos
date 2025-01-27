.class public abstract Lcom/solab/iso8583/parse/FieldParseInfo;
.super Ljava/lang/Object;
.source "FieldParseInfo.java"


# instance fields
.field private decoder:Lcom/solab/iso8583/CustomField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/solab/iso8583/CustomField<",
            "*>;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field protected forceHexadecimalLength:Z

.field protected forceStringDecoding:Z

.field protected final length:I

.field protected type:Lcom/solab/iso8583/IsoType;


# direct methods
.method public constructor <init>(Lcom/solab/iso8583/IsoType;I)V
    .locals 2
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p2, "len"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->encoding:Ljava/lang/String;

    .line 46
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    .line 50
    iput p2, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->length:I

    .line 51
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IsoType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/solab/iso8583/IsoType;ILjava/lang/String;)Lcom/solab/iso8583/parse/FieldParseInfo;
    .locals 4
    .param p0, "t"    # Lcom/solab/iso8583/IsoType;
    .param p1, "len"    # I
    .param p2, "encoding"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    sget-object v1, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_0

    .line 114
    new-instance v1, Lcom/solab/iso8583/parse/AlphaParseInfo;

    invoke-direct {v1, p1}, Lcom/solab/iso8583/parse/AlphaParseInfo;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 115
    :cond_0
    sget-object v1, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_1

    .line 116
    new-instance v1, Lcom/solab/iso8583/parse/AmountParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/AmountParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 117
    :cond_1
    sget-object v1, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_2

    .line 118
    new-instance v1, Lcom/solab/iso8583/parse/BinaryParseInfo;

    invoke-direct {v1, p1}, Lcom/solab/iso8583/parse/BinaryParseInfo;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 119
    :cond_2
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_3

    .line 120
    new-instance v1, Lcom/solab/iso8583/parse/Date10ParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/Date10ParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 121
    :cond_3
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_4

    .line 122
    new-instance v1, Lcom/solab/iso8583/parse/Date12ParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/Date12ParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 123
    :cond_4
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_5

    .line 124
    new-instance v1, Lcom/solab/iso8583/parse/Date14ParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/Date14ParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 125
    :cond_5
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_6

    .line 126
    new-instance v1, Lcom/solab/iso8583/parse/Date4ParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/Date4ParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 127
    :cond_6
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_7

    .line 128
    new-instance v1, Lcom/solab/iso8583/parse/DateExpParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/DateExpParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 129
    :cond_7
    sget-object v1, Lcom/solab/iso8583/IsoType;->DATE6:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_8

    .line 130
    new-instance v1, Lcom/solab/iso8583/parse/Date6ParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/Date6ParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 131
    :cond_8
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_9

    .line 132
    new-instance v1, Lcom/solab/iso8583/parse/LlbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LlbinParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 133
    :cond_9
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_a

    .line 134
    new-instance v1, Lcom/solab/iso8583/parse/LllbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LllbinParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 135
    :cond_a
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_b

    .line 136
    new-instance v1, Lcom/solab/iso8583/parse/LllvarParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LllvarParseInfo;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 137
    :cond_b
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_c

    .line 138
    new-instance v1, Lcom/solab/iso8583/parse/LlvarParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LlvarParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 139
    :cond_c
    sget-object v1, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_d

    .line 140
    new-instance v1, Lcom/solab/iso8583/parse/NumericParseInfo;

    invoke-direct {v1, p1}, Lcom/solab/iso8583/parse/NumericParseInfo;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_d
    sget-object v1, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_e

    .line 142
    new-instance v1, Lcom/solab/iso8583/parse/TimeParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/TimeParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 143
    :cond_e
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_f

    .line 144
    new-instance v1, Lcom/solab/iso8583/parse/LlllvarParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LlllvarParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 145
    :cond_f
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_10

    .line 146
    new-instance v1, Lcom/solab/iso8583/parse/LlllbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/LlllbinParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 147
    :cond_10
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_11

    .line 148
    new-instance v1, Lcom/solab/iso8583/parse/BcdLengthLlbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/BcdLengthLlbinParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 149
    :cond_11
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_12

    .line 150
    new-instance v1, Lcom/solab/iso8583/parse/BcdLengthLllbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/BcdLengthLllbinParseInfo;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 151
    :cond_12
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p0, v1, :cond_13

    .line 152
    new-instance v1, Lcom/solab/iso8583/parse/BcdLengthLlllbinParseInfo;

    invoke-direct {v1}, Lcom/solab/iso8583/parse/BcdLengthLlllbinParseInfo;-><init>()V

    move-object v0, v1

    .line 154
    :cond_13
    :goto_0
    if-eqz v0, :cond_14

    .line 157
    invoke-virtual {v0, p2}, Lcom/solab/iso8583/parse/FieldParseInfo;->setCharacterEncoding(Ljava/lang/String;)V

    .line 158
    return-object v0

    .line 155
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Cannot parse type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected decodeLength([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "digits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->forceStringDecoding:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->encoding:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 165
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 176
    const/4 v0, -0x1

    return v0

    .line 172
    :pswitch_0
    aget-byte v0, p1, p2

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0

    .line 169
    :pswitch_1
    aget-byte v0, p1, p2

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0

    .line 167
    :pswitch_2
    aget-byte v0, p1, p2

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDecoder()Lcom/solab/iso8583/CustomField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solab/iso8583/CustomField<",
            "*>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->decoder:Lcom/solab/iso8583/CustomField;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->length:I

    return v0
.end method

.method public getType()Lcom/solab/iso8583/IsoType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    return-object v0
.end method

.method public abstract parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[BI",
            "Lcom/solab/iso8583/CustomField<",
            "TT;>;)",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[BI",
            "Lcom/solab/iso8583/CustomField<",
            "TT;>;)",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->encoding:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setDecoder(Lcom/solab/iso8583/CustomField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/CustomField<",
            "*>;)V"
        }
    .end annotation

    .line 84
    .local p1, "value":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    iput-object p1, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->decoder:Lcom/solab/iso8583/CustomField;

    .line 85
    return-void
.end method

.method public setForceHexadecimalLength(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->forceHexadecimalLength:Z

    .line 64
    return-void
.end method

.method public setForceStringDecoding(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/solab/iso8583/parse/FieldParseInfo;->forceStringDecoding:Z

    .line 58
    return-void
.end method
