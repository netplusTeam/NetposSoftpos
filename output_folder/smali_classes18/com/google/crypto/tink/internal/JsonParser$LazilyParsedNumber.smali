.class final Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;
.super Ljava/lang/Number;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazilyParsedNumber"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "serialization is not supported"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "serialization is not supported"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 128
    if-ne p0, p1, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;

    if-eqz v0, :cond_1

    .line 132
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;

    .line 133
    .local v0, "other":Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 135
    .end local v0    # "other":Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public floatValue()F
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 4

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int v1, v1

    return v1

    .line 83
    :catch_1
    move-exception v1

    .line 84
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    return v2
.end method

.method public longValue()J
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;->value:Ljava/lang/String;

    return-object v0
.end method
