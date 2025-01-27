.class public Lcom/solab/iso8583/IsoValue;
.super Ljava/lang/Object;
.source "IsoValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private encoder:Lcom/solab/iso8583/CustomFieldEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private length:I

.field private type:Lcom/solab/iso8583/IsoType;

.field private tz:Ljava/util/TimeZone;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private variableLengthFieldsInHex:Z


# direct methods
.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;I)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    .locals 6
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;I",
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    .local p4, "custom":Lcom/solab/iso8583/CustomFieldEncoder;, "Lcom/solab/iso8583/CustomFieldEncoder<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZLcom/solab/iso8583/CustomFieldEncoder;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZ)V
    .locals 6
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p3, "len"    # I
    .param p4, "hexa"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;IZ)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZLcom/solab/iso8583/CustomFieldEncoder;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZLcom/solab/iso8583/CustomFieldEncoder;)V
    .locals 3
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p3, "len"    # I
    .param p4, "hexa"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;IZ",
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    .local p5, "custom":Lcom/solab/iso8583/CustomFieldEncoder;, "Lcom/solab/iso8583/CustomFieldEncoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    .line 130
    iput-object p2, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    .line 131
    iput p3, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 132
    iput-boolean p4, p0, Lcom/solab/iso8583/IsoValue;->variableLengthFieldsInHex:Z

    .line 133
    iput-object p5, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    .line 134
    const/4 v0, 0x2

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "Length must be greater than zero for type %s (value \'%s\')"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    :goto_0
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_c

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_c

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p1, v1, :cond_2

    goto/16 :goto_5

    .line 141
    :cond_2
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 153
    :cond_3
    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p1, v1, :cond_f

    .line 154
    :cond_4
    if-nez p3, :cond_6

    .line 155
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    .line 156
    check-cast v1, [B

    array-length v1, v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 161
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    goto :goto_7

    .line 142
    :cond_7
    :goto_2
    if-nez p3, :cond_b

    .line 143
    if-nez p5, :cond_8

    .line 144
    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_3

    .line 145
    :cond_8
    instance-of v0, p5, Lcom/solab/iso8583/CustomBinaryField;

    if-eqz v0, :cond_9

    .line 146
    move-object v0, p5

    check-cast v0, Lcom/solab/iso8583/CustomBinaryField;

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/solab/iso8583/CustomBinaryField;->encodeBinaryField(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_3

    .line 148
    :cond_9
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 150
    :goto_3
    if-nez p5, :cond_a

    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 152
    :cond_b
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    goto :goto_7

    .line 137
    :cond_c
    :goto_5
    if-nez p3, :cond_e

    .line 138
    if-nez p5, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 140
    :cond_e
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    .line 163
    :cond_f
    :goto_7
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V
    .locals 3
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solab/iso8583/IsoType;",
            "TT;",
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "custom":Lcom/solab/iso8583/CustomFieldEncoder;, "Lcom/solab/iso8583/CustomFieldEncoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v0

    if-nez v0, :cond_f

    .line 65
    iput-object p3, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    .line 66
    iput-object p1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    .line 67
    iput-object p2, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    const-string v1, ""

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoType;->getLength()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto/16 :goto_8

    .line 97
    :cond_3
    :goto_0
    instance-of v0, p2, [B

    if-eqz v0, :cond_4

    .line 98
    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 102
    :goto_1
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    goto/16 :goto_8

    .line 80
    :cond_5
    :goto_2
    if-nez p3, :cond_7

    .line 81
    instance-of v0, p2, [B

    if-eqz v0, :cond_6

    .line 82
    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_4

    .line 84
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_4

    .line 86
    :cond_7
    instance-of v0, p3, Lcom/solab/iso8583/CustomBinaryField;

    if-eqz v0, :cond_8

    .line 87
    move-object v0, p3

    check-cast v0, Lcom/solab/iso8583/CustomBinaryField;

    invoke-interface {v0, p2}, Lcom/solab/iso8583/CustomBinaryField;->encodeBinaryField(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_4

    .line 89
    :cond_8
    invoke-interface {p3, p2}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "enc":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 91
    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 93
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 95
    .end local v0    # "enc":Ljava/lang/String;
    :goto_4
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    goto :goto_8

    .line 69
    :cond_b
    :goto_5
    if-nez p3, :cond_c

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    goto :goto_7

    .line 72
    :cond_c
    invoke-interface {p3, p2}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "enc":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 74
    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v0, v1

    .line 76
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    .line 78
    .end local v0    # "enc":Ljava/lang/String;
    :goto_7
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateTypeWithVariableLength()V

    .line 106
    :goto_8
    return-void

    .line 63
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fixed-value types must use constructor that specifies length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStringEncoded()Ljava/lang/String;
    .locals 2

    .line 254
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private validateDecimalVariableLength()V
    .locals 2

    .line 435
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    sget-object v0, Lcom/solab/iso8583/IsoValue$1;->$SwitchMap$com$solab$iso8583$IsoType:[I

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/solab/iso8583/IsoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    goto :goto_0

    .line 446
    :pswitch_1
    const/16 v0, 0x270f

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 447
    goto :goto_0

    .line 452
    :pswitch_2
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 453
    goto :goto_0

    .line 442
    :pswitch_3
    const/16 v0, 0x3e7

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 443
    goto :goto_0

    .line 449
    :pswitch_4
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 450
    goto :goto_0

    .line 438
    :pswitch_5
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 439
    nop

    .line 458
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateHexadecimalVariableLength()V
    .locals 2

    .line 415
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    sget-object v0, Lcom/solab/iso8583/IsoValue$1;->$SwitchMap$com$solab$iso8583$IsoType:[I

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/solab/iso8583/IsoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    const v0, 0xffff

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    goto :goto_0

    .line 424
    :pswitch_1
    const/16 v0, 0xfff

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 425
    goto :goto_0

    .line 419
    :pswitch_2
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/solab/iso8583/IsoValue;->validateMaxLength(I)V

    .line 420
    nop

    .line 432
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validateMaxLength(I)V
    .locals 3
    .param p1, "maxLength"    # I

    .line 461
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    if-gt v0, p1, :cond_0

    .line 464
    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v2}, Lcom/solab/iso8583/IsoType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only hold values up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateTypeWithVariableLength()V
    .locals 1

    .line 407
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoValue;->variableLengthFieldsInHex:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateHexadecimalVariableLength()V

    goto :goto_0

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->validateDecimalVariableLength()V

    .line 412
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/solab/iso8583/IsoValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/IsoValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 270
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/solab/iso8583/IsoValue;

    if-nez v1, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/solab/iso8583/IsoValue;

    .line 274
    .local v1, "comp":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    invoke-virtual {v1}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v1}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 274
    :goto_0
    return v0

    .line 271
    .end local v1    # "comp":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_2
    :goto_1
    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 186
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoder()Lcom/solab/iso8583/CustomFieldEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 174
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 194
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->tz:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getType()Lcom/solab/iso8583/IsoType;
    .locals 1

    .line 167
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 280
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 183
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iput-object p1, p0, Lcom/solab/iso8583/IsoValue;->encoding:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "value"    # Ljava/util/TimeZone;

    .line 191
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iput-object p1, p0, Lcom/solab/iso8583/IsoValue;->tz:Ljava/util/TimeZone;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 200
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "ISOValue<null>"

    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_1

    goto/16 :goto_9

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    invoke-virtual {v0, v1, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_4

    goto/16 :goto_8

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    check-cast v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->tz:Ljava/util/TimeZone;

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 224
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_7

    .line 225
    move-object v1, v0

    check-cast v1, [B

    .line 226
    .local v1, "_v":[B
    iget-object v3, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    iget-object v4, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v4, :cond_6

    array-length v0, v1

    invoke-static {v1, v2, v0}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-interface {v4, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    .end local v1    # "_v":[B
    :cond_7
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-interface {v2, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_a

    goto :goto_5

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_b

    goto :goto_3

    .line 250
    :cond_b
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->getStringEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_f

    .line 240
    move-object v1, v0

    check-cast v1, [B

    .line 241
    .restart local v1    # "_v":[B
    iget-object v4, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v4, :cond_d

    array-length v0, v1

    invoke-static {v1, v2, v0}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-interface {v4, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "val":Ljava/lang/String;
    :goto_4
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_e

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    :cond_e
    return-object v0

    .line 247
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "_v":[B
    :cond_f
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->getStringEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_12

    .line 232
    move-object v1, v0

    check-cast v1, [B

    .line 233
    .restart local v1    # "_v":[B
    iget-object v3, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v3, :cond_11

    array-length v0, v1

    invoke-static {v1, v2, v0}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    invoke-interface {v3, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    .line 235
    .end local v1    # "_v":[B
    :cond_12
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->getStringEncoded()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "_s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_13

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "0%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_13
    move-object v1, v0

    :goto_7
    return-object v1

    .line 220
    .end local v0    # "_s":Ljava/lang/String;
    :cond_14
    :goto_8
    invoke-direct {p0}, Lcom/solab/iso8583/IsoValue;->getStringEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_17

    .line 205
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigDecimal;

    const/16 v2, 0xc

    if-eqz v1, :cond_16

    .line 206
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_16
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_17
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_19

    .line 211
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v2, :cond_18

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_18
    invoke-interface {v2, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_19
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1a

    .line 213
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/solab/iso8583/IsoType;->format(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1a
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    iget-object v2, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1b
    invoke-interface {v2, v0}, Lcom/solab/iso8583/CustomFieldEncoder;->encodeField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iget v2, p0, Lcom/solab/iso8583/IsoValue;->length:I

    invoke-virtual {v1, v0, v2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;ZZ)V
    .locals 1
    .param p1, "outs"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z
    .param p3, "forceStringEncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/solab/iso8583/IsoValue;->write(Ljava/io/OutputStream;ZZZ)V

    .line 346
    return-void
.end method

.method public write(Ljava/io/OutputStream;ZZZ)V
    .locals 7
    .param p1, "outs"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z
    .param p3, "forceStringEncoding"    # Z
    .param p4, "forceHexadecimalLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 363
    :cond_2
    if-eqz p2, :cond_b

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-ne v1, v2, :cond_3

    .line 367
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    div-int/lit8 v2, v1, 0x2

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    new-array v0, v2, [B

    goto :goto_0

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne v1, v2, :cond_4

    .line 369
    const/4 v1, 0x6

    new-array v0, v1, [B

    goto :goto_0

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    if-ne v1, v2, :cond_6

    .line 373
    :cond_5
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 376
    :cond_6
    :goto_0
    if-eqz v0, :cond_b

    .line 377
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/solab/iso8583/util/Bcd;->encode(Ljava/lang/String;[B)V

    .line 378
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 379
    return-void

    .line 362
    .end local v0    # "buf":[B
    :cond_7
    :goto_1
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    iget-object v3, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/solab/iso8583/IsoValue;->writeLengthHeader(ILjava/io/OutputStream;Lcom/solab/iso8583/IsoType;ZZZ)V

    goto :goto_5

    .line 360
    :cond_8
    :goto_2
    iget v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    :goto_3
    move v1, v0

    iget-object v3, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/solab/iso8583/IsoValue;->writeLengthHeader(ILjava/io/OutputStream;Lcom/solab/iso8583/IsoType;ZZZ)V

    goto :goto_5

    .line 358
    :cond_a
    :goto_4
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    iget-object v3, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/solab/iso8583/IsoValue;->writeLengthHeader(ILjava/io/OutputStream;Lcom/solab/iso8583/IsoType;ZZZ)V

    .line 382
    :cond_b
    :goto_5
    if-eqz p2, :cond_10

    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v1, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/solab/iso8583/IsoType;->VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 384
    :cond_c
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_d

    .line 385
    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 386
    iget v0, p0, Lcom/solab/iso8583/IsoValue;->length:I

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->value:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    sub-int/2addr v0, v1

    .local v0, "missing":I
    goto :goto_6

    .line 387
    .end local v0    # "missing":I
    :cond_d
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->encoder:Lcom/solab/iso8583/CustomFieldEncoder;

    instance-of v2, v1, Lcom/solab/iso8583/CustomBinaryField;

    if-eqz v2, :cond_e

    .line 388
    check-cast v1, Lcom/solab/iso8583/CustomBinaryField;

    invoke-interface {v1, v0}, Lcom/solab/iso8583/CustomBinaryField;->encodeBinaryField(Ljava/lang/Object;)[B

    move-result-object v0

    .line 389
    .local v0, "binval":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 390
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    array-length v2, v0

    sub-int v0, v1, v2

    .line 391
    .local v0, "missing":I
    goto :goto_6

    .line 392
    .end local v0    # "missing":I
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/solab/iso8583/util/HexCodec;->hexDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 393
    .local v0, "binval":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 394
    iget v1, p0, Lcom/solab/iso8583/IsoValue;->length:I

    array-length v2, v0

    sub-int/2addr v1, v2

    move v0, v1

    .line 396
    .local v0, "missing":I
    :goto_6
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->type:Lcom/solab/iso8583/IsoType;

    sget-object v2, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-ne v1, v2, :cond_f

    if-lez v0, :cond_f

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_f

    .line 398
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 401
    .end local v0    # "missing":I
    .end local v1    # "i":I
    :cond_f
    goto :goto_9

    .line 402
    :cond_10
    iget-object v0, p0, Lcom/solab/iso8583/IsoValue;->encoding:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 404
    :goto_9
    return-void
.end method

.method protected writeLengthHeader(ILjava/io/OutputStream;Lcom/solab/iso8583/IsoType;ZZZ)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "outs"    # Ljava/io/OutputStream;
    .param p3, "type"    # Lcom/solab/iso8583/IsoType;
    .param p4, "binary"    # Z
    .param p5, "forceStringEncoding"    # Z
    .param p6, "forceHexadecimalLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x2

    .local v0, "digits":I
    goto :goto_2

    .line 296
    .end local v0    # "digits":I
    :cond_2
    :goto_0
    const/4 v0, 0x3

    .restart local v0    # "digits":I
    goto :goto_2

    .line 294
    .end local v0    # "digits":I
    :cond_3
    :goto_1
    const/4 v0, 0x4

    .line 300
    .restart local v0    # "digits":I
    :goto_2
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0xa

    if-eqz p4, :cond_8

    .line 301
    if-eqz p6, :cond_5

    .line 302
    const/4 v1, 0x0

    if-le v0, v2, :cond_4

    .line 303
    new-array v2, v2, [B

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    int-to-byte v1, p1

    aput-byte v1, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_8

    .line 305
    :cond_4
    new-array v2, v3, [B

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_8

    .line 308
    :cond_5
    if-ne v0, v4, :cond_6

    .line 309
    rem-int/lit16 v1, p1, 0x2710

    div-int/lit16 v1, v1, 0x3e8

    shl-int/2addr v1, v4

    rem-int/lit16 v2, p1, 0x3e8

    div-int/lit8 v2, v2, 0x64

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 310
    :cond_6
    if-ne v0, v1, :cond_7

    .line 311
    div-int/lit8 v1, p1, 0x64

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 314
    :cond_7
    :goto_3
    rem-int/lit8 v1, p1, 0x64

    div-int/2addr v1, v5

    shl-int/2addr v1, v4

    rem-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_8

    .line 316
    :cond_8
    const/16 v6, 0x30

    if-eqz p5, :cond_d

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "lhead":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v0, v5

    .line 319
    .local v5, "ldiff":I
    if-ne v5, v3, :cond_9

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 321
    :cond_9
    if-ne v5, v2, :cond_a

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 323
    :cond_a
    if-ne v5, v1, :cond_b

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/solab/iso8583/IsoValue;->encoding:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_5

    :cond_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_5
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 327
    .end local v4    # "lhead":Ljava/lang/String;
    .end local v5    # "ldiff":I
    goto :goto_8

    .line 329
    :cond_d
    if-ne v0, v4, :cond_e

    .line 330
    div-int/lit16 v1, p1, 0x3e8

    add-int/2addr v1, v6

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 331
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v6

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_6

    .line 332
    :cond_e
    if-ne v0, v1, :cond_f

    .line 333
    div-int/lit8 v1, p1, 0x64

    add-int/2addr v1, v6

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 335
    :cond_f
    :goto_6
    if-lt p1, v5, :cond_10

    .line 336
    rem-int/lit8 v1, p1, 0x64

    div-int/2addr v1, v5

    add-int/2addr v1, v6

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_7

    .line 338
    :cond_10
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 340
    :goto_7
    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v6

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 342
    :goto_8
    return-void
.end method
