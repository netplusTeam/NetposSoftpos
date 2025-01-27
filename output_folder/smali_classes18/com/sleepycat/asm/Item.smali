.class final Lcom/sleepycat/asm/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lcom/sleepycat/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/sleepycat/asm/Item;->index:I

    .line 124
    return-void
.end method

.method constructor <init>(ILcom/sleepycat/asm/Item;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "i"    # Lcom/sleepycat/asm/Item;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/sleepycat/asm/Item;->index:I

    .line 136
    iget v0, p2, Lcom/sleepycat/asm/Item;->type:I

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 137
    iget v0, p2, Lcom/sleepycat/asm/Item;->intVal:I

    iput v0, p0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 138
    iget-wide v0, p2, Lcom/sleepycat/asm/Item;->longVal:J

    iput-wide v0, p0, Lcom/sleepycat/asm/Item;->longVal:J

    .line 139
    iget-object v0, p2, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 140
    iget-object v0, p2, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    .line 141
    iget-object v0, p2, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    .line 142
    iget v0, p2, Lcom/sleepycat/asm/Item;->hashCode:I

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 143
    return-void
.end method


# virtual methods
.method isEqualTo(Lcom/sleepycat/asm/Item;)Z
    .locals 7
    .param p1, "i"    # Lcom/sleepycat/asm/Item;

    .line 284
    iget v0, p0, Lcom/sleepycat/asm/Item;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 313
    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 301
    :sswitch_0
    iget v0, p1, Lcom/sleepycat/asm/Item;->intVal:I

    iget v3, p0, Lcom/sleepycat/asm/Item;->intVal:I

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 305
    :sswitch_1
    iget-wide v3, p1, Lcom/sleepycat/asm/Item;->longVal:J

    iget-wide v5, p0, Lcom/sleepycat/asm/Item;->longVal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 305
    :goto_1
    return v1

    .line 303
    :sswitch_2
    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 296
    :sswitch_3
    iget-wide v3, p1, Lcom/sleepycat/asm/Item;->longVal:J

    iget-wide v5, p0, Lcom/sleepycat/asm/Item;->longVal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    .line 299
    :sswitch_4
    iget v0, p1, Lcom/sleepycat/asm/Item;->intVal:I

    iget v3, p0, Lcom/sleepycat/asm/Item;->intVal:I

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    .line 292
    :sswitch_5
    iget-object v0, p1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 314
    :cond_5
    move v1, v2

    .line 313
    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0xc -> :sswitch_2
        0x10 -> :sswitch_5
        0x12 -> :sswitch_1
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x1e -> :sswitch_5
        0x1f -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method set(D)V
    .locals 2
    .param p1, "doubleVal"    # D

    .line 188
    const/4 v0, 0x6

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/asm/Item;->longVal:J

    .line 190
    iget v0, p0, Lcom/sleepycat/asm/Item;->type:I

    double-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 191
    return-void
.end method

.method set(F)V
    .locals 2
    .param p1, "floatVal"    # F

    .line 176
    const/4 v0, 0x4

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 177
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 178
    iget v0, p0, Lcom/sleepycat/asm/Item;->type:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 179
    return-void
.end method

.method set(I)V
    .locals 2
    .param p1, "intVal"    # I

    .line 152
    const/4 v0, 0x3

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 153
    iput p1, p0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 154
    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 155
    return-void
.end method

.method set(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hashCode"    # I

    .line 268
    const/16 v0, 0x21

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 269
    iput p1, p0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 270
    iput p2, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 271
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .line 208
    iput p1, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 209
    iput-object p2, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    .line 211
    iput-object p4, p0, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    .line 212
    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 234
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 236
    return-void

    .line 224
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 225
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 226
    return-void

    .line 214
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 221
    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 222
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method set(J)V
    .locals 2
    .param p1, "longVal"    # J

    .line 164
    const/4 v0, 0x5

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 165
    iput-wide p1, p0, Lcom/sleepycat/asm/Item;->longVal:J

    .line 166
    long-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 167
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsmIndex"    # I

    .line 249
    const/16 v0, 0x12

    iput v0, p0, Lcom/sleepycat/asm/Item;->type:I

    .line 250
    int-to-long v1, p3

    iput-wide v1, p0, Lcom/sleepycat/asm/Item;->longVal:J

    .line 251
    iput-object p1, p0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    .line 253
    nop

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 255
    return-void
.end method
