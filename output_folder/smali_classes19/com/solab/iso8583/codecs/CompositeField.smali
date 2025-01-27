.class public Lcom/solab/iso8583/codecs/CompositeField;
.super Ljava/lang/Object;
.source "CompositeField.java"

# interfaces
.implements Lcom/solab/iso8583/CustomBinaryField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/solab/iso8583/CustomBinaryField<",
        "Lcom/solab/iso8583/codecs/CompositeField;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/solab/iso8583/parse/FieldParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/solab/iso8583/IsoValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/solab/iso8583/codecs/CompositeField;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addParser(Lcom/solab/iso8583/parse/FieldParseInfo;)Lcom/solab/iso8583/codecs/CompositeField;
    .locals 2
    .param p1, "fpi"    # Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 89
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object p0
.end method

.method public addValue(Lcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/codecs/CompositeField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;)",
            "Lcom/solab/iso8583/codecs/CompositeField;"
        }
    .end annotation

    .line 61
    .local p1, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0
.end method

.method public addValue(Ljava/lang/Object;Lcom/solab/iso8583/CustomField;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/codecs/CompositeField;
    .locals 1
    .param p3, "t"    # Lcom/solab/iso8583/IsoType;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/solab/iso8583/CustomField<",
            "TT;>;",
            "Lcom/solab/iso8583/IsoType;",
            "I)",
            "Lcom/solab/iso8583/codecs/CompositeField;"
        }
    .end annotation

    .line 68
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "encoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    invoke-virtual {p3}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p3, p1, p4, p2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p3, p1, p2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 68
    :goto_0
    invoke-virtual {p0, v0}, Lcom/solab/iso8583/codecs/CompositeField;->addValue(Lcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/codecs/CompositeField;

    move-result-object v0

    return-object v0
.end method

.method public decodeBinaryField([BII)Lcom/solab/iso8583/codecs/CompositeField;
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/solab/iso8583/IsoValue;>;"
    move v1, p2

    .line 102
    .local v1, "pos":I
    :try_start_0
    iget-object v2, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 103
    .local v3, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/solab/iso8583/parse/FieldParseInfo;->getDecoder()Lcom/solab/iso8583/CustomField;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v1, v5}, Lcom/solab/iso8583/parse/FieldParseInfo;->parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    .line 104
    .local v4, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v4, :cond_6

    .line 105
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    .line 106
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    .line 107
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    .line 108
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 109
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 113
    :goto_2
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v5, v6, :cond_2

    goto :goto_3

    .line 115
    :cond_2
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_3

    .line 116
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v5, v6, :cond_5

    .line 117
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 114
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 119
    :cond_5
    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v3    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    .end local v4    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_6
    goto/16 :goto_0

    .line 122
    :cond_7
    new-instance v2, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-direct {v2}, Lcom/solab/iso8583/codecs/CompositeField;-><init>()V

    .line 123
    .local v2, "f":Lcom/solab/iso8583/codecs/CompositeField;
    invoke-virtual {v2, v0}, Lcom/solab/iso8583/codecs/CompositeField;->setValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v2

    .line 125
    .end local v2    # "f":Lcom/solab/iso8583/codecs/CompositeField;
    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    .line 126
    .local v2, "ex":Ljava/lang/Exception;
    :goto_5
    sget-object v3, Lcom/solab/iso8583/codecs/CompositeField;->log:Lorg/slf4j/Logger;

    const-string v4, "Decoding binary CompositeField"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic decodeBinaryField([BII)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/solab/iso8583/codecs/CompositeField;->decodeBinaryField([BII)Lcom/solab/iso8583/codecs/CompositeField;

    move-result-object p1

    return-object p1
.end method

.method public decodeField(Ljava/lang/String;)Lcom/solab/iso8583/codecs/CompositeField;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/solab/iso8583/IsoValue;>;"
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 136
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 138
    .local v2, "pos":I
    :try_start_0
    iget-object v3, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 139
    .local v4, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/solab/iso8583/parse/FieldParseInfo;->getDecoder()Lcom/solab/iso8583/CustomField;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/solab/iso8583/parse/FieldParseInfo;->parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;

    move-result-object v5

    .line 140
    .local v5, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v5, :cond_6

    .line 141
    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/solab/iso8583/parse/FieldParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v2, v6

    .line 142
    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v6, v7, :cond_5

    .line 147
    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto :goto_3

    .line 145
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_3

    .line 143
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 149
    :cond_5
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v4    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    .end local v5    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_6
    goto :goto_0

    .line 152
    :cond_7
    new-instance v3, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-direct {v3}, Lcom/solab/iso8583/codecs/CompositeField;-><init>()V

    .line 153
    .local v3, "f":Lcom/solab/iso8583/codecs/CompositeField;
    invoke-virtual {v3, v0}, Lcom/solab/iso8583/codecs/CompositeField;->setValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-object v3

    .line 155
    .end local v3    # "f":Lcom/solab/iso8583/codecs/CompositeField;
    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    .line 156
    .local v3, "ex":Ljava/lang/Exception;
    :goto_4
    sget-object v4, Lcom/solab/iso8583/codecs/CompositeField;->log:Lorg/slf4j/Logger;

    const-string v5, "Decoding CompositeField"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic decodeField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/CompositeField;->decodeField(Ljava/lang/String;)Lcom/solab/iso8583/codecs/CompositeField;

    move-result-object p1

    return-object p1
.end method

.method public encodeBinaryField(Lcom/solab/iso8583/codecs/CompositeField;)[B
    .locals 4
    .param p1, "value"    # Lcom/solab/iso8583/codecs/CompositeField;

    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/solab/iso8583/codecs/CompositeField;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/solab/iso8583/IsoValue;

    .line 166
    .local v2, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v3}, Lcom/solab/iso8583/IsoValue;->write(Ljava/io/OutputStream;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    goto :goto_0

    .line 171
    :cond_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lcom/solab/iso8583/codecs/CompositeField;->log:Lorg/slf4j/Logger;

    const-string v3, "Encoding binary CompositeField"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic encodeBinaryField(Ljava/lang/Object;)[B
    .locals 0

    .line 42
    check-cast p1, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/CompositeField;->encodeBinaryField(Lcom/solab/iso8583/codecs/CompositeField;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeField(Lcom/solab/iso8583/codecs/CompositeField;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Lcom/solab/iso8583/codecs/CompositeField;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "encoding":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/solab/iso8583/codecs/CompositeField;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/IsoValue;

    .line 181
    .local v3, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/solab/iso8583/IsoValue;->write(Ljava/io/OutputStream;ZZ)V

    .line 182
    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/solab/iso8583/IsoValue;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 183
    .end local v3    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 185
    .local v2, "buf":[B
    new-instance v3, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v4, "UTF-8"

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 186
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/solab/iso8583/codecs/CompositeField;->log:Lorg/slf4j/Logger;

    const-string v2, "Encoding text CompositeField"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    const-string v1, ""

    return-object v1
.end method

.method public bridge synthetic encodeField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 42
    check-cast p1, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/CompositeField;->encodeField(Lcom/solab/iso8583/codecs/CompositeField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getField(I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 74
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/IsoValue;

    return-object v0

    .line 74
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/CompositeField;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    .line 79
    .local v0, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getParsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/solab/iso8583/parse/FieldParseInfo;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/solab/iso8583/IsoValue;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    return-object v0
.end method

.method public setParsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/solab/iso8583/parse/FieldParseInfo;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "fpis":Ljava/util/List;, "Ljava/util/List<Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    iput-object p1, p0, Lcom/solab/iso8583/codecs/CompositeField;->parsers:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/solab/iso8583/IsoValue;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/solab/iso8583/IsoValue;>;"
    iput-object p1, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompositeField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/solab/iso8583/codecs/CompositeField;->values:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 196
    const/4 v2, 0x1

    .line 197
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/IsoValue;

    .line 198
    .local v3, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :goto_1
    invoke-virtual {v3}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .end local v3    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    goto :goto_0

    .line 202
    .end local v2    # "first":Z
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
